#
# Author:: Matthew Kent (<mkent@magoazul.com>)
# Copyright:: Copyright (c) 2009, 2011 Matthew Kent
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# dnf-dump.py
# Inspired by yumhelper.py by David Lutterkort
#
# Produce a list of installed, available and re-installable packages using dnf
# and dump the results to stdout.
#
# dnf-dump invokes dnf similarly to the command line interface which makes it
# subject to most of the configuration parameters in yum.conf. yum-dump will
# also load yum plugins in the same manor as yum - these can affect the output.
#
# Can be run as non root, but that won't update the cache.


import os
import sys
import time
import dnf
import re
import errno

from dnf import exceptions, lock, rpm
import rpm
import rpmUtils.miscUtils

from optparse import OptionParser
from distutils import version

DNF_PID_FILE='/var/run/dnf.pid'


  # Handle repo toggle via id or glob exactly like yum
  for opt, repos in options.repo_control:
      for repo in repos:
        if opt == '--enablerepo':
            yb.repos.enableRepo(repo)
        elif opt == '--disablerepo':
            yb.repos.disableRepo(repo)

  return 0

def config(base, options):
  conf = base.conf
  
  base.conf.substitutions['releasever'] = dnf.rpm.detect_releasever()
  
  # Give Chef every possible package version, it can decide what to do with them
  conf.showdupersfromrepos = True
  
  return 0
  
  
def dump_packages(base, list, output_provides):
  packages = {}

  base.fill_sack()
  
  db = base.sack.query()
  for pkg in db.installed():
    pkg.type = 'i'
    packages[str(pkg)] = pkg

  
  for pkg in db.available():
    pkg.type = 'a'
    packages[str(pkg)] = pkg

    # These are both installed and available
  for pkg in db.reinstall_available:
    pkg.type = 'r'
    packages[str(pkg)] = pkg
  
  unique_packages = packages.values()

  unique_packages.sort(lambda x, y: cmp(x.name, y.name))

  for pkg in unique_packages:
    if output_provides == "all" or \
        (output_provides == "installed" and (pkg.type == "i" or pkg.type == "r")):
       
      provides = []
      names = pkg.hdr[rpm.RPMTAG_PROVIDENAME]
      flags = pkg.hdr[rpm.RPMTAG_PROVIDEFLAGS]
      ver = pkg.hdr[rpm.RPMTAG_PROVIDEVERSION]
      if names is not None:
        tmplst = zip(names, flags, ver)
       
       for (n, f, v) in tmplst:
         prov = rpmUtils.miscUtils.formatRequire(n, v, f)
         
    else:
      provides = "[]"

    print '%s %s %s %s %s %s %s %s' % (
      pkg.name,
      pkg.epoch,
      pkg.version,
      pkg.release,
      pkg.arch,
      provides,
      pkg.type,
      pkg.repoid )

  return 0

def dnf_dump(options):
  lock_obtained = False

  base = dnf.Base()

  status = config(base, options)
  if status != 0:
    return status

  if options.output_options:
    print "[option installonlypkgs] %s" % " ".join(base.conf.installonlypkgs)

  lock = dnf.lock.build_metadata_lock(self.conf.cachedir)
  with lock:
    return dump_packages(base, options.package_list, options.output_provides)

# Preserve order of enable/disable repo args like dnf does
def gather_repo_opts(option, opt, value, parser):
  if getattr(parser.values, option.dest, None) is None:
    setattr(parser.values, option.dest, [])
  getattr(parser.values, option.dest).append((opt, value.split(',')))

def main():
  usage = "Usage: %prog [options]\n" + \
          "Output a list of installed, available and re-installable packages via dnf"
  parser = OptionParser(usage=usage)
  parser.add_option("-C", "--cache",
                    action="store_true", dest="cache", default=False,
                    help="run entirely from cache, don't update cache")
  parser.add_option("-o", "--options",
                    action="store_true", dest="output_options", default=False,
                    help="output select yum options useful to Chef")
  parser.add_option("-p", "--installed-provides",
                    action="store_const", const="installed", dest="output_provides", default="none",
                    help="output Provides for installed packages, big/wide output")
  parser.add_option("-P", "--all-provides",
                    action="store_const", const="all", dest="output_provides", default="none",
                    help="output Provides for all package, slow, big/wide output")
  parser.add_option("-i", "--installed",
                    action="store_const", const="installed", dest="package_list", default="all",
                    help="output only installed packages")
  parser.add_option("-a", "--available",
                    action="store_const", const="available", dest="package_list", default="all",
                    help="output only available and re-installable packages")
  parser.add_option("--enablerepo",
                    action="callback",  callback=gather_repo_opts, type="string", dest="repo_control", default=[],
                    help="enable disabled repositories by id or glob")
  parser.add_option("--disablerepo",
                    action="callback",  callback=gather_repo_opts, type="string", dest="repo_control", default=[],
                    help="disable repositories by id or glob")
  parser.add_option("--dnf-lock-timeout",
                    action="store",  type="int", dest="dnf_lock_timeout", default=30,
                    help="DEPRECATED: Time in seconds to wait for dnf process lock")

  (options, args) = parser.parse_args()

  try:
    return dnf_dump(options)

  except dnf.exceptions.RepoError, e:
    print >> sys.stderr, "dnf-dump Repository Error: %s" % e
    return 1

  except dnf.exceptions.Error, e:
    print >> sys.stderr, "dnf-dump General Error: %s" % e
    return 1

try:
  status = main()
# Suppress a nasty broken pipe error when output is piped to utilities like 'head'
except IOError, e:
  if e.errno == errno.EPIPE:
    sys.exit(1)
  else:
    raise

sys.exit(status)
