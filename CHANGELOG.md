# Change Log

## [Unreleased](https://github.com/chef/chef/tree/HEAD)

[Full Changelog](https://github.com/chef/chef/compare/12.5.0.current.0...HEAD)

**Implemented enhancements:**

- CHEF-5012: add methods for template breadcrumbs [\#1259](https://github.com/chef/chef/pull/1259) ([lamont-granquist](https://github.com/lamont-granquist))

**Fixed bugs:**

- service idempotency not correct in AIX [\#3730](https://github.com/chef/chef/issues/3730)
- powershell\_script fails when chef is run from a remote powershell session [\#3490](https://github.com/chef/chef/issues/3490)
- chef-server-ctl org-show whitespace issues [\#3414](https://github.com/chef/chef/issues/3414)
- ChefDK 0.5.1 knife Needs STDERR Redirection for Cookbook Version Selection Deletion [\#3379](https://github.com/chef/chef/issues/3379)
- windows\_package resource keeps installing files [\#3341](https://github.com/chef/chef/issues/3341)
- Circular dependency [\#2703](https://github.com/chef/chef/issues/2703)
- Chef 12 errors on Windows when role\_path doesn't include leading drive letter [\#2666](https://github.com/chef/chef/issues/2666)
- Cannot render partials inside partials with variables [\#2513](https://github.com/chef/chef/issues/2513)
- service resource is incapable of managing the SSH service on Mac OS X [\#2200](https://github.com/chef/chef/issues/2200)
- Can't disable status check for redhat init service [\#2168](https://github.com/chef/chef/issues/2168)
- mount resource remounts on every chef-client run [\#1795](https://github.com/chef/chef/issues/1795)
- shell\_out! returns an object not an integer [\#3657](https://github.com/chef/chef/pull/3657) ([stefanor](https://github.com/stefanor))
- Update registry\_key.rb [\#3145](https://github.com/chef/chef/pull/3145) ([veetow](https://github.com/veetow))

**Closed issues:**

- rake gem: LoadError: cannot load such file -- chef-config/package\_task [\#3859](https://github.com/chef/chef/issues/3859)
- Ohai not returning memory information for Windows hosts [\#3847](https://github.com/chef/chef/issues/3847)
- knife cookbook upload does not respect port in chef\_server\_url [\#3846](https://github.com/chef/chef/issues/3846)
- Difference between Chef 11 and 12 in how the client uses 'splay' and 'interval' \(Ubuntu 14.04\)   [\#3791](https://github.com/chef/chef/issues/3791)
- updated\_by\_last\_action? not working in chef-12.4.0 [\#3789](https://github.com/chef/chef/issues/3789)
- Resource "package", attribute "package\_name" doesnt work as expected [\#3786](https://github.com/chef/chef/issues/3786)
- require 'chef' fails on Windows 8.1 with Ruby 2.2 [\#3785](https://github.com/chef/chef/issues/3785)
- chef-server-ctl doesn't understand shell quoting [\#3784](https://github.com/chef/chef/issues/3784)
- shell quoting chef-server-ctl [\#3783](https://github.com/chef/chef/issues/3783)
- `berk upload` fails due to syntax error [\#3782](https://github.com/chef/chef/issues/3782)
- Installation fails on RHEL 6.6 [\#3781](https://github.com/chef/chef/issues/3781)
- link resource breaks if target is a symlink: [\#3779](https://github.com/chef/chef/issues/3779)
- chef-server behind nginx proxy returns the wrong URL for bookshelf API [\#3773](https://github.com/chef/chef/issues/3773)
- Chef Truck Factor [\#3769](https://github.com/chef/chef/issues/3769)
- Remote\_file on Windows problem [\#3763](https://github.com/chef/chef/issues/3763)
- Mixlib::ShellOut - Windows Impersonation fails [\#3758](https://github.com/chef/chef/issues/3758)
- Console output is way too much [\#3756](https://github.com/chef/chef/issues/3756)
- Chef-client bootstrapping fails on Windows XP \(32-bit\) [\#3753](https://github.com/chef/chef/issues/3753)
- Chef-Client does not escape search\(\) correctly -- is different from knife.rb search [\#3752](https://github.com/chef/chef/issues/3752)
- Sensitive attribute not working for execute in LWRP for Mac 10.10 with Chef 11.18.12 [\#3749](https://github.com/chef/chef/issues/3749)
- updated\_by\_last\_action? of resource in LWRP always returns false [\#3748](https://github.com/chef/chef/issues/3748)
- var in csh not work correctly - reopen [\#3747](https://github.com/chef/chef/issues/3747)
- registry\_key resource is not idempotent [\#3742](https://github.com/chef/chef/issues/3742)
- chef-client 12.0.0 run failure on AIX 7100-00-03-1115 [\#3739](https://github.com/chef/chef/issues/3739)
- Better error message when user tries to write to a badly-declared property [\#3734](https://github.com/chef/chef/issues/3734)
- chef-client 12.4.1 Errno::ENOENT: No such file or directory - git [\#3725](https://github.com/chef/chef/issues/3725)
- `backward` notifiers feature [\#3723](https://github.com/chef/chef/issues/3723)
- Docker recepie [\#3722](https://github.com/chef/chef/issues/3722)
- Help! Chef::EncryptedDataBagItem::DecryptionFailure [\#3719](https://github.com/chef/chef/issues/3719)
- 3714 [\#3716](https://github.com/chef/chef/issues/3716)
- ef solo tutorial [\#3715](https://github.com/chef/chef/issues/3715)
- Upload .json file to nodes [\#3713](https://github.com/chef/chef/issues/3713)
- Chef download RPM  for centos7.1 [\#3712](https://github.com/chef/chef/issues/3712)
- Time sync - need clarification only [\#3707](https://github.com/chef/chef/issues/3707)
- Is it possible to invoke chef-client run through restapi? [\#3701](https://github.com/chef/chef/issues/3701)
- Chef-Client cookbook broken against latest nightly [\#3696](https://github.com/chef/chef/issues/3696)
- Unknown reversion on master [\#3692](https://github.com/chef/chef/issues/3692)
- LWRP unable to find template it its own cookbook - instead looking in callers template folder [\#3681](https://github.com/chef/chef/issues/3681)
- Report handler error from state\_attrs [\#3677](https://github.com/chef/chef/issues/3677)
- Reboot resource attribute delay\_mins is passed as seconds on windows [\#3673](https://github.com/chef/chef/issues/3673)
- resource skipped due to guards are not counted [\#3581](https://github.com/chef/chef/issues/3581)
- getting error while using cookbook microsoft\_azure [\#3511](https://github.com/chef/chef/issues/3511)
- rpm\_package silently fails on packages with a `~` character in the version [\#3496](https://github.com/chef/chef/issues/3496)
- knife ssl check: support SNI [\#3491](https://github.com/chef/chef/issues/3491)
- rpm\_package is broken when used with a local package [\#3460](https://github.com/chef/chef/issues/3460)
- Behavior change in 12.4: nameless resources [\#3416](https://github.com/chef/chef/issues/3416)
- gem\_package installs to embedded Ruby instead of systemwide Ruby when using ChefDK [\#3382](https://github.com/chef/chef/issues/3382)
- knife node show -a behavior change in 12.3 [\#3370](https://github.com/chef/chef/issues/3370)
- why chef-client issue SIGHUP at start time [\#3353](https://github.com/chef/chef/issues/3353)
- Data Bag Items must contain a Hash or Mash! Chef-Client 12, Windows Server 2012r2 [\#3347](https://github.com/chef/chef/issues/3347)
- No error output on windows node [\#3343](https://github.com/chef/chef/issues/3343)
- Knife bootstrap don't refresh vault anymore [\#3337](https://github.com/chef/chef/issues/3337)
- rpm upgrade of chef-full omnibus rpm package kills symlinks in /usr/bin OpenSuse / SLES [\#3330](https://github.com/chef/chef/issues/3330)
- Travis fails on Master [\#3323](https://github.com/chef/chef/issues/3323)
- how the chef-client shows two results [\#3300](https://github.com/chef/chef/issues/3300)
- node.force\_override\['x'\]\['y'\]  in recipe will not work if some cookbook attribute file read the attribute via node\['x'\]\['z' [\#3294](https://github.com/chef/chef/issues/3294)
- Chef-Server and Chef-Client upgrade have fired a clamav virus hit on nokogiri-1.6.3.1.gem [\#3251](https://github.com/chef/chef/issues/3251)
- ifconfig resource does not respect 'target' option properly [\#3250](https://github.com/chef/chef/issues/3250)
- feature to check pgp signature of changes before applying them [\#3243](https://github.com/chef/chef/issues/3243)
- Update chef/kitchen-tests to work with new provisioner [\#3241](https://github.com/chef/chef/issues/3241)
- template verify variable name mismatch [\#3232](https://github.com/chef/chef/issues/3232)
- Aditional character on knife 12.2.1 using head [\#3229](https://github.com/chef/chef/issues/3229)
- SUSE Enterprise stops at 12.0.3 [\#3224](https://github.com/chef/chef/issues/3224)
- Failed to run verify-system-status when executing chef-server-ctl reconfigure [\#3219](https://github.com/chef/chef/issues/3219)
- install.sh should get client nightlies [\#3205](https://github.com/chef/chef/issues/3205)
- Chef.Bootstrap.WindowsAzure LinuxChefClient 11.18.6.1 chef-install.sh not working with CentOS 7 [\#3176](https://github.com/chef/chef/issues/3176)
- Group resource reporting deleted group still exists [\#3100](https://github.com/chef/chef/issues/3100)
- chef-full.erb bootstrap template fails [\#3084](https://github.com/chef/chef/issues/3084)
- Chef Client local mode \(chef zero\) search inconsistencies \(NOT / AND NOT\) [\#3073](https://github.com/chef/chef/issues/3073)
- Error loading gems on chef-client 12.1.0 upgrade [\#3024](https://github.com/chef/chef/issues/3024)
- Error while registering chef-client version 12.1.0 with enterprise chef server 12. [\#3020](https://github.com/chef/chef/issues/3020)
- Add template location\(ie. cookbook and recipe\) as variables to template [\#2984](https://github.com/chef/chef/issues/2984)
- kitchen suddenly fails for strange reasons regarding default\_attributes [\#2883](https://github.com/chef/chef/issues/2883)
- Normalize chef-client and Reporting Outputs [\#2868](https://github.com/chef/chef/issues/2868)
- Notified LWRPs don't fire off resources [\#2830](https://github.com/chef/chef/issues/2830)
- dsc\_script `code` \(code-attribute usage\) does not support \(e.g.\) Resource Kit DSC resources [\#2195](https://github.com/chef/chef/issues/2195)

**Merged pull requests:**

- Refactor Chef::Mixin::WideString to remove implicit Windows dependency. [\#3855](https://github.com/chef/chef/pull/3855) ([mcquin](https://github.com/mcquin))
- Don't print deprecations to the console until the end [\#3854](https://github.com/chef/chef/pull/3854) ([jkeiser](https://github.com/jkeiser))
- Use same mixlib-shellout version pin in chef, ohai, and chef-config [\#3851](https://github.com/chef/chef/pull/3851) ([jaym](https://github.com/jaym))
- Monkeypatch Win32::Registry\#write [\#3850](https://github.com/chef/chef/pull/3850) ([mcquin](https://github.com/mcquin))
- Prep for Registry FFI; Convert RegDeleteKeyEx to FFI [\#3843](https://github.com/chef/chef/pull/3843) ([chefsalim](https://github.com/chefsalim))
- Remove dependency on windows-pr [\#3841](https://github.com/chef/chef/pull/3841) ([jaym](https://github.com/jaym))
- Make win32/api/net.rb look nicer [\#3840](https://github.com/chef/chef/pull/3840) ([jaym](https://github.com/jaym))
- Update NetUse stuff to use FFI [\#3832](https://github.com/chef/chef/pull/3832) ([jaym](https://github.com/jaym))
- Lcg/3743 [\#3830](https://github.com/chef/chef/pull/3830) ([lamont-granquist](https://github.com/lamont-granquist))
- Add Salim as a windows maintainer [\#3828](https://github.com/chef/chef/pull/3828) ([ksubrama](https://github.com/ksubrama))
- Rewriting volume code to use FFI [\#3827](https://github.com/chef/chef/pull/3827) ([jaym](https://github.com/jaym))
- PSCredential + dsc\_script documentation [\#3822](https://github.com/chef/chef/pull/3822) ([jaym](https://github.com/jaym))
- Human friendly elapsed time in log [\#3821](https://github.com/chef/chef/pull/3821) ([joelhandwell](https://github.com/joelhandwell))
- Add RELEASE\_NOTES entry for `knife rehash` [\#3820](https://github.com/chef/chef/pull/3820) ([stevendanna](https://github.com/stevendanna))
- remove now-useless GC [\#3817](https://github.com/chef/chef/pull/3817) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix powershell\_script validation  [\#3815](https://github.com/chef/chef/pull/3815) ([jaym](https://github.com/jaym))
- Replace output\_of\_command with shell\_out! in subversion provider [\#3806](https://github.com/chef/chef/pull/3806) ([gh2k](https://github.com/gh2k))
- Validating is comparing to true instead of ruby truthiness [\#3805](https://github.com/chef/chef/pull/3805) ([jaymzh](https://github.com/jaymzh))
- CHANGELOG/RELEASE\_NOTES docs for recent OSX changes [\#3800](https://github.com/chef/chef/pull/3800) ([jaymzh](https://github.com/jaymzh))
- fix supports hash issues in service providers [\#3799](https://github.com/chef/chef/pull/3799) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix dsc\_script spec failure on 64-bit Ruby [\#3797](https://github.com/chef/chef/pull/3797) ([chefsalim](https://github.com/chefsalim))
- Lcg/run levels [\#3793](https://github.com/chef/chef/pull/3793) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/making mount options aware [\#3792](https://github.com/chef/chef/pull/3792) ([lamont-granquist](https://github.com/lamont-granquist))
- Don't modify members of new\_resource in pw group implmentation [\#3788](https://github.com/chef/chef/pull/3788) ([jaym](https://github.com/jaym))
- Fix failing directory unit tests on rhel [\#3787](https://github.com/chef/chef/pull/3787) ([jaym](https://github.com/jaym))
- Enable 64-bit support for Powershell and Batch scripts [\#3775](https://github.com/chef/chef/pull/3775) ([chefsalim](https://github.com/chefsalim))
- Lcg/yum deprecated [\#3774](https://github.com/chef/chef/pull/3774) ([lamont-granquist](https://github.com/lamont-granquist))
- Add ps\_credential dsl method to dsc\_script [\#3772](https://github.com/chef/chef/pull/3772) ([jaym](https://github.com/jaym))
- Add support for override depth and adding test in overriding depth [\#3771](https://github.com/chef/chef/pull/3771) ([renanvicente](https://github.com/renanvicente))
- Make reboot\_pending? look for CBS RebootPending [\#3768](https://github.com/chef/chef/pull/3768) ([jeremiahsnapp](https://github.com/jeremiahsnapp))
- uniquify chef\_repo\_path [\#3764](https://github.com/chef/chef/pull/3764) ([polamjag](https://github.com/polamjag))
- highline is used by core Chef; therefore remove this misleading comment [\#3762](https://github.com/chef/chef/pull/3762) ([juliandunn](https://github.com/juliandunn))
- Refactor all the gem building logic into a custom rake task. [\#3760](https://github.com/chef/chef/pull/3760) ([ksubrama](https://github.com/ksubrama))
- Don't use shell\_out! on "lssrc -g"  [\#3759](https://github.com/chef/chef/pull/3759) ([juliandunn](https://github.com/juliandunn))
- Add additional helpful section for frozen objects [\#3757](https://github.com/chef/chef/pull/3757) ([martinb3](https://github.com/martinb3))
- Fix functional tests for group resource - fix \#3728 [\#3754](https://github.com/chef/chef/pull/3754) ([ksubrama](https://github.com/ksubrama))
- Remove old bootstrap templates [\#3751](https://github.com/chef/chef/pull/3751) ([juliandunn](https://github.com/juliandunn))
- Remove freeze of defaults, add warning for array/hash constant defaults [\#3744](https://github.com/chef/chef/pull/3744) ([jkeiser](https://github.com/jkeiser))
- Make Resource.action work with non-standard names [\#3732](https://github.com/chef/chef/pull/3732) ([jkeiser](https://github.com/jkeiser))
- Fix \#3692: flatten regex validation array so nested arrays work [\#3729](https://github.com/chef/chef/pull/3729) ([jkeiser](https://github.com/jkeiser))
- Rewrite NetLocalGroup things to use FFI [\#3728](https://github.com/chef/chef/pull/3728) ([jaym](https://github.com/jaym))
- Add support for OS X 10.11 SIP paths [\#3704](https://github.com/chef/chef/pull/3704) ([natewalck](https://github.com/natewalck))
- Adding omnibus-chef to core maintainer projects [\#3702](https://github.com/chef/chef/pull/3702) ([tyler-ball](https://github.com/tyler-ball))
- Make the doc formatter actually show what version of a cookbook is being used. [\#3700](https://github.com/chef/chef/pull/3700) ([coderanger](https://github.com/coderanger))
- Interpolate `%{path}` in verify command [\#3693](https://github.com/chef/chef/pull/3693) ([margueritepd](https://github.com/margueritepd))
- Add Resource.load\_current\_value [\#3691](https://github.com/chef/chef/pull/3691) ([jkeiser](https://github.com/jkeiser))
- Add ohai configuration context to config. [\#3689](https://github.com/chef/chef/pull/3689) ([mcquin](https://github.com/mcquin))
- Add formatter and force-logger/formatter options to chef-apply [\#3687](https://github.com/chef/chef/pull/3687) ([mivok](https://github.com/mivok))
- Remove warnings about hander overrides. [\#3684](https://github.com/chef/chef/pull/3684) ([coderanger](https://github.com/coderanger))
- Correct Windows reboot command to delay in minutes [\#3683](https://github.com/chef/chef/pull/3683) ([jimmymccrory](https://github.com/jimmymccrory))
- Rewrite nested json test to not use stack [\#3682](https://github.com/chef/chef/pull/3682) ([jaym](https://github.com/jaym))
- avoid windows service spec unless we're on appveyor [\#3680](https://github.com/chef/chef/pull/3680) ([thommay](https://github.com/thommay))
- Set chef\_environment in attributes JSON [\#3668](https://github.com/chef/chef/pull/3668) ([mcquin](https://github.com/mcquin))
- Support SNI in 'knife ssl check'. [\#3666](https://github.com/chef/chef/pull/3666) ([juliandunn](https://github.com/juliandunn))
- Fix error message for providers without `provides` [\#3663](https://github.com/chef/chef/pull/3663) ([docwhat](https://github.com/docwhat))
- remove use of self.provides? [\#3656](https://github.com/chef/chef/pull/3656) ([lamont-granquist](https://github.com/lamont-granquist))
- fix explanation for configuring audit mode in client.rb [\#3652](https://github.com/chef/chef/pull/3652) ([alexpop](https://github.com/alexpop))
- Added support for 10.11 and added function for evaluating OS X version... [\#3594](https://github.com/chef/chef/pull/3594) ([natewalck](https://github.com/natewalck))
- Fixing Issue \#2513 - the broken render of nested partial templates [\#3510](https://github.com/chef/chef/pull/3510) ([ckaushik](https://github.com/ckaushik))
- Use dpkg-deb directly rather than regex [\#3498](https://github.com/chef/chef/pull/3498) ([thommay](https://github.com/thommay))
- gem\_package should install to the systemwide Ruby when using ChefDK. [\#3383](https://github.com/chef/chef/pull/3383) ([jfly](https://github.com/jfly))
- Use target, not name, if it is specified. [\#3329](https://github.com/chef/chef/pull/3329) ([juliandunn](https://github.com/juliandunn))
- Add knife-rehash command for subcommand location hashing [\#3307](https://github.com/chef/chef/pull/3307) ([stevendanna](https://github.com/stevendanna))
- Allow tags to be set on a node during bootstrap [\#3190](https://github.com/chef/chef/pull/3190) ([swalberg](https://github.com/swalberg))
- A simple change to add periods at the end of sentences. [\#3185](https://github.com/chef/chef/pull/3185) ([juliegund](https://github.com/juliegund))
- Migrated deploy resource to use shell\_out instead of run\_command [\#3172](https://github.com/chef/chef/pull/3172) ([BackSlasher](https://github.com/BackSlasher))
- Add warnings to 'knife node run list remove ...'  [\#3027](https://github.com/chef/chef/pull/3027) ([jf647](https://github.com/jf647))
- Add privacy flag [\#2460](https://github.com/chef/chef/pull/2460) ([raskchanky](https://github.com/raskchanky))

## [12.5.0.current.0](https://github.com/chef/chef/tree/12.5.0.current.0) (2015-07-16)
[Full Changelog](https://github.com/chef/chef/compare/11.18.14...12.5.0.current.0)

**Closed issues:**

- uninitialized constant StringIO \(NameError\) [\#3670](https://github.com/chef/chef/issues/3670)
- Stop the noise please [\#3661](https://github.com/chef/chef/issues/3661)
- Can we automate Appliances like DataPower using chef [\#3653](https://github.com/chef/chef/issues/3653)

**Merged pull requests:**

- Update the URL in user agent string [\#3674](https://github.com/chef/chef/pull/3674) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix issue where DSL is not emitted if state\_properties happens before property [\#3672](https://github.com/chef/chef/pull/3672) ([jkeiser](https://github.com/jkeiser))
- Change chef service to start as 'Automatic delayed start'. [\#3667](https://github.com/chef/chef/pull/3667) ([ksubrama](https://github.com/ksubrama))
- Add myself as an Archlinux maintainer [\#3592](https://github.com/chef/chef/pull/3592) ([ryancragun](https://github.com/ryancragun))
- \[RFC-039\] chef handler dsl [\#3242](https://github.com/chef/chef/pull/3242) ([ranjib](https://github.com/ranjib))

## [11.18.14](https://github.com/chef/chef/tree/11.18.14) (2015-07-09)
[Full Changelog](https://github.com/chef/chef/compare/12.4.1...11.18.14)

**Fixed bugs:**

- MacOSX Service provider - Running services are not restarted [\#3175](https://github.com/chef/chef/issues/3175)

**Closed issues:**

- template location closed [\#3651](https://github.com/chef/chef/issues/3651)
- UI bug - should not be able to drag recipe to available roles list [\#3649](https://github.com/chef/chef/issues/3649)
- Rails existing process detection fails and causes high CPU utlilization. [\#3644](https://github.com/chef/chef/issues/3644)
- Installing Chef 12 on RHEL7 [\#3642](https://github.com/chef/chef/issues/3642)
- 12.3.0 --minimal-ohai a bit to minimal? command.ps attribute missing [\#3304](https://github.com/chef/chef/issues/3304)
- LWRP behaves odd when trying to set an attribute to nil [\#3197](https://github.com/chef/chef/issues/3197)
- Permission mismatch in the `script` provider on Mac OS X [\#3194](https://github.com/chef/chef/issues/3194)
- Using lazy attributes as name attribute [\#3191](https://github.com/chef/chef/issues/3191)
- Chef client no longer handles interactive shell scripts well [\#3189](https://github.com/chef/chef/issues/3189)
- Chef run looping and never finishes [\#3186](https://github.com/chef/chef/issues/3186)
- run\_list presence in role depends on order of .rb input file [\#3179](https://github.com/chef/chef/issues/3179)
- trusted\_certs\_dir doesn't seem to work if a path is constructed from multiple strings [\#3157](https://github.com/chef/chef/issues/3157)
- smartos "CRON" resource failing on special characters and mailto ""  [\#3120](https://github.com/chef/chef/issues/3120)
- convergence hangs in chef-client 12.0.3, stops on access to /dev/tty. No problem in chef 11.16. [\#2742](https://github.com/chef/chef/issues/2742)

**Merged pull requests:**

- Release 11.18.14 [\#3654](https://github.com/chef/chef/pull/3654) ([thommay](https://github.com/thommay))
- Merge pull request \#3629 from chef/jdm/update-certs [\#3647](https://github.com/chef/chef/pull/3647) ([jaym](https://github.com/jaym))
- Try fix for failing config test [\#3646](https://github.com/chef/chef/pull/3646) ([jaym](https://github.com/jaym))
- Decommission 12-stable [\#3641](https://github.com/chef/chef/pull/3641) ([grubernaut](https://github.com/grubernaut))

## [12.4.1](https://github.com/chef/chef/tree/12.4.1) (2015-07-07)
[Full Changelog](https://github.com/chef/chef/compare/12.4.0...12.4.1)

**Fixed bugs:**

- Knife Bootstrap Improperly Detecting Existence of Chef Installation [\#3408](https://github.com/chef/chef/issues/3408)
- knife bootstrap windows winrm - wrong chef server url [\#2796](https://github.com/chef/chef/issues/2796)
- DeepMerge\#safe\_dup is not safe [\#2720](https://github.com/chef/chef/issues/2720)
- Chef template throws Errno::EINVAL when trying create file on nfs mount point [\#2432](https://github.com/chef/chef/issues/2432)
- Environment proxy settings not picked up by remote\_file [\#2140](https://github.com/chef/chef/issues/2140)

**Closed issues:**

- chef-client fails to save an updated node to Chef Server [\#3637](https://github.com/chef/chef/issues/3637)
- chef-client run failed after upgrade to 12.4 [\#3634](https://github.com/chef/chef/issues/3634)
- Can't specify both a version and a recipe in a nodes run\_list [\#3631](https://github.com/chef/chef/issues/3631)
- Recipe Names in Run List get mutated when version constraints are present. [\#3618](https://github.com/chef/chef/issues/3618)
- Chef 12.4.0 changed the names of lwrp resources in some cases [\#3617](https://github.com/chef/chef/issues/3617)
- Segfault when installing Chef on Windows 7 [\#3609](https://github.com/chef/chef/issues/3609)
- 12.4 Breaking Change Sending Include to Custom LWRP [\#3607](https://github.com/chef/chef/issues/3607)
- 12.4 API breakage: Resource\#action no longer casts to Array [\#3604](https://github.com/chef/chef/issues/3604)
- Knife does not detect winrm when called from Jenkins. [\#3601](https://github.com/chef/chef/issues/3601)
- API break: RunContext attr\_reader vs. attr\_accessor [\#3585](https://github.com/chef/chef/issues/3585)
- chef-client for network device? [\#3583](https://github.com/chef/chef/issues/3583)
- Firing notifies from within an inline'd LWRP provider. [\#3575](https://github.com/chef/chef/issues/3575)
- Ruby explodes while Bootstrapping on Windows from ConEmu [\#3574](https://github.com/chef/chef/issues/3574)
- failed \(2: No such file or directory\) - /opt/opscode-manage/embedded/service/opscode-manage/public/assets/locale/application\_en-ed0cf4e74dffb77fe5988bd21bdb1519.js [\#3571](https://github.com/chef/chef/issues/3571)
- Hosted chef fails to create databag if you press the enter key [\#3567](https://github.com/chef/chef/issues/3567)
- knife bootstrap "Node   exists, overwrite it? \(Y/N\)" [\#3558](https://github.com/chef/chef/issues/3558)
- Chef throws Win32APIFunctionNotImplemented when using Chef::ReservedNames::Win32::Version.new [\#3550](https://github.com/chef/chef/issues/3550)
- Issue in chef-server-ctl reconfigure [\#3421](https://github.com/chef/chef/issues/3421)
- Audit mode warning is slightly confusing and incorrect [\#3255](https://github.com/chef/chef/issues/3255)
- Exception handlers do not run if chef\_run fails before @run\_status is set [\#3180](https://github.com/chef/chef/issues/3180)
- Chef shell spec fails on solaris [\#3150](https://github.com/chef/chef/issues/3150)
- "Option name must be a kind of String!" regression \(?\) since 12.1.x with chef\_rbenv cookbook [\#3115](https://github.com/chef/chef/issues/3115)
- Verify that knife-windows can use validatorless bootstrap [\#3111](https://github.com/chef/chef/issues/3111)
- 12.1.0 Release Regressions [\#3107](https://github.com/chef/chef/issues/3107)
- Vagrant Provision with Chef gives roles related error [\#3103](https://github.com/chef/chef/issues/3103)
- 'knife upload' does not honor dependencies in metadata.rb [\#3095](https://github.com/chef/chef/issues/3095)
- Net::HTTPServerException: 412 "Precondition Failed" error message isn't helpful [\#3083](https://github.com/chef/chef/issues/3083)
- knife search output with specific attribute is broken [\#3018](https://github.com/chef/chef/issues/3018)
- if Chef Client run fails early, run\_id is undefined and throws an error [\#2996](https://github.com/chef/chef/issues/2996)
- chef\_gem should support options hash [\#2977](https://github.com/chef/chef/issues/2977)
- Chef 12 with Vault and non-admins users [\#2969](https://github.com/chef/chef/issues/2969)
- Chef stalls at looks\_like\_gce [\#2965](https://github.com/chef/chef/issues/2965)
- :powershell\_script guards not working properly on non-powershell\_script resources [\#2909](https://github.com/chef/chef/issues/2909)
- Chef 12.4.0 changed the interface of Chef::User [\#3628](https://github.com/chef/chef/issues/3628)
- Deprecation Warnings For LWRPs [\#3621](https://github.com/chef/chef/issues/3621)
- Chef 12.4.1 [\#3616](https://github.com/chef/chef/issues/3616)
- I don't understand warning about resource\_name in resource\_matching\_provider\(\) [\#3614](https://github.com/chef/chef/issues/3614)
- chef-client 12.4.0 wrongly detects sysvinit instead of systemd on CentOS 7 [\#3593](https://github.com/chef/chef/issues/3593)

**Merged pull requests:**

- 12.4.1 [\#3639](https://github.com/chef/chef/pull/3639) ([jaym](https://github.com/jaym))
- Don't accept multiple parameters in recipe DSL \(just name\) [\#3638](https://github.com/chef/chef/pull/3638) ([jkeiser](https://github.com/jkeiser))
- Make required name attributes work [\#3632](https://github.com/chef/chef/pull/3632) ([jkeiser](https://github.com/jkeiser))
- Move Chef::OscUser back to Chef::User namespace and new user code to Chef::UserV1. [\#3630](https://github.com/chef/chef/pull/3630) ([tylercloke](https://github.com/tylercloke))
- Update certs [\#3629](https://github.com/chef/chef/pull/3629) ([jaym](https://github.com/jaym))
- Re-separate priority map and DSL handler map so that provides has vet… [\#3627](https://github.com/chef/chef/pull/3627) ([jkeiser](https://github.com/jkeiser))
- Revert "FFI 1.9.9 is causing segfaults" [\#3626](https://github.com/chef/chef/pull/3626) ([jaym](https://github.com/jaym))
- Add "property" with identity and desired\_state [\#3624](https://github.com/chef/chef/pull/3624) ([jkeiser](https://github.com/jkeiser))
- Simplify LWRP Deprecations Proposal 1 [\#3623](https://github.com/chef/chef/pull/3623) ([jaym](https://github.com/jaym))
- 3618 run list mutation issue [\#3620](https://github.com/chef/chef/pull/3620) ([danielsdeleo](https://github.com/danielsdeleo))
- Move WorkstationConfigLoader into chef-config [\#3612](https://github.com/chef/chef/pull/3612) ([mcquin](https://github.com/mcquin))
- Call provides? when resolving, reduce number of calls to provides? [\#3611](https://github.com/chef/chef/pull/3611) ([jkeiser](https://github.com/jkeiser))
- Rename powershell spec files to match Ruby conventions [\#3608](https://github.com/chef/chef/pull/3608) ([adamedx](https://github.com/adamedx))
- FFI 1.9.9 is causing segfaults [\#3606](https://github.com/chef/chef/pull/3606) ([jaym](https://github.com/jaym))
- Rework Resource\#action to match the 12.3 API. [\#3605](https://github.com/chef/chef/pull/3605) ([coderanger](https://github.com/coderanger))
- Fix ability to monkey match LWRP through Chef::Resource::MyLwrp [\#3603](https://github.com/chef/chef/pull/3603) ([jaym](https://github.com/jaym))
- Add myself as a core maintainer. [\#3600](https://github.com/chef/chef/pull/3600) ([coderanger](https://github.com/coderanger))
- Fix issue where blocks were not considered in priority mapping [\#3599](https://github.com/chef/chef/pull/3599) ([jaym](https://github.com/jaym))
- Use Mixlib::Shellout instead of Chef::Mixin::Command [\#3591](https://github.com/chef/chef/pull/3591) ([DeWaRs1206](https://github.com/DeWaRs1206))
- add maintainers/Lts for tier 1 & 2 support [\#3525](https://github.com/chef/chef/pull/3525) ([jtimberman](https://github.com/jtimberman))
- Allow properties to be defined on resources [\#3493](https://github.com/chef/chef/pull/3493) ([jkeiser](https://github.com/jkeiser))
- Fix some errant bashisms [\#3589](https://github.com/chef/chef/pull/3589) ([thommay](https://github.com/thommay))
- Fix deprecated setters. [\#3587](https://github.com/chef/chef/pull/3587) ([coderanger](https://github.com/coderanger))
- Fix to allow LW resources to be used with HW providers [\#3586](https://github.com/chef/chef/pull/3586) ([jaym](https://github.com/jaym))

## [12.4.0](https://github.com/chef/chef/tree/12.4.0) (2015-06-23)
[Full Changelog](https://github.com/chef/chef/compare/12.4.0.rc.2...12.4.0)

**Implemented enhancements:**

- Add way to delay deploy resource symlink modification until end of Chef run [\#2359](https://github.com/chef/chef/issues/2359)

**Fixed bugs:**

- Chef 12.0.3 Service Why-run Showing Output Different Than Chef 11.16.4 [\#2911](https://github.com/chef/chef/issues/2911)
- Using "knife ... -VV -l \<anything\>" runs chef-zero [\#2337](https://github.com/chef/chef/issues/2337)
- knife commands in Windows can have unexpected results because of argument globbing [\#1687](https://github.com/chef/chef/issues/1687)
- knife doesn't deal with case-insensitivity in Windows filesystem paths [\#1684](https://github.com/chef/chef/issues/1684)
- allow chef client to log to syslog instead of just files [\#1609](https://github.com/chef/chef/issues/1609)

**Closed issues:**

- chef-server-ctl ha-status incorretly reports opscode-chef-mover as down in HA setup on primary [\#3566](https://github.com/chef/chef/issues/3566)
- API reversion: ProviderPriorityMap\#priority [\#3561](https://github.com/chef/chef/issues/3561)
- chef-server-ctl org-create is broken in v12 [\#3560](https://github.com/chef/chef/issues/3560)
- "directory" resource does not set "owner" that is not in /etc/passwd [\#3552](https://github.com/chef/chef/issues/3552)
- Cannot bootstrap node when using --bootstrap-vault-item [\#3537](https://github.com/chef/chef/issues/3537)
- output of chef client differs when used with pipe or redirection [\#3528](https://github.com/chef/chef/issues/3528)
- Resource and provider resolver fallback non-functional [\#3524](https://github.com/chef/chef/issues/3524)
- Knife bootstrap install\_sh changed to url [\#3520](https://github.com/chef/chef/issues/3520)
- Run chef-solo via Ruby API [\#3500](https://github.com/chef/chef/issues/3500)
- Resource 'execute' hangs on Windows for some executable files [\#3423](https://github.com/chef/chef/issues/3423)
- Last Check-in is only updated on the first run of chef-client, but not on later runs  [\#3258](https://github.com/chef/chef/issues/3258)
- Git provider fails to force update when you are already on the branch [\#3025](https://github.com/chef/chef/issues/3025)
- execute resource with the same name is being called out of order when executing multiple recipes [\#2974](https://github.com/chef/chef/issues/2974)
- node attributes are not working with chef-client --local-mode [\#2959](https://github.com/chef/chef/issues/2959)
- Enable suppressing delayed notifications [\#2947](https://github.com/chef/chef/issues/2947)
- Chef Deamon locks [\#2945](https://github.com/chef/chef/issues/2945)
- OS chef upgrades over omnibus chef, breaking things [\#2916](https://github.com/chef/chef/issues/2916)
- Nameserver changes don't get picked up by Chef [\#2894](https://github.com/chef/chef/issues/2894)
- Error message: Unable to satisfy constraints on package [\#2892](https://github.com/chef/chef/issues/2892)
- chef\_gem doesn't account for orphaned gems [\#2882](https://github.com/chef/chef/issues/2882)
- APT key not installed  [\#2866](https://github.com/chef/chef/issues/2866)
- powershell\_script doesn't seem to always emit a line describing the step in output [\#2852](https://github.com/chef/chef/issues/2852)
- knife wildcard search for attrs with values containing spaces doesn't work [\#2467](https://github.com/chef/chef/issues/2467)
- Bash resource should support `set -eu` [\#2369](https://github.com/chef/chef/issues/2369)
- knife segmentation fault on YN prompt [\#3553](https://github.com/chef/chef/issues/3553)
- 12.4.0.rc.2 Chef::Log logging is totally broken \(-l debug fails badly, fatal messages getting swallowed, no warnings, etc\) [\#3546](https://github.com/chef/chef/issues/3546)
- chef\_12.4.0~rc.2 - Option action must be equal to one of: enable, disable!  You passed :nothing. [\#3535](https://github.com/chef/chef/issues/3535)

**Merged pull requests:**

- Update RELEASE\_NOTES.md [\#3580](https://github.com/chef/chef/pull/3580) ([ksubrama](https://github.com/ksubrama))
- Add some doc changes for 12.4.0 [\#3578](https://github.com/chef/chef/pull/3578) ([jkeiser](https://github.com/jkeiser))
- Bump revision to 12.5.0.current.0 [\#3577](https://github.com/chef/chef/pull/3577) ([jkeiser](https://github.com/jkeiser))
- Get rid of warning when defining an LWRP [\#3576](https://github.com/chef/chef/pull/3576) ([jkeiser](https://github.com/jkeiser))
- Proposal to \(re-\)add myself as a core chef maintainer. [\#3564](https://github.com/chef/chef/pull/3564) ([mcquin](https://github.com/mcquin))
- Re-add \#priority. [\#3562](https://github.com/chef/chef/pull/3562) ([coderanger](https://github.com/coderanger))
- add Joe Miller as LT for OpenBSD [\#3555](https://github.com/chef/chef/pull/3555) ([joemiller](https://github.com/joemiller))
- Add missing require statement in resource\_resolver [\#3554](https://github.com/chef/chef/pull/3554) ([ranjib](https://github.com/ranjib))
- Warn when multiple providers try to provide the same thing [\#3543](https://github.com/chef/chef/pull/3543) ([jkeiser](https://github.com/jkeiser))
- Only automatically set resources that do class X \< Chef::Resource [\#3542](https://github.com/chef/chef/pull/3542) ([jkeiser](https://github.com/jkeiser))
- Ensure :nothing is in the list of allowed actions for an LWRP [\#3541](https://github.com/chef/chef/pull/3541) ([jkeiser](https://github.com/jkeiser))
- Exceptions for audits should only get wrapped if audit mode is enabled [\#3538](https://github.com/chef/chef/pull/3538) ([jaym](https://github.com/jaym))
- Proposing myself as Ubuntu LT [\#3522](https://github.com/chef/chef/pull/3522) ([ranjib](https://github.com/ranjib))
- The wording seemed odd. [\#3519](https://github.com/chef/chef/pull/3519) ([jjasghar](https://github.com/jjasghar))
- Fix chef-config gem homepage [\#3512](https://github.com/chef/chef/pull/3512) ([thommay](https://github.com/thommay))
- fix rpm\_package when sourced packages have a tilde character in the version [\#3503](https://github.com/chef/chef/pull/3503) ([irvingpop](https://github.com/irvingpop))
- Add "action" to Resource \(RFC 50\) [\#3437](https://github.com/chef/chef/pull/3437) ([jkeiser](https://github.com/jkeiser))
- Re-allow nameless resources [\#3417](https://github.com/chef/chef/pull/3417) ([coderanger](https://github.com/coderanger))
- Remove experimental warning on audit mode. [\#3299](https://github.com/chef/chef/pull/3299) ([juliandunn](https://github.com/juliandunn))
- don't mutate the new resource [\#3295](https://github.com/chef/chef/pull/3295) ([lamont-granquist](https://github.com/lamont-granquist))
- Make multipackage and arch play nicely together [\#3235](https://github.com/chef/chef/pull/3235) ([jaymzh](https://github.com/jaymzh))

## [12.4.0.rc.2](https://github.com/chef/chef/tree/12.4.0.rc.2) (2015-06-09)
[Full Changelog](https://github.com/chef/chef/compare/12.4.0.rc.1...12.4.0.rc.2)

**Closed issues:**

- Silent corruption of node.run\_context [\#3485](https://github.com/chef/chef/issues/3485)

## [12.4.0.rc.1](https://github.com/chef/chef/tree/12.4.0.rc.1) (2015-06-09)
[Full Changelog](https://github.com/chef/chef/compare/12.4.0.rc.0...12.4.0.rc.1)

**Implemented enhancements:**

- systemd provider for service resource doesn't pick up custom init scripts [\#2839](https://github.com/chef/chef/issues/2839)

**Fixed bugs:**

- Knife user creation doesn't work in Chef 12 [\#3010](https://github.com/chef/chef/issues/3010)
- Chef::Util::PathHelper.validate\_path fails on network paths [\#2705](https://github.com/chef/chef/issues/2705)
- gem\_package installation fails with default timeout. [\#2441](https://github.com/chef/chef/issues/2441)
- recipe\_eval in provider does not converge all included recipes [\#2366](https://github.com/chef/chef/issues/2366)
- undefined local variable or method `trusted\_certs'  [\#2343](https://github.com/chef/chef/issues/2343)
- Mount resource does not support spaces in Windows mount points [\#2276](https://github.com/chef/chef/issues/2276)
- powershell\_script returns 0 for scripts with syntax errors [\#2247](https://github.com/chef/chef/issues/2247)

**Closed issues:**

- Chef 12.3.0 package provider override not working [\#3487](https://github.com/chef/chef/issues/3487)
- Allow nested libraries to be uploaded to a chef server [\#3486](https://github.com/chef/chef/issues/3486)
- audit mode is supposed to ban RSpec "should" syntax, but it doesn't [\#3482](https://github.com/chef/chef/issues/3482)
- --with-orgs subcommand does not work with chef-server-ctl user-show [\#3466](https://github.com/chef/chef/issues/3466)
- Windows Bootstrap Fail [\#3464](https://github.com/chef/chef/issues/3464)
- 12.4.0.rc.0 LWRP Regression [\#3463](https://github.com/chef/chef/issues/3463)
- Chef::REST api does not say what types of objects are returned [\#3453](https://github.com/chef/chef/issues/3453)
- Chef cron resource produces broken crontab entries for CentOS 6.6 [\#3445](https://github.com/chef/chef/issues/3445)
- chef-server-ctl org-create command [\#3424](https://github.com/chef/chef/issues/3424)
- Setting the directory owner to non-existing user does not fail [\#3390](https://github.com/chef/chef/issues/3390)
- Intermittent OpenSSL "decryption failed" in 12.x chef\_gem [\#3376](https://github.com/chef/chef/issues/3376)
- Regression: yum\_package doesn't upgrade [\#3292](https://github.com/chef/chef/issues/3292)
- add-user-key argument error: wrong number of arguments [\#3274](https://github.com/chef/chef/issues/3274)
- knife subcommands do not work anymore on Windows \(since Chef 12.3.0.rc.0\) [\#3272](https://github.com/chef/chef/issues/3272)
- Zypper Package Provider times out \(with large packages\) [\#2943](https://github.com/chef/chef/issues/2943)
- audit data logging in Chef 12.2.0 alpha is never logged to STDOUT on interactive runs [\#2910](https://github.com/chef/chef/issues/2910)
- Kitchen converge fails with 1.6GB of cookbook files [\#2824](https://github.com/chef/chef/issues/2824)
- man pages not installed on OS X [\#2818](https://github.com/chef/chef/issues/2818)
- Calling private methods in a Provider is not resolved by method\_missing within converge\_by [\#2817](https://github.com/chef/chef/issues/2817)
- Possibly support passing an array to creates attribute for execute [\#2798](https://github.com/chef/chef/issues/2798)
- Escape spaces in source attribute, in remote\_file resource. [\#1848](https://github.com/chef/chef/issues/1848)

**Merged pull requests:**

- Using master of kitchen-ec2 for travis integration tests [\#3501](https://github.com/chef/chef/pull/3501) ([tyler-ball](https://github.com/tyler-ball))
- Issue\#3485: Fix corruption of run\_context when guard interpreters are executed [\#3497](https://github.com/chef/chef/pull/3497) ([adamedx](https://github.com/adamedx))
- Remove use\_automatic\_resource\_name, make resource\_name automatic [\#3495](https://github.com/chef/chef/pull/3495) ([jkeiser](https://github.com/jkeiser))
- Hyphenated LWRP [\#3489](https://github.com/chef/chef/pull/3489) ([danielsdeleo](https://github.com/danielsdeleo))
- switch to an HVM ssd based AMI [\#3488](https://github.com/chef/chef/pull/3488) ([lamont-granquist](https://github.com/lamont-granquist))
- These tests were accidently left out when I moved \#2621 to master [\#3484](https://github.com/chef/chef/pull/3484) ([tyler-ball](https://github.com/tyler-ball))
- allow include\_recipe from LWRP provider code [\#3483](https://github.com/chef/chef/pull/3483) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/bundle cache [\#3481](https://github.com/chef/chef/pull/3481) ([lamont-granquist](https://github.com/lamont-granquist))
- We don't need to run ruby 2.0 in travis. [\#3480](https://github.com/chef/chef/pull/3480) ([jaym](https://github.com/jaym))
- try m3.medium over m1.small [\#3479](https://github.com/chef/chef/pull/3479) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/retry bundle install [\#3478](https://github.com/chef/chef/pull/3478) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/zypper package [\#3477](https://github.com/chef/chef/pull/3477) ([lamont-granquist](https://github.com/lamont-granquist))
- fix package timeout attribute [\#3475](https://github.com/chef/chef/pull/3475) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix copying ntfs dacl and sacl when they are nil [\#3471](https://github.com/chef/chef/pull/3471) ([jaym](https://github.com/jaym))
- add lazy require for 'chef/config' [\#3470](https://github.com/chef/chef/pull/3470) ([lamont-granquist](https://github.com/lamont-granquist))
- Add missing require [\#3467](https://github.com/chef/chef/pull/3467) ([jaym](https://github.com/jaym))
- Drop support for rubygems 1.x [\#3457](https://github.com/chef/chef/pull/3457) ([danielsdeleo](https://github.com/danielsdeleo))
- Issue \#3455: powershell\_script: do not allow suppression of syntax errors [\#3455](https://github.com/chef/chef/pull/3455) ([adamedx](https://github.com/adamedx))
- Fix subcommand loader test [\#3454](https://github.com/chef/chef/pull/3454) ([danielsdeleo](https://github.com/danielsdeleo))
- Run `gem install` tasks w/o bundler's env [\#3451](https://github.com/chef/chef/pull/3451) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix dsc\_resource to work with wmf5 april preview [\#3448](https://github.com/chef/chef/pull/3448) ([jaym](https://github.com/jaym))
- windows does not have uname [\#3439](https://github.com/chef/chef/pull/3439) ([lamont-granquist](https://github.com/lamont-granquist))
- API V1 Support [\#3438](https://github.com/chef/chef/pull/3438) ([tylercloke](https://github.com/tylercloke))
- Update CHANGELOG.md [\#3429](https://github.com/chef/chef/pull/3429) ([scotthain](https://github.com/scotthain))
- Move `skip` for useradd test to metadata [\#3428](https://github.com/chef/chef/pull/3428) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix overridden method `skip` causing arity failures [\#3425](https://github.com/chef/chef/pull/3425) ([danielsdeleo](https://github.com/danielsdeleo))
- RSpec isn't a bug database or kanban board [\#3420](https://github.com/chef/chef/pull/3420) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix cli issue with unset chef\_repo\_path [\#3419](https://github.com/chef/chef/pull/3419) ([scotthain](https://github.com/scotthain))
- add shell\_out to resources [\#3418](https://github.com/chef/chef/pull/3418) ([lamont-granquist](https://github.com/lamont-granquist))
- Display Policyfile Name and Revision ID [\#3415](https://github.com/chef/chef/pull/3415) ([danielsdeleo](https://github.com/danielsdeleo))
- Make sure the audit mode output is reflected both in the logs and in the formatter output. [\#3412](https://github.com/chef/chef/pull/3412) ([sersut](https://github.com/sersut))
- add unicode WM\_SETTINGCHANGE broadcast [\#3406](https://github.com/chef/chef/pull/3406) ([lamont-granquist](https://github.com/lamont-granquist))
- Allow spaces in files for remote\_file [\#3398](https://github.com/chef/chef/pull/3398) ([jaym](https://github.com/jaym))
- Lcg/directory missing owner validation check [\#3397](https://github.com/chef/chef/pull/3397) ([lamont-granquist](https://github.com/lamont-granquist))
- Comment up Chef::Client and privatize/deprecate unused things [\#3392](https://github.com/chef/chef/pull/3392) ([jkeiser](https://github.com/jkeiser))
- Reduce provider/resource resolution stages down to 1 [\#3374](https://github.com/chef/chef/pull/3374) ([jkeiser](https://github.com/jkeiser))

## [12.4.0.rc.0](https://github.com/chef/chef/tree/12.4.0.rc.0) (2015-05-21)
[Full Changelog](https://github.com/chef/chef/compare/11.18.12...12.4.0.rc.0)

**Implemented enhancements:**

- Feature request: Show remote\_file progress [\#2812](https://github.com/chef/chef/issues/2812)
- Create CLI options for policyfile [\#2509](https://github.com/chef/chef/issues/2509)
- powershell\_script removes file after execution [\#2352](https://github.com/chef/chef/issues/2352)
- fix node recipes, add run\_list\_expansion and cookbooks [\#2312](https://github.com/chef/chef/pull/2312) ([lamont-granquist](https://github.com/lamont-granquist))

**Fixed bugs:**

- Exceptions::ChecksumMismatch with different checksum found [\#3168](https://github.com/chef/chef/issues/3168)
- Failure to print resource error message on Windows [\#3055](https://github.com/chef/chef/issues/3055)
- setuid bit not set \(sometimes\) [\#2951](https://github.com/chef/chef/issues/2951)
- Issues with notifications to LWRPs when cookbook name contain a hyphens [\#2904](https://github.com/chef/chef/issues/2904)
- windows\_package is missing checksum attribute [\#2659](https://github.com/chef/chef/issues/2659)
- Kill process failed from pushy-client in windows [\#2504](https://github.com/chef/chef/issues/2504)
- Lightweight resources should have access to run\_context and node during class definition, for use in DSL \(e.g. attribute default values\)  [\#2403](https://github.com/chef/chef/issues/2403)
- Chef-client buffers the log and spits out the log in the end of the recipe [\#2292](https://github.com/chef/chef/issues/2292)
- 11.16.4 Omnibus install on Windows = ruby not found [\#2291](https://github.com/chef/chef/issues/2291)
- Env resource implementation and documentation inconsistent [\#2262](https://github.com/chef/chef/issues/2262)

**Closed issues:**

- cannot load such file -- ruby-wmi [\#3395](https://github.com/chef/chef/issues/3395)
- multi-package install returns "no candidate version" [\#3375](https://github.com/chef/chef/issues/3375)
- remote\_file resource needs three forward slashes for local files \(file:///\) instead of two \(file://\) to function [\#3371](https://github.com/chef/chef/issues/3371)
- Chef sets LC\_ALL=C on restarted services [\#3367](https://github.com/chef/chef/issues/3367)
- Latest mixlib-config breaks unit tests [\#3365](https://github.com/chef/chef/issues/3365)
- chef-server-reconfigure does not bounce rabbitmq [\#3361](https://github.com/chef/chef/issues/3361)
- undefined method `reset\_defaults\_and\_overrides' [\#3359](https://github.com/chef/chef/issues/3359)
- Provider does not implement env\_value [\#3356](https://github.com/chef/chef/issues/3356)
- Chef Server enters 100% cpu loop from GUI when cookbook from environment constraints does not exist [\#3338](https://github.com/chef/chef/issues/3338)
- windows\_package broken in core in Chef 12.2.0+ [\#3316](https://github.com/chef/chef/issues/3316)
- Error executing action `upgrade` on resource 'package\[curl\]' [\#3313](https://github.com/chef/chef/issues/3313)
- securable\_resource Windows shared\_examples assume incorrect default owner/groups [\#3266](https://github.com/chef/chef/issues/3266)
- AIX invalid test for group of subsystems in Chef::Provider::Service::Aix  [\#3248](https://github.com/chef/chef/issues/3248)
- Productize / Take ownership / Contribute to vsphere plugin [\#3226](https://github.com/chef/chef/issues/3226)
- `knife bootstrap` fails if `-N` option is not passed [\#3204](https://github.com/chef/chef/issues/3204)
- Chef gem install requires elevated privileges on Windows \(since 12.0.0 onwards\) [\#3125](https://github.com/chef/chef/issues/3125)
- Installing AIX packages from source does not work [\#3108](https://github.com/chef/chef/issues/3108)
- Package resource should not allow multi-package and source to both be specified [\#3075](https://github.com/chef/chef/issues/3075)
- fatal error issue [\#3046](https://github.com/chef/chef/issues/3046)
- Wordpress cookbook is constantly asking for a deprecated cookbook [\#2960](https://github.com/chef/chef/issues/2960)
- Consistent log\_level after knife bootstrap [\#2768](https://github.com/chef/chef/issues/2768)
- Error executing action `create` on resource 'private-chef\_pg\_database\[opscode-pgsql\]' [\#2715](https://github.com/chef/chef/issues/2715)
- ffi-yajl / yajl-ruby compatibility issues with Chef 12.0.1 [\#2701](https://github.com/chef/chef/issues/2701)
- Chef 12 changed default service provider [\#2595](https://github.com/chef/chef/issues/2595)
- Chef v12.0.0 Error executing action `install` on resource 'chef\_gem\[pg\]' [\#2587](https://github.com/chef/chef/issues/2587)
- resource\_matching\_provider fails for :chef\_gem [\#2558](https://github.com/chef/chef/issues/2558)
- `knife client create` requires json\_class in the user-provided json [\#2542](https://github.com/chef/chef/issues/2542)
- Cookbook upload failed due to file not found [\#2539](https://github.com/chef/chef/issues/2539)
- bash creates attribute vs. report handlers [\#2335](https://github.com/chef/chef/issues/2335)
- windows\_package installation shows "Run as" dialog [\#2302](https://github.com/chef/chef/issues/2302)
- Incorrect User already exists ERROR [\#2278](https://github.com/chef/chef/issues/2278)
- chef-server throws 500 at random searches [\#2268](https://github.com/chef/chef/issues/2268)

**Merged pull requests:**

- Make native mode the default for policyfiles [\#3407](https://github.com/chef/chef/pull/3407) ([danielsdeleo](https://github.com/danielsdeleo))
- Enable caching of rubygems in appveyor [\#3405](https://github.com/chef/chef/pull/3405) ([danielsdeleo](https://github.com/danielsdeleo))
- Run rubygems from master for perf improvements [\#3404](https://github.com/chef/chef/pull/3404) ([danielsdeleo](https://github.com/danielsdeleo))
- Don't call get\_last\_error for net api [\#3402](https://github.com/chef/chef/pull/3402) ([jaym](https://github.com/jaym))
- fix an lwrp default action test [\#3400](https://github.com/chef/chef/pull/3400) ([thommay](https://github.com/thommay))
- Show trace for RecipeNotFound errors when it originates from include recipe [\#3396](https://github.com/chef/chef/pull/3396) ([danielsdeleo](https://github.com/danielsdeleo))
- bump timeout up to 300 seconds [\#3393](https://github.com/chef/chef/pull/3393) ([lamont-granquist](https://github.com/lamont-granquist))
- Add install\_components task for forward compat w/ 12 [\#3391](https://github.com/chef/chef/pull/3391) ([danielsdeleo](https://github.com/danielsdeleo))
- Integration tests fix ipv6 [\#3388](https://github.com/chef/chef/pull/3388) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/integ fixes [\#3386](https://github.com/chef/chef/pull/3386) ([lamont-granquist](https://github.com/lamont-granquist))
- warn on cookbook self-deps [\#3381](https://github.com/chef/chef/pull/3381) ([lamont-granquist](https://github.com/lamont-granquist))
- Jdm/3318 [\#3380](https://github.com/chef/chef/pull/3380) ([jaym](https://github.com/jaym))
- Jdm/3345 [\#3369](https://github.com/chef/chef/pull/3369) ([jaym](https://github.com/jaym))
- Add check\_resource\_semantics! lifecycle method to provider [\#3360](https://github.com/chef/chef/pull/3360) ([jaym](https://github.com/jaym))
- Escape string inside regex [\#3357](https://github.com/chef/chef/pull/3357) ([jaym](https://github.com/jaym))
- Fix failing kitchen tests [\#3355](https://github.com/chef/chef/pull/3355) ([jaym](https://github.com/jaym))
- fixes the timing on the chef-shell specs [\#3348](https://github.com/chef/chef/pull/3348) ([lamont-granquist](https://github.com/lamont-granquist))
- Diagnose failing tests [\#3346](https://github.com/chef/chef/pull/3346) ([jaym](https://github.com/jaym))
- Added a logger for Windows Event Log [\#3345](https://github.com/chef/chef/pull/3345) ([jaym](https://github.com/jaym))
- Changing Net User things to use ffi instead of win32-api [\#3344](https://github.com/chef/chef/pull/3344) ([jaym](https://github.com/jaym))
- Check if proxy env\_var is empty [\#3342](https://github.com/chef/chef/pull/3342) ([jonsmorrow](https://github.com/jonsmorrow))
- Allow inspection of event dispatch's subscribers [\#3340](https://github.com/chef/chef/pull/3340) ([danielsdeleo](https://github.com/danielsdeleo))
- Powershell command wrappers to make argument passing to knife/chef-client etc. easier. [\#3339](https://github.com/chef/chef/pull/3339) ([ksubrama](https://github.com/ksubrama))
- remote\_file support for windows network shares [\#3336](https://github.com/chef/chef/pull/3336) ([jaym](https://github.com/jaym))
- let the ruby patchlevels float [\#3335](https://github.com/chef/chef/pull/3335) ([lamont-granquist](https://github.com/lamont-granquist))
- Apply an SSL Policy to CookbookSiteStreamingUploader, fixing SSL errors uploading to private Supermarkets [\#3333](https://github.com/chef/chef/pull/3333) ([irvingpop](https://github.com/irvingpop))
- Convert wiki links to docs.chef.io links [\#3328](https://github.com/chef/chef/pull/3328) ([tas50](https://github.com/tas50))
- Enforce passing a node name with validatorless bootstrapping [\#3325](https://github.com/chef/chef/pull/3325) ([ryancragun](https://github.com/ryancragun))
- Replace of \#3284 add chef log syslog avoid windows [\#3322](https://github.com/chef/chef/pull/3322) ([sawanoboly](https://github.com/sawanoboly))
- Lcg/node utf8 sanitize [\#3320](https://github.com/chef/chef/pull/3320) ([lamont-granquist](https://github.com/lamont-granquist))
- Implemented X-Ops-Server-API-Version in Chef requests [\#3319](https://github.com/chef/chef/pull/3319) ([tylercloke](https://github.com/tylercloke))
- Modify windows package provider to allow url [\#3318](https://github.com/chef/chef/pull/3318) ([jaym](https://github.com/jaym))
- windows\_package is idempotent again [\#3317](https://github.com/chef/chef/pull/3317) ([jaym](https://github.com/jaym))
- Implemented `knife user key edit` and `knife client key edit` [\#3311](https://github.com/chef/chef/pull/3311) ([tylercloke](https://github.com/tylercloke))
- fix AIX package installs using a 'source' attribute [\#3298](https://github.com/chef/chef/pull/3298) ([juliandunn](https://github.com/juliandunn))
- Pull Config from external Gem [\#3270](https://github.com/chef/chef/pull/3270) ([danielsdeleo](https://github.com/danielsdeleo))
- Remove method\_missing and make Chef::Resource unspecial [\#3269](https://github.com/chef/chef/pull/3269) ([jkeiser](https://github.com/jkeiser))
- \#3266 Fix bad Windows securable\_resource functional spec assumptions for default file owners/groups [\#3267](https://github.com/chef/chef/pull/3267) ([dbjorge](https://github.com/dbjorge))
- add Chef::Log::Syslog class [\#3262](https://github.com/chef/chef/pull/3262) ([lamont-granquist](https://github.com/lamont-granquist))
- Show Chef::VERSION at prompt\_c and prompt\_i on shell session [\#3227](https://github.com/chef/chef/pull/3227) ([sawanoboly](https://github.com/sawanoboly))
- Prioritise manual ssh attribute over defaults [\#2851](https://github.com/chef/chef/pull/2851) ([Igorshp](https://github.com/Igorshp))

## [11.18.12](https://github.com/chef/chef/tree/11.18.12) (2015-04-30)
[Full Changelog](https://github.com/chef/chef/compare/11.18.10...11.18.12)

**Closed issues:**

- RuntimeError: File files/default/plugins/README does not exist for cookbook ohai [\#3303](https://github.com/chef/chef/issues/3303)

**Merged pull requests:**

- Updating to released test kitchen and kitchen vagrant [\#3314](https://github.com/chef/chef/pull/3314) ([tyler-ball](https://github.com/tyler-ball))

## [11.18.10](https://github.com/chef/chef/tree/11.18.10) (2015-04-30)
[Full Changelog](https://github.com/chef/chef/compare/12.3.0...11.18.10)

**Implemented enhancements:**

- dsc\_script does not \(allways\) detect missing WhatIf correctly [\#2226](https://github.com/chef/chef/issues/2226)

**Fixed bugs:**

- Chef Client 11 -\> 12 Regression In Initial Run of Daemonized chef-client [\#3282](https://github.com/chef/chef/issues/3282)
- knife bootstrap ignores command-line ssh [\#2172](https://github.com/chef/chef/issues/2172)
- git Provider Incorrectly Selects Less Specific Tag [\#2065](https://github.com/chef/chef/issues/2065)
- patch to always run exception handlers [\#3207](https://github.com/chef/chef/pull/3207) ([Igorshp](https://github.com/Igorshp))

**Closed issues:**

- knife create user fails with username error even though -u user specified [\#3309](https://github.com/chef/chef/issues/3309)
- Chef push cook book  SHA256 key [\#3302](https://github.com/chef/chef/issues/3302)
- .. [\#3291](https://github.com/chef/chef/issues/3291)
- Multipackage support breaks 'package.arch' syntax [\#3233](https://github.com/chef/chef/issues/3233)
-  Encrypted cookbook\_file resource [\#2176](https://github.com/chef/chef/issues/2176)
- dsc\_script throws error on dsc package resource [\#2169](https://github.com/chef/chef/issues/2169)
- Sequential cookbook file downloads in local-mode? [\#2150](https://github.com/chef/chef/issues/2150)
- Timestamps are out of order in chef log [\#2147](https://github.com/chef/chef/issues/2147)
- Delayed notifications running after failed chef run can cause broken configuration [\#2084](https://github.com/chef/chef/issues/2084)
- reading crontab of non-root user on Solaris/SmartOS fails because of audit context [\#2066](https://github.com/chef/chef/issues/2066)
- CookBook cache on Node [\#2061](https://github.com/chef/chef/issues/2061)
- Customers would like Windows "user" resource to gracefully handle existing groups [\#2056](https://github.com/chef/chef/issues/2056)

**Merged pull requests:**

- Implemented `knife user key delete` and `knife client key delete`. [\#3306](https://github.com/chef/chef/pull/3306) ([tylercloke](https://github.com/tylercloke))
- Revert "Disable Travis CI container infrastructure due to broken IPv6 su... [\#3301](https://github.com/chef/chef/pull/3301) ([juliandunn](https://github.com/juliandunn))
- Implemented `knife user key list` and `knife client key list`. [\#3297](https://github.com/chef/chef/pull/3297) ([tylercloke](https://github.com/tylercloke))
- Disable Travis CI container infrastructure due to broken IPv6 support [\#3296](https://github.com/chef/chef/pull/3296) ([juliandunn](https://github.com/juliandunn))
- Implement `knife user key create` and `knife client key create` [\#3271](https://github.com/chef/chef/pull/3271) ([tylercloke](https://github.com/tylercloke))
- Update kitchen tests to use latest official test-kitchen [\#3260](https://github.com/chef/chef/pull/3260) ([jaym](https://github.com/jaym))

## [12.3.0](https://github.com/chef/chef/tree/12.3.0) (2015-04-27)
[Full Changelog](https://github.com/chef/chef/compare/12.3.0.rc.1...12.3.0)

## [12.3.0.rc.1](https://github.com/chef/chef/tree/12.3.0.rc.1) (2015-04-27)
[Full Changelog](https://github.com/chef/chef/compare/12.4.0.dev.0...12.3.0.rc.1)

**Fixed bugs:**

- Permission denied to script file in TMPDIR [\#2050](https://github.com/chef/chef/issues/2050)
- remote\_file's source attribute does not support DelayedEvaluators [\#2047](https://github.com/chef/chef/issues/2047)
- End-to-end client tests hang indefinitely [\#2042](https://github.com/chef/chef/issues/2042)
- chef-full.erb bootstrap template only supports bash [\#2037](https://github.com/chef/chef/issues/2037)
- First run of dsc\_script will fail if powershell 4.0 is not installed [\#2027](https://github.com/chef/chef/issues/2027)
- remote\_file when run using chef-client in local mode does not create file\_cache\_path [\#1963](https://github.com/chef/chef/issues/1963)

**Closed issues:**

- analytics should be removed as an option in chef-server-ctl install command [\#3273](https://github.com/chef/chef/issues/3273)
- no service provider for mac\_os\_x on chef 12? [\#3257](https://github.com/chef/chef/issues/3257)
- two different behaviors for attribute and variable [\#3237](https://github.com/chef/chef/issues/3237)
- Control recipes fail on Windows with 'no implicit conversion of Symbol into Integer' [\#3234](https://github.com/chef/chef/issues/3234)
- Amazon Linux: yum package resource fails with "ImportError: No module named yum" [\#3143](https://github.com/chef/chef/issues/3143)
- Docs: broken link https://docs.chef.io/essentials\_cookbook\_attribute\_files.html [\#2832](https://github.com/chef/chef/issues/2832)
- could not create server using chef [\#2121](https://github.com/chef/chef/issues/2121)
- \[testing\] Evaluate Waffle.io [\#2055](https://github.com/chef/chef/issues/2055)
- Bootstrap failure [\#2018](https://github.com/chef/chef/issues/2018)
- Chef Client ignores config option when executing search [\#1932](https://github.com/chef/chef/issues/1932)

**Merged pull requests:**

- Cherry pick changes for reboot pending [\#3288](https://github.com/chef/chef/pull/3288) ([jaym](https://github.com/jaym))
- Configure serverspec correctly on windows. [\#3280](https://github.com/chef/chef/pull/3280) ([sersut](https://github.com/sersut))
- Lcg/fix provider resolver api break [\#3279](https://github.com/chef/chef/pull/3279) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix syntax nits in Maintainers file [\#3268](https://github.com/chef/chef/pull/3268) ([thommay](https://github.com/thommay))
- send message with Severity to syslog [\#3265](https://github.com/chef/chef/pull/3265) ([sawanoboly](https://github.com/sawanoboly))
- Use the same python interpreter as yum when possible [\#3166](https://github.com/chef/chef/pull/3166) ([stevendanna](https://github.com/stevendanna))

## [12.4.0.dev.0](https://github.com/chef/chef/tree/12.4.0.dev.0) (2015-04-22)
[Full Changelog](https://github.com/chef/chef/compare/11.18.8...12.4.0.dev.0)

**Merged pull requests:**

- 12.4.0.dev.0 for master [\#3254](https://github.com/chef/chef/pull/3254) ([jaym](https://github.com/jaym))

## [11.18.8](https://github.com/chef/chef/tree/11.18.8) (2015-04-22)
[Full Changelog](https://github.com/chef/chef/compare/12.3.0.rc.0...11.18.8)

**Closed issues:**

- chef-client fails to start on sles 10 with floating point exception. [\#3245](https://github.com/chef/chef/issues/3245)
- Potential issue with deprecated `command` for script resources [\#3244](https://github.com/chef/chef/issues/3244)
- Cannot save node to server: cannot encode to UTF-8 [\#3216](https://github.com/chef/chef/issues/3216)

**Merged pull requests:**

- prepare 11.18.8 [\#3259](https://github.com/chef/chef/pull/3259) ([thommay](https://github.com/thommay))

## [12.3.0.rc.0](https://github.com/chef/chef/tree/12.3.0.rc.0) (2015-04-21)
[Full Changelog](https://github.com/chef/chef/compare/12.2.1...12.3.0.rc.0)

**Implemented enhancements:**

- Reboot\_pending? does not detect reboots from the windows\_reboot resource [\#1925](https://github.com/chef/chef/issues/1925)

**Fixed bugs:**

- Directory resource fails due to Insufficient Permissions [\#3164](https://github.com/chef/chef/issues/3164)
- knife search and DSL search\(\) method hangs [\#3099](https://github.com/chef/chef/issues/3099)
- Chef 12 windows service provider assumes windows\_service resource [\#3071](https://github.com/chef/chef/issues/3071)
- chef-apply with no arguments gives a confusing error message [\#1882](https://github.com/chef/chef/issues/1882)
- For knife ssh: Do not try to use item\[:cloud\]\[:public\_hostname\] for the hostname if it is empty [\#3131](https://github.com/chef/chef/pull/3131) ([eherot](https://github.com/eherot))

**Closed issues:**

- 12.0.3 cookbook\_path evaluates backwards [\#3225](https://github.com/chef/chef/issues/3225)
- knife\[:secret\] option does not work with chef version 12.2.1 [\#3223](https://github.com/chef/chef/issues/3223)
- File resources touch files at each run, causing jboss to redeploy. [\#3184](https://github.com/chef/chef/issues/3184)
- Chef - Installation Script \(install.sh\) & CentOS 7.1 [\#3174](https://github.com/chef/chef/issues/3174)
- centos 7.1 image request [\#3173](https://github.com/chef/chef/issues/3173)
- knife delete issue [\#3171](https://github.com/chef/chef/issues/3171)
- Question: Font Icon for chef logo [\#3167](https://github.com/chef/chef/issues/3167)
- Issues with version 12.2.0 [\#3163](https://github.com/chef/chef/issues/3163)
- \[chef-client\] failing on action start [\#3159](https://github.com/chef/chef/issues/3159)
- chef-client 12.2.0 fails to start on CentOS 7 [\#3158](https://github.com/chef/chef/issues/3158)
- SmartOS "pkgin install" failing to get proper package name [\#3112](https://github.com/chef/chef/issues/3112)
- json\_compat unit tests cause systemstackerror on freebsd 10.1 i386 [\#3101](https://github.com/chef/chef/issues/3101)
- chef-solo always throwing "invalid metadata" exceptions about 'name' attribute, even though it's included. [\#2619](https://github.com/chef/chef/issues/2619)
- rpm\_package fails to install with conflicts [\#1915](https://github.com/chef/chef/issues/1915)
- Attributes don't Deep Merge at the same precedence level [\#1911](https://github.com/chef/chef/issues/1911)
- Silent installation using windows\_package resource [\#1891](https://github.com/chef/chef/issues/1891)
- Chef Server WebUI - Error while displaying cookbook with UTF-8 chars in markdown files [\#1878](https://github.com/chef/chef/issues/1878)
- 'knife winrm' doesn't support hosts with underscore '\_' in name [\#1858](https://github.com/chef/chef/issues/1858)
- Passing parameters to windows\_package resource. [\#1857](https://github.com/chef/chef/issues/1857)
- Enhancement: Pin 'Latest Frozen' cookbook version in environment [\#1794](https://github.com/chef/chef/issues/1794)

**Merged pull requests:**

- Reduce size of nested JSON test to 252 deep [\#3247](https://github.com/chef/chef/pull/3247) ([btm](https://github.com/btm))
- Unit testify shell\_spec [\#3238](https://github.com/chef/chef/pull/3238) ([jaym](https://github.com/jaym))
- Fix failing specs [\#3236](https://github.com/chef/chef/pull/3236) ([jaym](https://github.com/jaym))
- New bundler released [\#3222](https://github.com/chef/chef/pull/3222) ([jaym](https://github.com/jaym))
- Changelog for PR\#3051 [\#3221](https://github.com/chef/chef/pull/3221) ([jaymzh](https://github.com/jaymzh))
- Pin bundler to 1.9.2 in appveyor.yml [\#3220](https://github.com/chef/chef/pull/3220) ([jaym](https://github.com/jaym))
- explicitly require node presenter [\#3217](https://github.com/chef/chef/pull/3217) ([thommay](https://github.com/thommay))
- Chef Key Object [\#3214](https://github.com/chef/chef/pull/3214) ([tylercloke](https://github.com/tylercloke))
- Fixes 2140 - Honor Proxy from Env [\#3213](https://github.com/chef/chef/pull/3213) ([jonsmorrow](https://github.com/jonsmorrow))
- Awesome Community Chefs [\#3210](https://github.com/chef/chef/pull/3210) ([nathenharvey](https://github.com/nathenharvey))
- Missing require \(require what you use\) [\#3208](https://github.com/chef/chef/pull/3208) ([jkeiser](https://github.com/jkeiser))
- Volunteer myself as FreeBSD maintainer. [\#3181](https://github.com/chef/chef/pull/3181) ([Aevin1387](https://github.com/Aevin1387))
- Add minimal ohai mode option flag [\#3162](https://github.com/chef/chef/pull/3162) ([danielsdeleo](https://github.com/danielsdeleo))
- Initial socketless local mode [\#3160](https://github.com/chef/chef/pull/3160) ([danielsdeleo](https://github.com/danielsdeleo))
- Ensure that a search query makes progress [\#3135](https://github.com/chef/chef/pull/3135) ([tomhughes](https://github.com/tomhughes))
- \[WIP\] Switch MAINTAINERS to be a TOML doc [\#3114](https://github.com/chef/chef/pull/3114) ([thommay](https://github.com/thommay))
- Reduce size of json nested entries [\#3102](https://github.com/chef/chef/pull/3102) ([btm](https://github.com/btm))
- add resource\_resolver and resource\_priority\_map [\#3077](https://github.com/chef/chef/pull/3077) ([lamont-granquist](https://github.com/lamont-granquist))
- Allow knife status to filter by environment [\#3067](https://github.com/chef/chef/pull/3067) ([thommay](https://github.com/thommay))
- Load LaunchAgents as console user, adding plist and session\_type options [\#3051](https://github.com/chef/chef/pull/3051) ([mikedodge04](https://github.com/mikedodge04))

## [12.2.1](https://github.com/chef/chef/tree/12.2.1) (2015-03-27)
[Full Changelog](https://github.com/chef/chef/compare/12.2.0...12.2.1)

**Closed issues:**

- chef-client 12.2.0 fails to start without HOME environment variable [\#3153](https://github.com/chef/chef/issues/3153)
- Specifying Version for yum\_package reports "up to date", but is still old version. [\#2778](https://github.com/chef/chef/issues/2778)

**Merged pull requests:**

- Not consistent behavior of methods `default\_action` in `Chef::Resource::LWRPBase` class and `action` in `Chef::Resource` class. [\#3156](https://github.com/chef/chef/pull/3156) ([Kasen](https://github.com/Kasen))
- Fix bug where unset HOME would cause chef to crash [\#3154](https://github.com/chef/chef/pull/3154) ([jaym](https://github.com/jaym))

## [12.2.0](https://github.com/chef/chef/tree/12.2.0) (2015-03-26)
[Full Changelog](https://github.com/chef/chef/compare/12.2.0.rc.2...12.2.0)

**Closed issues:**

- chef-client doesn't sync the cookbook [\#3148](https://github.com/chef/chef/issues/3148)

**Merged pull requests:**

- Use opscode.com rather than chef.io in the bootstrap script. [\#3118](https://github.com/chef/chef/pull/3118) ([stevendanna](https://github.com/stevendanna))
- Fix openbsd package provider [\#3109](https://github.com/chef/chef/pull/3109) ([jaym](https://github.com/jaym))
- Change all accesses to ENV\['HOME'\] or ~ to PathHelper.home instead. [\#3088](https://github.com/chef/chef/pull/3088) ([ksubrama](https://github.com/ksubrama))
- Add --exit-on-error option to knife ssh [\#2941](https://github.com/chef/chef/pull/2941) ([ryancragun](https://github.com/ryancragun))
- DscResource in core chef [\#2881](https://github.com/chef/chef/pull/2881) ([jaym](https://github.com/jaym))

## [12.2.0.rc.2](https://github.com/chef/chef/tree/12.2.0.rc.2) (2015-03-26)
[Full Changelog](https://github.com/chef/chef/compare/12.2.0.rc.1...12.2.0.rc.2)

**Closed issues:**

- Chef fails to restart Apache after Apache is manually stopped [\#3140](https://github.com/chef/chef/issues/3140)
- chef-client service fails to start on Debian 8 \(jessie\) [\#3063](https://github.com/chef/chef/issues/3063)
- Knife Conatiner  [\#3056](https://github.com/chef/chef/issues/3056)
- From chef-client 12.1.0, yum package name completion is not effective when specify a version. [\#3030](https://github.com/chef/chef/issues/3030)

**Merged pull requests:**

- Revert nillable resource attributes [\#3147](https://github.com/chef/chef/pull/3147) ([jaym](https://github.com/jaym))
- Fixed bug where module\_name would return an object instead of string [\#3144](https://github.com/chef/chef/pull/3144) ([jaym](https://github.com/jaym))

## [12.2.0.rc.1](https://github.com/chef/chef/tree/12.2.0.rc.1) (2015-03-25)
[Full Changelog](https://github.com/chef/chef/compare/12.2.0.rc.0...12.2.0.rc.1)

**Closed issues:**

- cmdlet.rb is broken on PS 2 [\#3137](https://github.com/chef/chef/issues/3137)
- Cron broken on solaris [\#3136](https://github.com/chef/chef/issues/3136)
- chef-server-ctl says user already exists when list-users shows otherwise [\#3132](https://github.com/chef/chef/issues/3132)
- add a key "OTHER INFO" key in metadata.rb file [\#3129](https://github.com/chef/chef/issues/3129)

**Merged pull requests:**

- Policyfile erchef integration [\#3142](https://github.com/chef/chef/pull/3142) ([danielsdeleo](https://github.com/danielsdeleo))
- Prepare 12.2.0.rc.1 [\#3141](https://github.com/chef/chef/pull/3141) ([jaym](https://github.com/jaym))
- Use unix specific provider for cron on solaris [\#3139](https://github.com/chef/chef/pull/3139) ([jaym](https://github.com/jaym))
- Disable Cmdlet tests on old versions of powershell [\#3138](https://github.com/chef/chef/pull/3138) ([jaym](https://github.com/jaym))

## [12.2.0.rc.0](https://github.com/chef/chef/tree/12.2.0.rc.0) (2015-03-24)
[Full Changelog](https://github.com/chef/chef/compare/12.1.2...12.2.0.rc.0)

**Implemented enhancements:**

- Windows Service identity configuration \(from CHEF-4921\) [\#1797](https://github.com/chef/chef/issues/1797)
- Metadata should support a source url [\#1776](https://github.com/chef/chef/issues/1776)
- Chef-client should support unattended upgrades regardless of init system [\#1691](https://github.com/chef/chef/issues/1691)

**Fixed bugs:**

- OpenBSD package provider installation issues [\#3096](https://github.com/chef/chef/issues/3096)
- knife cookbook upload fails when user env:homedrive is a network share [\#2939](https://github.com/chef/chef/issues/2939)
- Link resource does not support lazy attribute eval on target\_file [\#1767](https://github.com/chef/chef/issues/1767)
- mount resource ignores options on remount [\#1699](https://github.com/chef/chef/issues/1699)
- knife download fails with "undefined method `child' for nil:NilClass" [\#1509](https://github.com/chef/chef/issues/1509)
- alter messages generated by group provider to show group\_name [\#3094](https://github.com/chef/chef/pull/3094) ([bahamas10](https://github.com/bahamas10))

**Closed issues:**

- package fails to install local rpm [\#3122](https://github.com/chef/chef/issues/3122)
- set\_file\_line resource [\#3116](https://github.com/chef/chef/issues/3116)
- No version specified, and no candidate version available for [\#3113](https://github.com/chef/chef/issues/3113)
- High version client work for low version server ? [\#3110](https://github.com/chef/chef/issues/3110)
- easy\_install from source does not work when specifying source [\#3105](https://github.com/chef/chef/issues/3105)
- knife arguments in Windows need protection if ampersand is in the string [\#3026](https://github.com/chef/chef/issues/3026)
- problems with Audit mode on Windows [\#2973](https://github.com/chef/chef/issues/2973)
- Error executing action `run` on resource 'execute\[verify-system-status\]' [\#1770](https://github.com/chef/chef/issues/1770)

**Merged pull requests:**

- prepare 12.2.0 RC 0 [\#3128](https://github.com/chef/chef/pull/3128) ([jaym](https://github.com/jaym))
- Jdm/dsc changelog [\#3127](https://github.com/chef/chef/pull/3127) ([jaym](https://github.com/jaym))
- DSC Resource release notes [\#3117](https://github.com/chef/chef/pull/3117) ([jaym](https://github.com/jaym))
- bumping ffi-yajl to pick up 2.x [\#3098](https://github.com/chef/chef/pull/3098) ([lamont-granquist](https://github.com/lamont-granquist))
- Change the default value of syntax cache to the latest value. [\#3093](https://github.com/chef/chef/pull/3093) ([ksubrama](https://github.com/ksubrama))
- Fix faulty umask logic used in spec tests. [\#3086](https://github.com/chef/chef/pull/3086) ([ksubrama](https://github.com/ksubrama))
- Remove UNIX-specific assumptions from audit runner. [\#3048](https://github.com/chef/chef/pull/3048) ([juliandunn](https://github.com/juliandunn))
- Clarify warning [\#2976](https://github.com/chef/chef/pull/2976) ([pburkholder](https://github.com/pburkholder))

## [12.1.2](https://github.com/chef/chef/tree/12.1.2) (2015-03-17)
[Full Changelog](https://github.com/chef/chef/compare/12.1.1...12.1.2)

**Implemented enhancements:**

- "knife status" does not filter by environment with -E [\#3031](https://github.com/chef/chef/issues/3031)
- Confusing error message when attempting `knife cookbook upload -a` on an empty cookbook dir [\#2391](https://github.com/chef/chef/issues/2391)
- Solaris mount resource enhancements [\#1737](https://github.com/chef/chef/issues/1737)
- Possible enhancement: catch \#exec [\#1689](https://github.com/chef/chef/issues/1689)
- Don't crash when chef-zero port is already bound [\#1521](https://github.com/chef/chef/issues/1521)

**Fixed bugs:**

- Why output `new\_run\_list.inspect` in chef-client logs? [\#2863](https://github.com/chef/chef/issues/2863)
- Template resource fails updating some existing files [\#1992](https://github.com/chef/chef/issues/1992)
- Solaris mount resource enhancements [\#1737](https://github.com/chef/chef/issues/1737)
- log resource should be whyrun safe [\#1690](https://github.com/chef/chef/issues/1690)
- "knife cookbook upload -a" tries to make an API request even if the cookbook\_path is invalid [\#1683](https://github.com/chef/chef/issues/1683)
- /etc/chef/trusted\_certs Addition Issue During Chef Run [\#1653](https://github.com/chef/chef/issues/1653)
- --force option is invalid, but knife client delete tells you to use it [\#1652](https://github.com/chef/chef/issues/1652)
- knife upload no longer uploads without metadata.rb but does not support metadata.json [\#1626](https://github.com/chef/chef/issues/1626)
- powershell\_script: flags is confusing and hard to use [\#1604](https://github.com/chef/chef/issues/1604)
- user provider action :remove should support "userdel --force" [\#1601](https://github.com/chef/chef/issues/1601)
- Service provider needs to be able to handle services on Ubuntu 13.10+ [\#1587](https://github.com/chef/chef/issues/1587)
- Chef 12.1 not allowing control of exit codes with exceptions [\#3054](https://github.com/chef/chef/issues/3054)

**Closed issues:**

- Chef 12 'chef-server-ctl upgrade' fails on RHEL 5.11 [\#3072](https://github.com/chef/chef/issues/3072)
- undefined method `verify' for Chef::Resource::Template [\#3070](https://github.com/chef/chef/issues/3070)
- group functional test hanging on FreeBSD 10 [\#3068](https://github.com/chef/chef/issues/3068)
- partial search is returning data in different format than 12.0.3 [\#3047](https://github.com/chef/chef/issues/3047)
- service support not fully working [\#2458](https://github.com/chef/chef/issues/2458)
- \[Git resource\] Provide a way to specify git config environment parameters [\#2437](https://github.com/chef/chef/issues/2437)
- knife bootstrap - issue with zookeeper [\#2413](https://github.com/chef/chef/issues/2413)
- knife bootstrap - error installing git-daemon [\#2412](https://github.com/chef/chef/issues/2412)
- Implement Chef Vault support for knife bootstrap [\#1887](https://github.com/chef/chef/issues/1887)
- Compat break in audit-mode changes [\#3078](https://github.com/chef/chef/issues/3078)
- Chef 12.1.1 yum\_package silently fails [\#3059](https://github.com/chef/chef/issues/3059)
- Homebrew Cask install fails [\#3022](https://github.com/chef/chef/issues/3022)

**Merged pull requests:**

- Revert "Macports provider - provide package" [\#3087](https://github.com/chef/chef/pull/3087) ([btm](https://github.com/btm))
- Mark failing test as pending on versions of powershell \< 4 [\#3069](https://github.com/chef/chef/pull/3069) ([jaym](https://github.com/jaym))
- make audit terminology consistent [\#3064](https://github.com/chef/chef/pull/3064) ([juliandunn](https://github.com/juliandunn))
- Change inspect to string to be more human-readable. [\#3061](https://github.com/chef/chef/pull/3061) ([cmluciano](https://github.com/cmluciano))
- Cleanup user directories if state was leftover from previous run [\#3060](https://github.com/chef/chef/pull/3060) ([jaym](https://github.com/jaym))
- dscl specs should only run on mac [\#3052](https://github.com/chef/chef/pull/3052) ([jaym](https://github.com/jaym))
- Fix dscl issues for osx [\#3050](https://github.com/chef/chef/pull/3050) ([jaym](https://github.com/jaym))
- Propose myself as an EL maintainer. [\#3049](https://github.com/chef/chef/pull/3049) ([jaymzh](https://github.com/jaymzh))
- Use dev version in master [\#3045](https://github.com/chef/chef/pull/3045) ([jaym](https://github.com/jaym))
- Chef-DK nightlies on debian and el6 have been failing on these timing-based tests, doing a quick fix [\#3039](https://github.com/chef/chef/pull/3039) ([tyler-ball](https://github.com/tyler-ball))
- chef\_gem\_compile\_time's nil is the same as true [\#3029](https://github.com/chef/chef/pull/3029) ([cl-lab-k](https://github.com/cl-lab-k))
- add specs for nilling deploy parameters [\#3004](https://github.com/chef/chef/pull/3004) ([lamont-granquist](https://github.com/lamont-granquist))

## [12.1.1](https://github.com/chef/chef/tree/12.1.1) (2015-03-07)
[Full Changelog](https://github.com/chef/chef/compare/12.1.0...12.1.1)

**Fixed bugs:**

- Chef fails to create directories when it has permission to do so [\#1936](https://github.com/chef/chef/issues/1936)
- Dependency Errors with RPM 5.4.9 & chef-10.32.2-1.el6.x86\_64.rpm [\#1557](https://github.com/chef/chef/issues/1557)
- Lazy attributes evaluation context [\#1536](https://github.com/chef/chef/issues/1536)
- chef-client daemon holds onto file descriptor for rotated log [\#1523](https://github.com/chef/chef/issues/1523)
- Overriding an attribute with nil doesn't work during deep merge [\#1507](https://github.com/chef/chef/issues/1507)

**Closed issues:**

- knife search show specific attribute \(-a\) broken on 12.1.0  [\#3041](https://github.com/chef/chef/issues/3041)
- Implement automated CLA-signing process [\#3032](https://github.com/chef/chef/issues/3032)
- package resource no longer supports `action :nothing` in chef 12.1 release [\#3009](https://github.com/chef/chef/issues/3009)
- docker /etc/hosts, /etc/resolv.conf udpates =\> Chef-Apply does not work with template resources [\#3005](https://github.com/chef/chef/issues/3005)
- chef-sync broken since chef-server-core 12.0.4 [\#2993](https://github.com/chef/chef/issues/2993)
- Chef run timeout on windows [\#2985](https://github.com/chef/chef/issues/2985)
- disable stack trace when audits fail [\#2754](https://github.com/chef/chef/issues/2754)
- FreeBSD service fails to set if service\_enabled is duplicated in comments [\#1791](https://github.com/chef/chef/issues/1791)
- easy\_install provider requires Chef::Mixin::Command [\#3011](https://github.com/chef/chef/issues/3011)
- package resource fails to install local package specified with source attribute [\#3008](https://github.com/chef/chef/issues/3008)

**Merged pull requests:**

- 12.1.1 Release [\#3044](https://github.com/chef/chef/pull/3044) ([jaym](https://github.com/jaym))
- 12.1.1 changelog [\#3043](https://github.com/chef/chef/pull/3043) ([jaym](https://github.com/jaym))
- Remove @thommay as Core Maintainer [\#3021](https://github.com/chef/chef/pull/3021) ([nathenharvey](https://github.com/nathenharvey))
- Updated Changelog [\#3017](https://github.com/chef/chef/pull/3017) ([jaym](https://github.com/jaym))
- make appveyor retry bundle install [\#3015](https://github.com/chef/chef/pull/3015) ([lamont-granquist](https://github.com/lamont-granquist))
- Adding Chef::Command::Mixin back into the package provider [\#3012](https://github.com/chef/chef/pull/3012) ([jaym](https://github.com/jaym))
- Add /lib/chef/ to backtrace exclusion patterns for audit mode [\#3001](https://github.com/chef/chef/pull/3001) ([kmacgugan](https://github.com/kmacgugan))
- provider\_resolver migration from provider\_mapping [\#2970](https://github.com/chef/chef/pull/2970) ([lamont-granquist](https://github.com/lamont-granquist))
- Proposing myself as LT for RHEL and Core [\#2950](https://github.com/chef/chef/pull/2950) ([jonlives](https://github.com/jonlives))
- propose myself as a lieutenant [\#2949](https://github.com/chef/chef/pull/2949) ([thommay](https://github.com/thommay))
- Add myself as a maintainer [\#2948](https://github.com/chef/chef/pull/2948) ([thommay](https://github.com/thommay))
- Fix data fetching when explicit attributes are passed [\#3019](https://github.com/chef/chef/pull/3019) ([ranjib](https://github.com/ranjib))
- Allow people to pass in a 'source' to package rules [\#3013](https://github.com/chef/chef/pull/3013) ([jaymzh](https://github.com/jaymzh))

## [12.1.0](https://github.com/chef/chef/tree/12.1.0) (2015-03-02)
[Full Changelog](https://github.com/chef/chef/compare/12.1.0.rc.0...12.1.0)

**Implemented enhancements:**

- Release and pull in new Ohai for chef-client 12.0.4 [\#2673](https://github.com/chef/chef/issues/2673)
- Chef 12.2 Provider Resolver changes [\#2383](https://github.com/chef/chef/issues/2383)
- Knife bootstrap should create initial node and API client, not use the validator [\#1886](https://github.com/chef/chef/issues/1886)
- Multipackge support [\#2692](https://github.com/chef/chef/pull/2692) ([jaymzh](https://github.com/jaymzh))
- Fail execute test if it takes too long [\#2686](https://github.com/chef/chef/pull/2686) ([jaym](https://github.com/jaym))

**Fixed bugs:**

- dsc\_script Fails to Pass Along timeout Parameter [\#2831](https://github.com/chef/chef/issues/2831)
- Chef 12 node attributes missing when using Ruby ":" string syntax instead of quotes [\#2712](https://github.com/chef/chef/issues/2712)
- Chef Solo 12.x '--no-fork' is broken [\#2709](https://github.com/chef/chef/issues/2709)
- Composed attributes not working for specific syntax in Chef 12 [\#2700](https://github.com/chef/chef/issues/2700)
- Package resource : Support non-EN locale in Chef 12 [\#2695](https://github.com/chef/chef/issues/2695)
- Chef client 12 does not execute guard resource in why run mode [\#2694](https://github.com/chef/chef/issues/2694)
- macports provider has incorrect filters [\#2691](https://github.com/chef/chef/issues/2691)
- macports provider doesn't provide package [\#2690](https://github.com/chef/chef/issues/2690)
- Resource guard mistake [\#2683](https://github.com/chef/chef/issues/2683)
- Partial Search in Chef 12 not responding according to API [\#2679](https://github.com/chef/chef/issues/2679)
- Chef 12.0.x and ubuntu 14.04 32 bit systems - unable to execute /usr/bin/chef-client: Too many levels of symbolic links [\#2677](https://github.com/chef/chef/issues/2677)
- rpm\_package provider no candidate version error [\#2663](https://github.com/chef/chef/issues/2663)
- CHEF-4372: symlink\_before\_migrate should correctly take nil argument [\#2455](https://github.com/chef/chef/issues/2455)
- Chef 12.2 Provider Resolver changes [\#2383](https://github.com/chef/chef/issues/2383)
- FIX data\_bag\_item.rb:161: warning: circular argument reference - data\_bag [\#2707](https://github.com/chef/chef/pull/2707) ([habermann24](https://github.com/habermann24))
- Make search with filtering match partial\_search. [\#2687](https://github.com/chef/chef/pull/2687) ([mcquin](https://github.com/mcquin))
- Properly load FreeBSD service status [\#2277](https://github.com/chef/chef/pull/2277) ([liseki](https://github.com/liseki))
- Ensure why-run of a FreeBSD service missing init script does not fail [\#2270](https://github.com/chef/chef/pull/2270) ([liseki](https://github.com/liseki))

**Closed issues:**

- \[Question\] Any advice on customize remote\_file download process? [\#2987](https://github.com/chef/chef/issues/2987)
- knife poisons stdout, making pipelining hard [\#2980](https://github.com/chef/chef/issues/2980)
- unable to bootstrap a node.  [\#2975](https://github.com/chef/chef/issues/2975)
- Chef webui login error [\#2972](https://github.com/chef/chef/issues/2972)
- Error installing chef OS X [\#2971](https://github.com/chef/chef/issues/2971)
- sudo chef-server-ctl reconfigure [\#2968](https://github.com/chef/chef/issues/2968)
- gem\_package options per documentation throws ArgumentError [\#2963](https://github.com/chef/chef/issues/2963)
- dsc\_script fails for configuration with dependent resources [\#2221](https://github.com/chef/chef/issues/2221)
- backport \#2753 to 12.0.4 [\#2757](https://github.com/chef/chef/issues/2757)
- Release Mixlib-Shellout with Windows timeout fixes [\#2685](https://github.com/chef/chef/issues/2685)
- dsc\_script resource will not run if what if run fails [\#2651](https://github.com/chef/chef/issues/2651)
- Release a Chef 12 compatible version of knife-windows and add it to migration notes. [\#2577](https://github.com/chef/chef/issues/2577)
- Chef Client 12 introduces error: NoMethodError undefined method `new' for Chrome:Module [\#2575](https://github.com/chef/chef/issues/2575)
- Update Chef Client 12 migration doc with the updated version of minitest-chef-handler [\#2569](https://github.com/chef/chef/issues/2569)
- Release windows cookbook and update Chef Client 12 migration notes with instructions. [\#2568](https://github.com/chef/chef/issues/2568)
- knife bootstrap - curve name mismatched  [\#1908](https://github.com/chef/chef/issues/1908)

**Merged pull requests:**

- Cherry picking changes from master [\#3002](https://github.com/chef/chef/pull/3002) ([jaym](https://github.com/jaym))
- Pr 2988 [\#2999](https://github.com/chef/chef/pull/2999) ([jaym](https://github.com/jaym))
- Adding Chef::Mixin::Command back to Package provider base class [\#2997](https://github.com/chef/chef/pull/2997) ([jaym](https://github.com/jaym))
- Update rel notes, doc changes, and changelog for windows service changes [\#2995](https://github.com/chef/chef/pull/2995) ([jaym](https://github.com/jaym))
- Fix specs on OSX [\#2992](https://github.com/chef/chef/pull/2992) ([jaym](https://github.com/jaym))
- Loosening up some gem dependencies so there are not conflicts in chef-dk [\#2990](https://github.com/chef/chef/pull/2990) ([tyler-ball](https://github.com/tyler-ball))
- Chef client running as a windows service should have a configurable timeout [\#2986](https://github.com/chef/chef/pull/2986) ([jaym](https://github.com/jaym))
- Missing require - causes `missing Constant` error when files are loaded in unexpected order [\#2983](https://github.com/chef/chef/pull/2983) ([tyler-ball](https://github.com/tyler-ball))
- Send search count to stderr [\#2982](https://github.com/chef/chef/pull/2982) ([danielsdeleo](https://github.com/danielsdeleo))
- update mode if group or owner change to keep suid bit [\#2967](https://github.com/chef/chef/pull/2967) ([minshallj](https://github.com/minshallj))
- Nominate promoting myself to OS X Lt. [\#2964](https://github.com/chef/chef/pull/2964) ([jtimberman](https://github.com/jtimberman))
- nillable deploy resource + nillable LWRP args [\#2956](https://github.com/chef/chef/pull/2956) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/lint fixes [\#2954](https://github.com/chef/chef/pull/2954) ([lamont-granquist](https://github.com/lamont-granquist))
- fix dpkg regression [\#2942](https://github.com/chef/chef/pull/2942) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/fix multipackage [\#2922](https://github.com/chef/chef/pull/2922) ([lamont-granquist](https://github.com/lamont-granquist))
- Completing tests for https://github.com/chef/chef/pull/2310 [\#2900](https://github.com/chef/chef/pull/2900) ([tyler-ball](https://github.com/tyler-ball))
- Finishing tests for https://github.com/chef/chef/pull/2338 [\#2893](https://github.com/chef/chef/pull/2893) ([tyler-ball](https://github.com/tyler-ball))
- Fix error message in yum provider \(related to multipackage refactor\) [\#2862](https://github.com/chef/chef/pull/2862) ([jaymzh](https://github.com/jaymzh))
- Fix up powershell script [\#2774](https://github.com/chef/chef/pull/2774) ([jaym](https://github.com/jaym))
- Suppress SSL warnings if I know what I'm doing [\#2762](https://github.com/chef/chef/pull/2762) ([jaymzh](https://github.com/jaymzh))
- Adding tests for https://github.com/opscode/chef/pull/2688 [\#2746](https://github.com/chef/chef/pull/2746) ([tyler-ball](https://github.com/tyler-ball))
- OS X user provider - fix exception if no salt is found [\#2724](https://github.com/chef/chef/pull/2724) ([patcox](https://github.com/patcox))
- bugfix dscl provider [\#2723](https://github.com/chef/chef/pull/2723) ([patcox](https://github.com/patcox))
- Macports provider - provide package [\#2722](https://github.com/chef/chef/pull/2722) ([patcox](https://github.com/patcox))
- correct filters for MacPorts package provider [\#2721](https://github.com/chef/chef/pull/2721) ([patcox](https://github.com/patcox))
- Removing ole\_initialize/uninitialize [\#2684](https://github.com/chef/chef/pull/2684) ([jaym](https://github.com/jaym))
- Fix bug where errored parsing from what-if output causes resource to be considered converged [\#2654](https://github.com/chef/chef/pull/2654) ([jaym](https://github.com/jaym))
- Lcg/script resource fixes [\#2508](https://github.com/chef/chef/pull/2508) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/1923 [\#2030](https://github.com/chef/chef/pull/2030) ([lamont-granquist](https://github.com/lamont-granquist))

## [12.1.0.rc.0](https://github.com/chef/chef/tree/12.1.0.rc.0) (2015-02-20)
[Full Changelog](https://github.com/chef/chef/compare/11.18.6...12.1.0.rc.0)

**Fixed bugs:**

- The `create\_url` in lib/chef/http.rb needs to handle URI \(the scheme part\) in a case-insensitive matter [\#2500](https://github.com/chef/chef/issues/2500)
- Getting exit codes from PowerShell scripts for powershell\_script resources [\#2348](https://github.com/chef/chef/issues/2348)
- Inconsistent knife from file globbing [\#2173](https://github.com/chef/chef/issues/2173)
- Node::Attribute inspect vs to\_s problem [\#1562](https://github.com/chef/chef/issues/1562)
- Fix require statement on knife ssl fetch [\#2739](https://github.com/chef/chef/pull/2739) ([ranjib](https://github.com/ranjib))

**Closed issues:**

- New attributes from Chef 12 \(source\_url and source\_url\) crash Chef \< 12 [\#2937](https://github.com/chef/chef/issues/2937)
- org-user-add -a flag does not give billing-admin rights. [\#2936](https://github.com/chef/chef/issues/2936)
- warning: circular argument reference - data\_bag  in chef/data\_bag\_item.rb:161 [\#2923](https://github.com/chef/chef/issues/2923)
- Unable to disable ohai plugins in /etc/chef-server/chef-server.rb when running 'chef-server-ctl reconfigure' [\#2920](https://github.com/chef/chef/issues/2920)
- Gem\_package could not resolve dependencies [\#2917](https://github.com/chef/chef/issues/2917)
- Multipackage apt installs containing virtual packages are broken [\#2914](https://github.com/chef/chef/issues/2914)
- Chef DK tools do not work in Git bash on Windows after installation in non-default directory [\#2906](https://github.com/chef/chef/issues/2906)
- Does open source chef server 11.0.12 support pushy? [\#2902](https://github.com/chef/chef/issues/2902)
- bootstrap-latest.tar.gz is not compatible with Chef 12.x [\#2895](https://github.com/chef/chef/issues/2895)
- chef-client -r runlistitem1,runlistitem2 doesn't work in powershell console [\#2891](https://github.com/chef/chef/issues/2891)
- Knife data bags from file should autocreate data bags [\#2884](https://github.com/chef/chef/issues/2884)
- "FATAL: Wrong number of arguments" running chef-server-ctl user-create during Chef Server installation [\#2880](https://github.com/chef/chef/issues/2880)
- Disable redirect not possible 'enable\_non\_ssl' does not work [\#2874](https://github.com/chef/chef/issues/2874)
- Chef 12 Attribute Regression [\#2871](https://github.com/chef/chef/issues/2871)
- Chef hangs when starting client [\#2870](https://github.com/chef/chef/issues/2870)
- Windows chef-client service should be run as Administrator [\#2861](https://github.com/chef/chef/issues/2861)
- Bootstrapping a windows node from a windows workstation fails with a SSL error [\#2859](https://github.com/chef/chef/issues/2859)
- platform\_version required by spec\_helper [\#2843](https://github.com/chef/chef/issues/2843)
- error message for resource cloning is wrong [\#2838](https://github.com/chef/chef/issues/2838)
- Knife bootstrap does not work with AIX [\#2836](https://github.com/chef/chef/issues/2836)
- chef-client 11.18.0 can't verify s3 certs [\#2786](https://github.com/chef/chef/issues/2786)
- knife cookbook site unshare redirect fails due to old supermarket.getchef.com domain. [\#2777](https://github.com/chef/chef/issues/2777)
- Centos 6.5 Service process Restart: process dead but pid file exists  [\#2764](https://github.com/chef/chef/issues/2764)
- Update audit DSL method names [\#2755](https://github.com/chef/chef/issues/2755)
- node attribute method\_missing gives different results to node\['attribute'\] in Chef 12.0.3  [\#2745](https://github.com/chef/chef/issues/2745)
- CHEF-899: Service can't depend on config file that restarts service [\#2719](https://github.com/chef/chef/issues/2719)
- service providers don't respect documented \*\_command attributes [\#2474](https://github.com/chef/chef/issues/2474)
- chef-client systemd PIDFile Option Does Not Take Environment Variable [\#2360](https://github.com/chef/chef/issues/2360)
- Remote file support for ftp protocol [\#2344](https://github.com/chef/chef/issues/2344)
- Resource execute rights problem [\#2342](https://github.com/chef/chef/issues/2342)
- systemctl path in systemd service provider does not work on Arch Linux [\#2340](https://github.com/chef/chef/issues/2340)
- knife\[:ssh\_attribute\] in knife.rb seems to be ignored [\#2325](https://github.com/chef/chef/issues/2325)
- access keys attribute in knife show incorrect information [\#1974](https://github.com/chef/chef/issues/1974)

**Merged pull requests:**

- Merging master into 12-stable [\#2958](https://github.com/chef/chef/pull/2958) ([jaym](https://github.com/jaym))
- Chef 12.1.0 [\#2952](https://github.com/chef/chef/pull/2952) ([jaym](https://github.com/jaym))
- Group spec needs to respond to shell\_out [\#2946](https://github.com/chef/chef/pull/2946) ([jaym](https://github.com/jaym))
- remove unreachable code [\#2940](https://github.com/chef/chef/pull/2940) ([lamont-granquist](https://github.com/lamont-granquist))
- Dont raise exceptions in load\_current\_resource when checking current status [\#2934](https://github.com/chef/chef/pull/2934) ([kaustubh-d](https://github.com/kaustubh-d))
- fix typo in msi provider [\#2933](https://github.com/chef/chef/pull/2933) ([andrewelizondo](https://github.com/andrewelizondo))
- forgot my md files for validatorless bootstraps [\#2928](https://github.com/chef/chef/pull/2928) ([lamont-granquist](https://github.com/lamont-granquist))
- fix aix related providers to replace popen4 with mixlib shell\_out [\#2924](https://github.com/chef/chef/pull/2924) ([btm](https://github.com/btm))
- Move supermarket.getchef.com to supermarket.chef.io [\#2918](https://github.com/chef/chef/pull/2918) ([juliandunn](https://github.com/juliandunn))
- Adding docs for all my 12.1.0 merges [\#2907](https://github.com/chef/chef/pull/2907) ([tyler-ball](https://github.com/tyler-ball))
- Updated version of \#2125 to fix CHEF-2911 [\#2905](https://github.com/chef/chef/pull/2905) ([jonlives](https://github.com/jonlives))
- rspec-3-ify all the env-run-list specs [\#2903](https://github.com/chef/chef/pull/2903) ([lamont-granquist](https://github.com/lamont-granquist))
- Improve changelog note about CHEF-3694 warnings [\#2901](https://github.com/chef/chef/pull/2901) ([juliandunn](https://github.com/juliandunn))
- Bump chef-zero dep to 4.0 [\#2899](https://github.com/chef/chef/pull/2899) ([jkeiser](https://github.com/jkeiser))
- Upload cookbooks as artifacts [\#2889](https://github.com/chef/chef/pull/2889) ([danielsdeleo](https://github.com/danielsdeleo))
- Chef Core maintainers: ++fujin [\#2888](https://github.com/chef/chef/pull/2888) ([fujin](https://github.com/fujin))
- Fix broken tests in jenkins [\#2886](https://github.com/chef/chef/pull/2886) ([jaym](https://github.com/jaym))
- dsc\_script passes timeout to lcm shellout [\#2885](https://github.com/chef/chef/pull/2885) ([jaym](https://github.com/jaym))
- Update chef-shell branding from opscode.com to chef.io [\#2879](https://github.com/chef/chef/pull/2879) ([juliandunn](https://github.com/juliandunn))
- Deprecation warnings as errors [\#2873](https://github.com/chef/chef/pull/2873) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/chef gem config option [\#2872](https://github.com/chef/chef/pull/2872) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/array name deuglification [\#2869](https://github.com/chef/chef/pull/2869) ([lamont-granquist](https://github.com/lamont-granquist))
- fix warning output [\#2864](https://github.com/chef/chef/pull/2864) ([lamont-granquist](https://github.com/lamont-granquist))
- Nominate myself as Windows Lt. [\#2857](https://github.com/chef/chef/pull/2857) ([btm](https://github.com/btm))
- Volunteer myself as a core maintainer [\#2856](https://github.com/chef/chef/pull/2856) ([btm](https://github.com/btm))
- Fixing Rspec 3.2 update.  We were overriding private APIs which changed. [\#2855](https://github.com/chef/chef/pull/2855) ([tyler-ball](https://github.com/tyler-ball))
- pin rspec to 3.1.x for now [\#2854](https://github.com/chef/chef/pull/2854) ([lamont-granquist](https://github.com/lamont-granquist))
- fix LWRP constant lookups [\#2853](https://github.com/chef/chef/pull/2853) ([lamont-granquist](https://github.com/lamont-granquist))
- Make chef-full bootstrap use chef.io URL. [\#2847](https://github.com/chef/chef/pull/2847) ([juliandunn](https://github.com/juliandunn))
- Merging https://github.com/chef/chef/pull/2698 [\#2833](https://github.com/chef/chef/pull/2833) ([tyler-ball](https://github.com/tyler-ball))
- Fixed typo in test from \#2823. [\#2829](https://github.com/chef/chef/pull/2829) ([juliandunn](https://github.com/juliandunn))
- Lcg/merges [\#2823](https://github.com/chef/chef/pull/2823) ([lamont-granquist](https://github.com/lamont-granquist))
- Convert opscode.com and getchef.com to chef.io in README [\#2822](https://github.com/chef/chef/pull/2822) ([danielsdeleo](https://github.com/danielsdeleo))
- Point appveyor badge at chef instead of opscode [\#2821](https://github.com/chef/chef/pull/2821) ([jaym](https://github.com/jaym))
- Changing Appveyor to use progress formatter [\#2820](https://github.com/chef/chef/pull/2820) ([tyler-ball](https://github.com/tyler-ball))
- Merging https://github.com/chef/chef/pull/2707 [\#2816](https://github.com/chef/chef/pull/2816) ([tyler-ball](https://github.com/tyler-ball))
- Update Changelog to reflect resolution of \#2348 [\#2813](https://github.com/chef/chef/pull/2813) ([jaym](https://github.com/jaym))
- Prepare 11.18.6 [\#2811](https://github.com/chef/chef/pull/2811) ([jaym](https://github.com/jaym))
- Can I maintain things? [\#2793](https://github.com/chef/chef/pull/2793) ([jaym](https://github.com/jaym))
- Disable win32 memory leak tests [\#2780](https://github.com/chef/chef/pull/2780) ([btm](https://github.com/btm))
- Allow dsc\_script to import dsc resources [\#2779](https://github.com/chef/chef/pull/2779) ([jaym](https://github.com/jaym))
- Update knife missing gem message for ChefDK [\#2760](https://github.com/chef/chef/pull/2760) ([troyready](https://github.com/troyready))
- Change audit DSL method controls to control\_group. [\#2758](https://github.com/chef/chef/pull/2758) ([mcquin](https://github.com/mcquin))
- Guard resources are executed in why\_run mode [\#2717](https://github.com/chef/chef/pull/2717) ([tyler-ball](https://github.com/tyler-ball))
- appveyor for 12-stable [\#2662](https://github.com/chef/chef/pull/2662) ([btm](https://github.com/btm))
- Add .mailmap for top contributors [\#2521](https://github.com/chef/chef/pull/2521) ([stevendanna](https://github.com/stevendanna))

## [11.18.6](https://github.com/chef/chef/tree/11.18.6) (2015-01-26)
[Full Changelog](https://github.com/chef/chef/compare/11.18.4...11.18.6)

**Implemented enhancements:**

- Add display\_name handling to Chef::ChefFS::DataHandler::UserDataHandler [\#2166](https://github.com/chef/chef/pull/2166) ([charlesjohnson](https://github.com/charlesjohnson))

**Fixed bugs:**

- Specify 'auto' log level in the chef-client help [\#2769](https://github.com/chef/chef/issues/2769)
- Specs fail when /etc/chef/client.rb is present and not readable. [\#2747](https://github.com/chef/chef/issues/2747)
- Chef-client local on windows give exception when trying to run cookbook: Invalid handle [\#2671](https://github.com/chef/chef/issues/2671)
- Stub reading of /etc/chef/client.rb in spec [\#2790](https://github.com/chef/chef/pull/2790) ([mcquin](https://github.com/mcquin))

**Closed issues:**

- Upstart Service Provider doesn't parse status correctly. [\#2795](https://github.com/chef/chef/issues/2795)

**Merged pull requests:**

- fix master [\#2810](https://github.com/chef/chef/pull/2810) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2448 [\#2808](https://github.com/chef/chef/pull/2808) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2431 [\#2807](https://github.com/chef/chef/pull/2807) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2411 [\#2806](https://github.com/chef/chef/pull/2806) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2406 [\#2805](https://github.com/chef/chef/pull/2805) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2398 [\#2804](https://github.com/chef/chef/pull/2804) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2393 [\#2803](https://github.com/chef/chef/pull/2803) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2212 [\#2802](https://github.com/chef/chef/pull/2802) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/2049 [\#2801](https://github.com/chef/chef/pull/2801) ([lamont-granquist](https://github.com/lamont-granquist))
- missing md file [\#2800](https://github.com/chef/chef/pull/2800) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/727 [\#2799](https://github.com/chef/chef/pull/2799) ([lamont-granquist](https://github.com/lamont-granquist))
- Policyfile Native API Support and ChefFS Policy Support [\#2797](https://github.com/chef/chef/pull/2797) ([danielsdeleo](https://github.com/danielsdeleo))
- Add lots of comments to Resource, section methods by who uses them [\#2794](https://github.com/chef/chef/pull/2794) ([jkeiser](https://github.com/jkeiser))
-  Update chef-client help with auto. [\#2771](https://github.com/chef/chef/pull/2771) ([cmluciano](https://github.com/cmluciano))
- Fix typo cab to can [\#2741](https://github.com/chef/chef/pull/2741) ([cmluciano](https://github.com/cmluciano))
- Fix typo resouces to resources [\#2716](https://github.com/chef/chef/pull/2716) ([cmluciano](https://github.com/cmluciano))
- Use the new build env on Travis [\#2489](https://github.com/chef/chef/pull/2489) ([joshk](https://github.com/joshk))

## [11.18.4](https://github.com/chef/chef/tree/11.18.4) (2015-01-23)
[Full Changelog](https://github.com/chef/chef/compare/11.18.2...11.18.4)

**Merged pull requests:**

- Prepare 11.18.4 [\#2792](https://github.com/chef/chef/pull/2792) ([jaym](https://github.com/jaym))

## [11.18.2](https://github.com/chef/chef/tree/11.18.2) (2015-01-23)
[Full Changelog](https://github.com/chef/chef/compare/11.18.0...11.18.2)

**Fixed bugs:**

- UID already exists when setting the UID option for user on Mac OS [\#2667](https://github.com/chef/chef/issues/2667)

**Closed issues:**

- chef-full bootstrap template/script should respect chef\_config\[:chef\_client\_path\] \(aka. CHEF-5115\) [\#2783](https://github.com/chef/chef/issues/2783)
- Missing FreeBSD mount non-device fstypes [\#2781](https://github.com/chef/chef/issues/2781)
- chef-simple proposal \(support for yaml like ansible\) [\#2776](https://github.com/chef/chef/issues/2776)
- chef-client encounter error about wmi-lite got \[BUG\] Segmentation fault [\#2773](https://github.com/chef/chef/issues/2773)
- rest-client version and Windows [\#2772](https://github.com/chef/chef/issues/2772)
- LDAP configuration on Open chef server [\#2765](https://github.com/chef/chef/issues/2765)
- chef-solo --no-fork broken in Chef 12.0.3 [\#2763](https://github.com/chef/chef/issues/2763)
- Chef Server 12.0.1 does not work on Ubuntu 14.04 [\#2761](https://github.com/chef/chef/issues/2761)
- upgrade chef-server 11 to 12 failes [\#2759](https://github.com/chef/chef/issues/2759)
- Leapsecond in 2015 announced [\#2718](https://github.com/chef/chef/issues/2718)
- `knife ssh check` points to incorrect chef server file location for Chef Server 12 [\#2604](https://github.com/chef/chef/issues/2604)
- Authorized but missing read permission [\#2536](https://github.com/chef/chef/issues/2536)
- Path ending in / should be prepended to resource name for file and cookbook\_file resources [\#2478](https://github.com/chef/chef/issues/2478)
- The local\_mode doesn't create node object correctly on chef 12. [\#2433](https://github.com/chef/chef/issues/2433)
- Remove the category requirement from knife [\#2099](https://github.com/chef/chef/issues/2099)

**Merged pull requests:**

- Prepare 11.18.2 release [\#2791](https://github.com/chef/chef/pull/2791) ([jaym](https://github.com/jaym))
- Fix travis badge after org rename [\#2787](https://github.com/chef/chef/pull/2787) ([mivok](https://github.com/mivok))
- Clarify where issues should be filed [\#2785](https://github.com/chef/chef/pull/2785) ([mmzyk](https://github.com/mmzyk))
- deep\_merge\_cache fixes for bugs in 12.0.0 [\#2753](https://github.com/chef/chef/pull/2753) ([lamont-granquist](https://github.com/lamont-granquist))
- make include\_recipe "::foo" use current cookbook [\#2751](https://github.com/chef/chef/pull/2751) ([lamont-granquist](https://github.com/lamont-granquist))
- Add Steven Murawski \(smurawski\) as Windows Maintainer [\#2734](https://github.com/chef/chef/pull/2734) ([smurawski](https://github.com/smurawski))
- Fixes \#2604, update location for Chef Server 12 [\#2605](https://github.com/chef/chef/pull/2605) ([jtimberman](https://github.com/jtimberman))

## [11.18.0](https://github.com/chef/chef/tree/11.18.0) (2015-01-14)
[Full Changelog](https://github.com/chef/chef/compare/12.0.3...11.18.0)

**Implemented enhancements:**

- Add martinisoft to missing FreeBSD platform [\#2592](https://github.com/chef/chef/pull/2592) ([martinisoft](https://github.com/martinisoft))
- Enable logon-as-service in windows\_service \(CHEF-4921\). [\#2288](https://github.com/chef/chef/pull/2288) ([randomcamel](https://github.com/randomcamel))

**Fixed bugs:**

- omnibus install fails on Windows server 2003 [\#2706](https://github.com/chef/chef/issues/2706)
- Supermarket And Other Needed Certs Should Ship with Chef/ChefDK [\#2672](https://github.com/chef/chef/issues/2672)
- Resources run longer than timeout length  [\#2175](https://github.com/chef/chef/issues/2175)
- Conflicts with Omnibus rubygems and system rubygems [\#2548](https://github.com/chef/chef/issues/2548)
- Windows Chef Client 11 Omnibus "bash" shell update [\#2143](https://github.com/chef/chef/issues/2143)

**Closed issues:**

- Please update Nginx to the current release \(1.6.2\) to address security issues [\#2744](https://github.com/chef/chef/issues/2744)
- How to use Chef "search" method in library code  [\#2743](https://github.com/chef/chef/issues/2743)
- Circular argument reference with ruby 2.2 [\#2736](https://github.com/chef/chef/issues/2736)
- service action enable does not work on Linux Mint 17 [\#2726](https://github.com/chef/chef/issues/2726)
- 12.0.3 not available as package [\#2725](https://github.com/chef/chef/issues/2725)
- sudo chef-server-ctl reconfigure [\#2714](https://github.com/chef/chef/issues/2714)
- knife bootstrap with vagrant stops working.  ERROR: Errno::ENOENT: No such file or directory @ rb\_sysopen [\#2711](https://github.com/chef/chef/issues/2711)
- knife rubygem gem plugins overridden by chef commands [\#2704](https://github.com/chef/chef/issues/2704)
- Checksum error when calling file command multiple times [\#2697](https://github.com/chef/chef/issues/2697)
- Chef-client 12 - Checksum error & unable to find Windows provider for installer\_type custom [\#2668](https://github.com/chef/chef/issues/2668)
- Directory resource raises permission denied excecption on create even when directory exists [\#2638](https://github.com/chef/chef/issues/2638)
- Installing Chef Analytics [\#2579](https://github.com/chef/chef/issues/2579)
- Audit mode specs [\#2550](https://github.com/chef/chef/issues/2550)
- When \*both\* verify\_api\_cert and ssl\_verify\_mode options are set in knife.rb, it doesn't respect either [\#2538](https://github.com/chef/chef/issues/2538)
- Opensuse 12.3 enabling a  service stopped working [\#2039](https://github.com/chef/chef/issues/2039)
- Rubygems shipped in omnibus-chef 11.x has a buggy depsolver [\#2547](https://github.com/chef/chef/issues/2547)

**Merged pull requests:**

- Prepare Chef 11.18.0 release [\#2750](https://github.com/chef/chef/pull/2750) ([jaym](https://github.com/jaym))
- Provide more info when cookbook metadata is not found [\#2749](https://github.com/chef/chef/pull/2749) ([jaym](https://github.com/jaym))
- Allow knife to install cookbooks with metadata.json [\#2748](https://github.com/chef/chef/pull/2748) ([jaym](https://github.com/jaym))
- Update martinisoft to FreeBSD Lieutenant [\#2732](https://github.com/chef/chef/pull/2732) ([martinisoft](https://github.com/martinisoft))
- add a compile\_time flag to chef\_gem resource [\#2730](https://github.com/chef/chef/pull/2730) ([lamont-granquist](https://github.com/lamont-granquist))
- add ruby 2.2.0 to travis [\#2729](https://github.com/chef/chef/pull/2729) ([lamont-granquist](https://github.com/lamont-granquist))
- add forcing of LANG and LANGUAGE env vars [\#2727](https://github.com/chef/chef/pull/2727) ([lamont-granquist](https://github.com/lamont-granquist))
- Merge pull request \#2505 from kwilczynski/http-create-url [\#2708](https://github.com/chef/chef/pull/2708) ([jonlives](https://github.com/jonlives))
- Randomize service display name to fix transient test failure, and mark u... [\#2699](https://github.com/chef/chef/pull/2699) ([randomcamel](https://github.com/randomcamel))
- Clearing out DOC\_CHANGES from 12-stable because all docs have been updated since 12.0.3 release [\#2678](https://github.com/chef/chef/pull/2678) ([tyler-ball](https://github.com/tyler-ball))
- Added AppVeyor build status [\#2676](https://github.com/chef/chef/pull/2676) ([jaym](https://github.com/jaym))
- Clearing out doc\_changes because we're in a new release [\#2675](https://github.com/chef/chef/pull/2675) ([tyler-ball](https://github.com/tyler-ball))
- Audit mode [\#2674](https://github.com/chef/chef/pull/2674) ([tyler-ball](https://github.com/tyler-ball))
- Merge master into audit mode [\#2669](https://github.com/chef/chef/pull/2669) ([mcquin](https://github.com/mcquin))
- Unit tests for audit-mode in chef-solo. [\#2664](https://github.com/chef/chef/pull/2664) ([mcquin](https://github.com/mcquin))
- test appveyor [\#2661](https://github.com/chef/chef/pull/2661) ([btm](https://github.com/btm))
- Unit and functional tests for spec\_formatter [\#2660](https://github.com/chef/chef/pull/2660) ([tyler-ball](https://github.com/tyler-ball))
- Merging `fix subscribes` to master [\#2652](https://github.com/chef/chef/pull/2652) ([tyler-ball](https://github.com/tyler-ball))
- Skip 3694 warnings on trivial resource cloning [\#2624](https://github.com/chef/chef/pull/2624) ([lamont-granquist](https://github.com/lamont-granquist))
- Disable audit-mode by default. [\#2622](https://github.com/chef/chef/pull/2622) ([mcquin](https://github.com/mcquin))
- Tests for audit runner [\#2549](https://github.com/chef/chef/pull/2549) ([tyler-ball](https://github.com/tyler-ball))
- Chef 11 - Switch JSON dependency for ffi-yajl [\#2120](https://github.com/chef/chef/pull/2120) ([tyler-ball](https://github.com/tyler-ball))
- We now check for powershell/dsc compat in provider. [\#2103](https://github.com/chef/chef/pull/2103) ([jaym](https://github.com/jaym))
- Jdmundrawala/windows env path [\#2024](https://github.com/chef/chef/pull/2024) ([jaym](https://github.com/jaym))

## [12.0.3](https://github.com/chef/chef/tree/12.0.3) (2014-12-16)
[Full Changelog](https://github.com/chef/chef/compare/12.0.2...12.0.3)

**Merged pull requests:**

- Merge pull request \#2594 from jaymzh/digester [\#2658](https://github.com/chef/chef/pull/2658) ([sersut](https://github.com/sersut))

## [12.0.2](https://github.com/chef/chef/tree/12.0.2) (2014-12-16)
[Full Changelog](https://github.com/chef/chef/compare/12.0.1...12.0.2)

**Fixed bugs:**

- Chef 12.0.1 Ohai Resource Interface Change [\#2612](https://github.com/chef/chef/issues/2612)
- Chef 10 deep\_merge: to\_hash returns all precedence for hashes instead of highest precedence [\#1919](https://github.com/chef/chef/issues/1919)
- Chef 12.0.1 Fails To knife exec Any Script [\#2609](https://github.com/chef/chef/issues/2609)
- Need to merge libpath fixes into omnibus [\#2608](https://github.com/chef/chef/issues/2608)
- chef 12 ignores default\_release for apt\_package [\#2606](https://github.com/chef/chef/issues/2606)
- Chef 12 does not properly handle the package resource and notifications [\#2602](https://github.com/chef/chef/issues/2602)
- Chef 12 doesn't support symlinks to relative paths anymore [\#2580](https://github.com/chef/chef/issues/2580)
- homebrew\_package provider current\_installed\_version should check installed key is not empty [\#2578](https://github.com/chef/chef/issues/2578)
- knife cookbook site install json support w/tests [\#2642](https://github.com/chef/chef/pull/2642) ([btm](https://github.com/btm))
- Subversion failes with "option ':command' is not a valid option for Mixlib::ShellOut" [\#2634](https://github.com/chef/chef/pull/2634) ([BackSlasher](https://github.com/BackSlasher))
- Fixes \#2578, check that `installed` isn't empty [\#2582](https://github.com/chef/chef/pull/2582) ([jtimberman](https://github.com/jtimberman))

**Closed issues:**

- Subversion fails with "option ':command' is not a valid option for Mixlib::ShellOut" [\#2633](https://github.com/chef/chef/issues/2633)
- Can't add item to run\_list using knife when chef-client is running on that node [\#2632](https://github.com/chef/chef/issues/2632)
- GCE instance array for cloud.public\_ipv4 attribute makes trouble with "knife ssh" [\#2620](https://github.com/chef/chef/issues/2620)
- Downloaded asset via remote\_file on 12.0.1 does not match checksum that has been verified manually via curl + md5sum, plus verified working on 11.12.2 [\#2614](https://github.com/chef/chef/issues/2614)
- Cookbook putty-0.0.5 windows requires 'name' declaration in metadata [\#2600](https://github.com/chef/chef/issues/2600)
- Cookbook putty-0.0.5 windows fails install under chef-client 12.0.0 with inno [\#2599](https://github.com/chef/chef/issues/2599)
- ignore\_failure not ignoring failure [\#2598](https://github.com/chef/chef/issues/2598)
- Chef SSL error while running knife cookbook upload command. [\#2597](https://github.com/chef/chef/issues/2597)
- chef 12 & ohai 8 cause chef 11 to fail to install jvmargs [\#2593](https://github.com/chef/chef/issues/2593)
- Chef 12 possible incompatibility with LWRP usage inside cookbook libraries? [\#2591](https://github.com/chef/chef/issues/2591)
- How to install new cookbook with "knife cookbook site install..." without git? [\#2583](https://github.com/chef/chef/issues/2583)
- threaded\_job\_queue appears to cause Thread exhaustion [\#2531](https://github.com/chef/chef/issues/2531)
- powershell\_script failing with "powershell.exe"' is not recognized as an internal or external command [\#2009](https://github.com/chef/chef/issues/2009)
- Windows msi package provider fails to install with NoMethodError for 'shell\_out!' [\#2625](https://github.com/chef/chef/issues/2625)
- Change when writing back node run list information in Chef 12 local mode [\#2596](https://github.com/chef/chef/issues/2596)

**Merged pull requests:**

- Contribution information for https://github.com/opscode/chef/pull/2642. [\#2650](https://github.com/chef/chef/pull/2650) ([sersut](https://github.com/sersut))
- Merge pull request \#2642 from opscode/btm/site\_install\_json [\#2649](https://github.com/chef/chef/pull/2649) ([sersut](https://github.com/sersut))
- Merge pull request \#2645 from opscode/sersut/contrib-2634 [\#2647](https://github.com/chef/chef/pull/2647) ([sersut](https://github.com/sersut))
- Changelog for https://github.com/opscode/chef/pull/2621 [\#2646](https://github.com/chef/chef/pull/2646) ([tyler-ball](https://github.com/tyler-ball))
- Contribution information for https://github.com/opscode/chef/pull/2634. [\#2645](https://github.com/chef/chef/pull/2645) ([sersut](https://github.com/sersut))
- Merge pull request \#2634 from BackSlasher/repair-subversion-command [\#2643](https://github.com/chef/chef/pull/2643) ([sersut](https://github.com/sersut))
- Merge pull request \#2623 from opscode/sersut/revert-1901 [\#2639](https://github.com/chef/chef/pull/2639) ([sersut](https://github.com/sersut))
- Constrain version of database cookbook [\#2631](https://github.com/chef/chef/pull/2631) ([jaym](https://github.com/jaym))
- Improve Error Messages for SSL Errors in Knife [\#2630](https://github.com/chef/chef/pull/2630) ([danielsdeleo](https://github.com/danielsdeleo))
- Cleanup Mixin:ShellOut use/specs [\#2629](https://github.com/chef/chef/pull/2629) ([jaym](https://github.com/jaym))
- Resolve the circular dependency between ProviderResolver and Resource. [\#2610](https://github.com/chef/chef/pull/2610) ([sersut](https://github.com/sersut))
- Adding simple integration test for audit mode output [\#2607](https://github.com/chef/chef/pull/2607) ([tyler-ball](https://github.com/tyler-ball))
- Fix Digester to require its dependencies [\#2594](https://github.com/chef/chef/pull/2594) ([jaymzh](https://github.com/jaymzh))
- Tests for new `1/1 audits succeeded` output [\#2589](https://github.com/chef/chef/pull/2589) ([tyler-ball](https://github.com/tyler-ball))
- Adding audit DSL coverage [\#2586](https://github.com/chef/chef/pull/2586) ([tyler-ball](https://github.com/tyler-ball))
- Adding test for recipe DSL audit additions [\#2585](https://github.com/chef/chef/pull/2585) ([tyler-ball](https://github.com/tyler-ball))
- Stub windows? check in the unit test to make sure specs are green on windows [\#2584](https://github.com/chef/chef/pull/2584) ([sersut](https://github.com/sersut))
- Updating serverspec to pull in PR I submitted [\#2564](https://github.com/chef/chef/pull/2564) ([tyler-ball](https://github.com/tyler-ball))
- Add unit tests for Audit::ControlGroupData [\#2556](https://github.com/chef/chef/pull/2556) ([mcquin](https://github.com/mcquin))
- Add unit tests for Audit::AuditReporter [\#2555](https://github.com/chef/chef/pull/2555) ([mcquin](https://github.com/mcquin))
- Add unit tests for Audit::AuditEventProxy [\#2553](https://github.com/chef/chef/pull/2553) ([mcquin](https://github.com/mcquin))
- \[WIP\] Audit mode specs [\#2533](https://github.com/chef/chef/pull/2533) ([mcquin](https://github.com/mcquin))
- Updating chef output to include audit information [\#2494](https://github.com/chef/chef/pull/2494) ([tyler-ball](https://github.com/tyler-ball))
- fix apt default\_release attribute broken in 12.0 [\#2640](https://github.com/chef/chef/pull/2640) ([lamont-granquist](https://github.com/lamont-granquist))
- Jdm/issue 2626 rebase [\#2637](https://github.com/chef/chef/pull/2637) ([jaym](https://github.com/jaym))
- Preserve relative paths in Link resource [\#2623](https://github.com/chef/chef/pull/2623) ([sersut](https://github.com/sersut))
- Fixing broken `subscribes` notifications [\#2621](https://github.com/chef/chef/pull/2621) ([tyler-ball](https://github.com/tyler-ball))
- Fix attribute whitelisting [\#2616](https://github.com/chef/chef/pull/2616) ([jaymzh](https://github.com/jaymzh))
- Fix \#2596: parse instead of from\_json [\#2613](https://github.com/chef/chef/pull/2613) ([jkeiser](https://github.com/jkeiser))
- Catch 'unknown protocol' errors in ssl fetch and explain them [\#2611](https://github.com/chef/chef/pull/2611) ([danielsdeleo](https://github.com/danielsdeleo))
- Merge pull request \#2582 from jtimberman/jtimberman/brew-info-installed [\#2588](https://github.com/chef/chef/pull/2588) ([sersut](https://github.com/sersut))

## [12.0.1](https://github.com/chef/chef/tree/12.0.1) (2014-12-09)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0...12.0.1)

**Implemented enhancements:**

- Enhance Daemonized chef-client Shell Environment [\#2537](https://github.com/chef/chef/issues/2537)

**Fixed bugs:**

- there is no manpage for chef-apply\(1\) [\#1592](https://github.com/chef/chef/issues/1592)
- Chef 12 on Windows doesn't honor interval in client.rb [\#2566](https://github.com/chef/chef/issues/2566)
- Chef 12 Bootstrap context changes break knife-windows bootstrap context [\#2565](https://github.com/chef/chef/issues/2565)
- Chef Client 12.0.0 rpm packages are not signed [\#2563](https://github.com/chef/chef/issues/2563)
- chef-12.0.0/lib/chef/event\_loggers/windows\_eventlog.rb:25:in `block in \<top \(required\)\>': uninitialized constant Windows::Constants \(NameError\) [\#2560](https://github.com/chef/chef/issues/2560)
- NoMethodError: undefined method `path' for Chef::Resource::Execute [\#2545](https://github.com/chef/chef/issues/2545)
- Fix issue where Windows::Constants could potentially not exist, causing win event log module to crash [\#2574](https://github.com/chef/chef/pull/2574) ([jaym](https://github.com/jaym))
- Restore compatibility with knife-windows [\#2573](https://github.com/chef/chef/pull/2573) ([sersut](https://github.com/sersut))
- Fix windows service when :interval is set [\#2572](https://github.com/chef/chef/pull/2572) ([sersut](https://github.com/sersut))
- Restore path attribute in execute resource with deprecation warning [\#2571](https://github.com/chef/chef/pull/2571) ([sersut](https://github.com/sersut))

**Closed issues:**

- chef 12 windows MSI not adding embedded/bin to the path [\#2559](https://github.com/chef/chef/issues/2559)
- Using provides with LWRPs fails [\#2552](https://github.com/chef/chef/issues/2552)
- chef-client 12 for windows to connect chef server 11 [\#2543](https://github.com/chef/chef/issues/2543)
- can't upload existing cookbook, but can upload newly created [\#2540](https://github.com/chef/chef/issues/2540)
- Seeing version incompatibilities on installation, Ubuntu 14.04 [\#2517](https://github.com/chef/chef/issues/2517)
- Waiting for rabbitmq process to appear [\#2515](https://github.com/chef/chef/issues/2515)
- knife cookbook upload SSL validation failure based on CWD? [\#2481](https://github.com/chef/chef/issues/2481)
- Response: internal service error \(Cookbook upload\) [\#2409](https://github.com/chef/chef/issues/2409)
- Document the fact that Recipe DSL is not included in Provider base anymore [\#2570](https://github.com/chef/chef/issues/2570)
- undefined method `foo=' for \#\<Chef::Node::MultiMash:0x...\> [\#2562](https://github.com/chef/chef/issues/2562)

**Merged pull requests:**

- Update Net::HTTP IPv6 monkey patch w/ version info [\#2567](https://github.com/chef/chef/pull/2567) ([danielsdeleo](https://github.com/danielsdeleo))
- Merging master [\#2557](https://github.com/chef/chef/pull/2557) ([tyler-ball](https://github.com/tyler-ball))
- Adding cookbook and recipe location information to JSON analytics payload [\#2528](https://github.com/chef/chef/pull/2528) ([tyler-ball](https://github.com/tyler-ball))
- Backport bug fixes for 12.0.1. [\#2576](https://github.com/chef/chef/pull/2576) ([sersut](https://github.com/sersut))
- Fix issue where LWRP resources using `provides` fails [\#2554](https://github.com/chef/chef/pull/2554) ([jaym](https://github.com/jaym))

## [12.0.0](https://github.com/chef/chef/tree/12.0.0) (2014-12-04)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.rc.3...12.0.0)

**Implemented enhancements:**

- Adding MAINTAINERS.md file per RFC-030 and proposing myself as maintainer for Core & Enterprise Linux [\#2423](https://github.com/chef/chef/pull/2423) ([jonlives](https://github.com/jonlives))

**Fixed bugs:**

- Windows Chef Client 10 Omnibus "bash" shell update [\#2144](https://github.com/chef/chef/issues/2144)

**Closed issues:**

- Recent OHAI update broke chefgem\[minitest-handler\] install with OHAI ~\> 7.\* constraint [\#2525](https://github.com/chef/chef/issues/2525)
- Error: Not able to execute "sudo chef-client" from Workstation. [\#2522](https://github.com/chef/chef/issues/2522)
- thirty\_two\_bit attribute of iis\_pool provider in iis cookbook of invalid type [\#2501](https://github.com/chef/chef/issues/2501)
- How do we implement your commit bits? [\#2486](https://github.com/chef/chef/issues/2486)
- Chef12 rc2 symlinks [\#2480](https://github.com/chef/chef/issues/2480)
- "knife node run\_list remove" issue [\#2186](https://github.com/chef/chef/issues/2186)

**Merged pull requests:**

- Remove unused "agent". [\#2532](https://github.com/chef/chef/pull/2532) ([juliandunn](https://github.com/juliandunn))
- fix searching upwards for knife plugins [\#2527](https://github.com/chef/chef/pull/2527) ([lamont-granquist](https://github.com/lamont-granquist))
- Make me a maintainer [\#2526](https://github.com/chef/chef/pull/2526) ([mcquin](https://github.com/mcquin))
- Updating to use audit syntax rather than control [\#2524](https://github.com/chef/chef/pull/2524) ([tyler-ball](https://github.com/tyler-ball))
- A memorial for Ezra Zygmuntowicz [\#2516](https://github.com/chef/chef/pull/2516) ([adamhjk](https://github.com/adamhjk))
- Add myself to MAINTAINERS [\#2512](https://github.com/chef/chef/pull/2512) ([danielsdeleo](https://github.com/danielsdeleo))
- Adding myself as a maintainer [\#2510](https://github.com/chef/chef/pull/2510) ([tyler-ball](https://github.com/tyler-ball))
- Remove all parts of 'shef' [\#2499](https://github.com/chef/chef/pull/2499) ([juliandunn](https://github.com/juliandunn))
- Remove 1.8 and 1.9 specific monkey patches [\#2498](https://github.com/chef/chef/pull/2498) ([danielsdeleo](https://github.com/danielsdeleo))
- Drop 1.9 from 12 stable [\#2496](https://github.com/chef/chef/pull/2496) ([danielsdeleo](https://github.com/danielsdeleo))
- Adding myself to relevant component maintainer [\#2490](https://github.com/chef/chef/pull/2490) ([jtimberman](https://github.com/jtimberman))
- Drop 1.9 [\#2488](https://github.com/chef/chef/pull/2488) ([danielsdeleo](https://github.com/danielsdeleo))
- suppress locale -a warnings on windows [\#2487](https://github.com/chef/chef/pull/2487) ([lamont-granquist](https://github.com/lamont-granquist))
- Add Steven Danna as a maintainer of Dev Tools [\#2485](https://github.com/chef/chef/pull/2485) ([stevendanna](https://github.com/stevendanna))
- Merging community contributions [\#2484](https://github.com/chef/chef/pull/2484) ([tyler-ball](https://github.com/tyler-ball))
- Merge pass for contributions. [\#2483](https://github.com/chef/chef/pull/2483) ([sersut](https://github.com/sersut))
- add partial deep merge cache [\#2459](https://github.com/chef/chef/pull/2459) ([lamont-granquist](https://github.com/lamont-granquist))

## [12.0.0.rc.3](https://github.com/chef/chef/tree/12.0.0.rc.3) (2014-11-24)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.rc.2...12.0.0.rc.3)

**Implemented enhancements:**

- Revert rubygems 2.2.0 with bundler 1.5 with Ruby 1.8.7 fix [\#2445](https://github.com/chef/chef/pull/2445) ([juliandunn](https://github.com/juliandunn))

## [12.0.0.rc.2](https://github.com/chef/chef/tree/12.0.0.rc.2) (2014-11-24)
[Full Changelog](https://github.com/chef/chef/compare/12.2.0.alpha.0...12.0.0.rc.2)

**Merged pull requests:**

- Merge pull request \#2462 from opscode/lcg/remove-knockout-merge [\#2477](https://github.com/chef/chef/pull/2477) ([sersut](https://github.com/sersut))
- remove old knockout merge exception [\#2462](https://github.com/chef/chef/pull/2462) ([lamont-granquist](https://github.com/lamont-granquist))

## [12.2.0.alpha.0](https://github.com/chef/chef/tree/12.2.0.alpha.0) (2014-11-23)
[Full Changelog](https://github.com/chef/chef/compare/11.18.0.rc.1...12.2.0.alpha.0)

**Implemented enhancements:**

- Delete SecureRandom monkey patch [\#2384](https://github.com/chef/chef/issues/2384)
- Setting version to an empty string in tests [\#2452](https://github.com/chef/chef/pull/2452) ([lucywyman](https://github.com/lucywyman))

**Fixed bugs:**

- Fix installer\_version\_string to be an array on prerelease parameter. [\#2439](https://github.com/chef/chef/pull/2439) ([Daegalus](https://github.com/Daegalus))

**Closed issues:**

- Issue with bootstrapping users using chef-server-ctl in chef server 12 [\#2473](https://github.com/chef/chef/issues/2473)
- Question: Cookbook dependency and recipe inclusion [\#2469](https://github.com/chef/chef/issues/2469)
- use\_inline\_resources should hide internal implementation [\#2442](https://github.com/chef/chef/issues/2442)
- Chef server should pass back metadata.json in a consistent format [\#2438](https://github.com/chef/chef/issues/2438)
- invalid metadata: The `name' attribute is required in cookbook metadata [\#2435](https://github.com/chef/chef/issues/2435)
- Roles should be versioned. [\#2430](https://github.com/chef/chef/issues/2430)
- chef-shell on Windows tries to load /etc/chef/client.rb [\#2380](https://github.com/chef/chef/issues/2380)
- Chef 12 puts its temp files in the wrong place [\#2356](https://github.com/chef/chef/issues/2356)
- when UTF-8 locale missing, it prints on every resource [\#2334](https://github.com/chef/chef/issues/2334)
- deploy resource: ERROR: negative argument [\#2026](https://github.com/chef/chef/issues/2026)

**Merged pull requests:**

- Fix copy pasta error. [\#2475](https://github.com/chef/chef/pull/2475) ([sersut](https://github.com/sersut))
- Audit mode rebase [\#2472](https://github.com/chef/chef/pull/2472) ([mcquin](https://github.com/mcquin))
- Test include\_recipe with controls [\#2468](https://github.com/chef/chef/pull/2468) ([mcquin](https://github.com/mcquin))
- adding some more specs around to\_hash [\#2464](https://github.com/chef/chef/pull/2464) ([lamont-granquist](https://github.com/lamont-granquist))
- Merge pull request \#2447 from opscode/lcg/lazy-deep-merge2 [\#2454](https://github.com/chef/chef/pull/2454) ([sersut](https://github.com/sersut))
- Remove compression since the server doesn't support it yet. [\#2453](https://github.com/chef/chef/pull/2453) ([sersut](https://github.com/sersut))
- Merge pull request \#2073 from opscode/ryan/group\_post-master [\#2450](https://github.com/chef/chef/pull/2450) ([sersut](https://github.com/sersut))
- Lcg/lazy deep merge2 [\#2447](https://github.com/chef/chef/pull/2447) ([lamont-granquist](https://github.com/lamont-granquist))
- Merge pull request \#2424 from opscode/sersut/chef-2356 [\#2440](https://github.com/chef/chef/pull/2440) ([sersut](https://github.com/sersut))
- Fix "log writing failed. closed stream" errors after audit phase [\#2428](https://github.com/chef/chef/pull/2428) ([sersut](https://github.com/sersut))
- Use platform\_specific\_path in chef shell [\#2427](https://github.com/chef/chef/pull/2427) ([jaym](https://github.com/jaym))
- stop recomputing locale -a constantly [\#2425](https://github.com/chef/chef/pull/2425) ([lamont-granquist](https://github.com/lamont-granquist))
- :auto mode for :file\_staging\_uses\_destdir [\#2424](https://github.com/chef/chef/pull/2424) ([sersut](https://github.com/sersut))
- skip expensive spec tests by default [\#2421](https://github.com/chef/chef/pull/2421) ([lamont-granquist](https://github.com/lamont-granquist))
- Populate the actors when creating groups [\#2074](https://github.com/chef/chef/pull/2074) ([ryancragun](https://github.com/ryancragun))
- Populate the actors when creating groups [\#2073](https://github.com/chef/chef/pull/2073) ([ryancragun](https://github.com/ryancragun))
- Audit Tests [\#2465](https://github.com/chef/chef/pull/2465) ([sersut](https://github.com/sersut))
- Adding start\_time and end\_time to array per request [\#2461](https://github.com/chef/chef/pull/2461) ([tyler-ball](https://github.com/tyler-ball))
- Audit tests for `package` DSL duplication [\#2436](https://github.com/chef/chef/pull/2436) ([tyler-ball](https://github.com/tyler-ball))
- Wait until audit phase to load needed files. [\#2426](https://github.com/chef/chef/pull/2426) ([mcquin](https://github.com/mcquin))

## [11.18.0.rc.1](https://github.com/chef/chef/tree/11.18.0.rc.1) (2014-11-14)
[Full Changelog](https://github.com/chef/chef/compare/11.18.0.rc.0...11.18.0.rc.1)

**Merged pull requests:**

- ChefDK 227 fix for master [\#2422](https://github.com/chef/chef/pull/2422) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/openbsd package [\#2420](https://github.com/chef/chef/pull/2420) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/goalie merging [\#2418](https://github.com/chef/chef/pull/2418) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.18.0.rc.0](https://github.com/chef/chef/tree/11.18.0.rc.0) (2014-11-13)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.rc.1...11.18.0.rc.0)

**Implemented enhancements:**

- File.exists? is deprecated in favor of File.exist? [\#2331](https://github.com/chef/chef/pull/2331) ([justanshulsharma](https://github.com/justanshulsharma))

**Merged pull requests:**

- Update version and changelog for 11.18.0 RC0 [\#2419](https://github.com/chef/chef/pull/2419) ([danielsdeleo](https://github.com/danielsdeleo))
- Ignore knife subcommands from other chef installs [\#2416](https://github.com/chef/chef/pull/2416) ([danielsdeleo](https://github.com/danielsdeleo))
- Audit mode rebase [\#2415](https://github.com/chef/chef/pull/2415) ([mcquin](https://github.com/mcquin))

## [12.0.0.rc.1](https://github.com/chef/chef/tree/12.0.0.rc.1) (2014-11-13)
[Full Changelog](https://github.com/chef/chef/compare/10.34.6...12.0.0.rc.1)

**Closed issues:**

- Cannot load such file -- chef/encrypted\_data\_bag\_item/check\_encrypted [\#2405](https://github.com/chef/chef/issues/2405)
- Issue in bootstrapping a node from Workstation [\#2404](https://github.com/chef/chef/issues/2404)
- Issue while creating admin users for CHEF SERVER  [\#2397](https://github.com/chef/chef/issues/2397)
- `chef shell-init` emits warnings on stdout, preventing the use of bash `eval` [\#2392](https://github.com/chef/chef/issues/2392)
- Some gems under /opt/chef/embedded/bin have incorrect shebang [\#2379](https://github.com/chef/chef/issues/2379)

**Merged pull requests:**

- Merge pull request \#2407 from opscode/sersut/ci-fix-sparc [\#2410](https://github.com/chef/chef/pull/2410) ([sersut](https://github.com/sersut))
- Fix unit specs on Sparc. [\#2407](https://github.com/chef/chef/pull/2407) ([sersut](https://github.com/sersut))
- chef-shell checks platform when looking for client.rb and solo.rb. [\#2395](https://github.com/chef/chef/pull/2395) ([jaym](https://github.com/jaym))
- Windows event logger no longer imports into the global namespace. [\#2394](https://github.com/chef/chef/pull/2394) ([jaym](https://github.com/jaym))
- Audit Mode Formatter Integration [\#2362](https://github.com/chef/chef/pull/2362) ([tyler-ball](https://github.com/tyler-ball))

## [10.34.6](https://github.com/chef/chef/tree/10.34.6) (2014-11-10)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.rc.0...10.34.6)

**Implemented enhancements:**

- Fix some minor typos [\#2385](https://github.com/chef/chef/pull/2385) ([tas50](https://github.com/tas50))
- knife node run\_list remove issue \#2186 [\#2242](https://github.com/chef/chef/pull/2242) ([justanshulsharma](https://github.com/justanshulsharma))

**Fixed bugs:**

- gem\_package does not provide a "live" view of installed gems [\#2361](https://github.com/chef/chef/issues/2361)
- Chef 12 SSL failure "hostname does not match the server certificate" on S3 [\#2267](https://github.com/chef/chef/issues/2267)
- \[CHEF-5181\] chef-client deadlock [\#2062](https://github.com/chef/chef/issues/2062)

**Closed issues:**

- The package resource doesn't map to the explicit provider on FreeBSD [\#2378](https://github.com/chef/chef/issues/2378)
- vcs control commands [\#2371](https://github.com/chef/chef/issues/2371)
- Chef 12 - String Attribute Issue [\#2365](https://github.com/chef/chef/issues/2365)
- Writing client key cannot follow symlinks due to File::NOFOLLOW flag [\#2358](https://github.com/chef/chef/issues/2358)
- chef-client hangs on windows when interval is set [\#2355](https://github.com/chef/chef/issues/2355)
- 12.rc SSL = gem failures until I site-append to /opt/chef/embedded/ssl/cert.pem [\#2353](https://github.com/chef/chef/issues/2353)
- Unable to upload ruby script as part of cookbook files that contain a DATA section [\#2333](https://github.com/chef/chef/issues/2333)
- ProviderResolver needs smarter systemd check [\#2332](https://github.com/chef/chef/issues/2332)
- chef-server-ctl reconfigure fails if procps is already running [\#2323](https://github.com/chef/chef/issues/2323)
- implement reverse proxy in front of chef-server [\#2316](https://github.com/chef/chef/issues/2316)

**Merged pull requests:**

- Merge pull request \#2336 from opscode/lcg/12-systemd-fixes [\#2389](https://github.com/chef/chef/pull/2389) ([sersut](https://github.com/sersut))
- Merge pull request \#2387 from opscode/sersut/revert-attr-nil-override [\#2388](https://github.com/chef/chef/pull/2388) ([sersut](https://github.com/sersut))
- Revert "CHEF-4101: DeepMerge - support overwriting hash values with nil" [\#2387](https://github.com/chef/chef/pull/2387) ([sersut](https://github.com/sersut))
- Merge pull request \#2097 from opscode/lcg/chef-12-attr [\#2386](https://github.com/chef/chef/pull/2386) ([sersut](https://github.com/sersut))
- typo fixes - https://github.com/vlajos/misspell\_fixer [\#2382](https://github.com/chef/chef/pull/2382) ([vlajos](https://github.com/vlajos))
- Merge pull request \#2370 from opscode/ryan/follow\_symlinks [\#2381](https://github.com/chef/chef/pull/2381) ([sersut](https://github.com/sersut))
- Merge pull request \#2368 from opscode/sersut/knife-cloud-bootstrap-options [\#2377](https://github.com/chef/chef/pull/2377) ([sersut](https://github.com/sersut))
- Add CLA\_ARCHIVE -- List of CLAs from pre-supermarket times [\#2376](https://github.com/chef/chef/pull/2376) ([danielsdeleo](https://github.com/danielsdeleo))
- Preparing 10.34.6 release [\#2373](https://github.com/chef/chef/pull/2373) ([jaym](https://github.com/jaym))
- Make client.pem being a symlink a configurable option [\#2370](https://github.com/chef/chef/pull/2370) ([ryancragun](https://github.com/ryancragun))
- Knife cloud plugins bootstrap problem with Chef 12 when using custom templates. [\#2368](https://github.com/chef/chef/pull/2368) ([sersut](https://github.com/sersut))
- Bring in cheffish and provisioning resources if they are installed [\#2364](https://github.com/chef/chef/pull/2364) ([jkeiser](https://github.com/jkeiser))
- Add chef-provisioning to core Chef [\#2357](https://github.com/chef/chef/pull/2357) ([jkeiser](https://github.com/jkeiser))
- Add serverspec types and matchers. [\#2354](https://github.com/chef/chef/pull/2354) ([mcquin](https://github.com/mcquin))
- DSL + Runner [\#2350](https://github.com/chef/chef/pull/2350) ([mcquin](https://github.com/mcquin))
- Getting pedant running with rspec 3 [\#2346](https://github.com/chef/chef/pull/2346) ([tyler-ball](https://github.com/tyler-ball))
- fix systemd for Ubuntu 14.10 [\#2336](https://github.com/chef/chef/pull/2336) ([lamont-granquist](https://github.com/lamont-granquist))
- \[WIP\] Audit-mode runner [\#2329](https://github.com/chef/chef/pull/2329) ([mcquin](https://github.com/mcquin))
- Updating travis to run builds on 12-stable [\#2326](https://github.com/chef/chef/pull/2326) ([tyler-ball](https://github.com/tyler-ball))
- Update to RSpec 3 [\#2324](https://github.com/chef/chef/pull/2324) ([mcquin](https://github.com/mcquin))
- First pass at DSL additions for chef-client audit mode [\#2321](https://github.com/chef/chef/pull/2321) ([tyler-ball](https://github.com/tyler-ball))
- Only include chef-service-manager on windows [\#2273](https://github.com/chef/chef/pull/2273) ([jaym](https://github.com/jaym))
- Lcg/chef 12 attr [\#2097](https://github.com/chef/chef/pull/2097) ([lamont-granquist](https://github.com/lamont-granquist))

## [12.0.0.rc.0](https://github.com/chef/chef/tree/12.0.0.rc.0) (2014-10-30)
[Full Changelog](https://github.com/chef/chef/compare/11.16.4...12.0.0.rc.0)

**Implemented enhancements:**

- aesthetics: that trailing space missing makes me uncomfortable [\#2246](https://github.com/chef/chef/pull/2246) ([rottenbytes](https://github.com/rottenbytes))
- mount resource : allow to mount cgroups [\#2237](https://github.com/chef/chef/pull/2237) ([rottenbytes](https://github.com/rottenbytes))
- Added Windows 10 \(Server and workstation\) to the marketing names version table. [\#2233](https://github.com/chef/chef/pull/2233) ([juliandunn](https://github.com/juliandunn))
- Add \#empty? method to the ChefFS base dir class. [\#2230](https://github.com/chef/chef/pull/2230) ([curiositycasualty](https://github.com/curiositycasualty))
- Logging events to the Windows Event Log [\#2229](https://github.com/chef/chef/pull/2229) ([jaym](https://github.com/jaym))
- Guards of execute resource doesn't inherit command options from its parent resource [\#2223](https://github.com/chef/chef/pull/2223) ([sersut](https://github.com/sersut))
- Allow `knife cookbook site share` to omit category [\#2203](https://github.com/chef/chef/pull/2203) ([martinb3](https://github.com/martinb3))
- Add JSON output to knife status command [\#2170](https://github.com/chef/chef/pull/2170) ([vaxvms](https://github.com/vaxvms))
- print the path to the configuration file used [\#2167](https://github.com/chef/chef/pull/2167) ([alexpop](https://github.com/alexpop))
- RFC 17 implementation [\#2165](https://github.com/chef/chef/pull/2165) ([coderanger](https://github.com/coderanger))
- Added exec method to Recipe, addressing Issue 1689 [\#2041](https://github.com/chef/chef/pull/2041) ([nsdavidson](https://github.com/nsdavidson))
- aix service provider [\#2028](https://github.com/chef/chef/pull/2028) ([kaustubh-d](https://github.com/kaustubh-d))
- Support sensitive in execute resources. [\#2013](https://github.com/chef/chef/pull/2013) ([nvwls](https://github.com/nvwls))
- Add supermarket\_attributes to Metadata [\#1914](https://github.com/chef/chef/pull/1914) ([brettchalupa](https://github.com/brettchalupa))
- Add option --prevew-archive to `knife cookbook site share` [\#1724](https://github.com/chef/chef/pull/1724) ([sawanoboly](https://github.com/sawanoboly))
- CHEF-3404: Provider Resolver [\#1596](https://github.com/chef/chef/pull/1596) ([lamont-granquist](https://github.com/lamont-granquist))
- guard\_interpreter default change for powershell\_script, batch resources [\#1495](https://github.com/chef/chef/pull/1495) ([adamedx](https://github.com/adamedx))

**Fixed bugs:**

- Chef Client windows service is broken after enabling appbundler [\#2272](https://github.com/chef/chef/issues/2272)
- The value of retries is reported incorrectly in an error report [\#2258](https://github.com/chef/chef/issues/2258)
- Chef 12 homebrew\_user provider is busted [\#2214](https://github.com/chef/chef/issues/2214)
- Bootstrap fails on Mac OS X 10.10 Yosemite due to missing metadata from opscode.com [\#2202](https://github.com/chef/chef/issues/2202)
- reboot\_pending does not check 32bit and 64bit registry paths in Windows [\#2189](https://github.com/chef/chef/issues/2189)
- new UTF-8 code spews warnings on CentOS 6 [\#2181](https://github.com/chef/chef/issues/2181)
- Chef::Node method \#tagged? fails recipe when node tags are not present [\#2174](https://github.com/chef/chef/issues/2174)
- Display path where cookbooks are created by knife [\#2163](https://github.com/chef/chef/issues/2163)
- Better handling for 'homebrew owner' [\#1934](https://github.com/chef/chef/issues/1934)
- gem\_package :upgrade action is broken [\#1920](https://github.com/chef/chef/issues/1920)
- Group provider tests are busted post-AIX merge [\#1788](https://github.com/chef/chef/issues/1788)
- Chef client 'execute cmd'  cannot be set to sensitive output [\#1744](https://github.com/chef/chef/issues/1744)
- use group\_name when checking if the group exists on mac osx with dscl [\#2251](https://github.com/chef/chef/pull/2251) ([chilicheech](https://github.com/chilicheech))
- Fix Inconsistent knife from file globbing [\#2239](https://github.com/chef/chef/pull/2239) ([justanshulsharma](https://github.com/justanshulsharma))
- Better handling of locale -a output [\#2222](https://github.com/chef/chef/pull/2222) ([mcquin](https://github.com/mcquin))
- \[knife-ec2\]Command-line options do not take precedence over knife.rb configuration \(\#247\) [\#2196](https://github.com/chef/chef/pull/2196) ([siddheshwar-more](https://github.com/siddheshwar-more))
- \[issue-2163\] display new cookbook path [\#2164](https://github.com/chef/chef/pull/2164) ([alexpop](https://github.com/alexpop))
- knife upload fails due to "wrong" ruby syntax in files/\* file [\#2149](https://github.com/chef/chef/pull/2149) ([JeanMertz](https://github.com/JeanMertz))
- \[CHEF-672\] load library folder recursively [\#2129](https://github.com/chef/chef/pull/2129) ([JeanMertz](https://github.com/JeanMertz))
- `brew` command now ran as user owning executable [\#2102](https://github.com/chef/chef/pull/2102) ([tyler-ball](https://github.com/tyler-ball))
- Use exact match to locate remote git-reference [\#2079](https://github.com/chef/chef/pull/2079) ([jbence](https://github.com/jbence))
- change default service mapping for SLES to systemd [\#2052](https://github.com/chef/chef/pull/2052) ([mapleoin](https://github.com/mapleoin))
- Have freebsd port use pkg info if the freebsd version is \>= 10000017 [\#1907](https://github.com/chef/chef/pull/1907) ([Aevin1387](https://github.com/Aevin1387))

**Closed issues:**

- Unexpected SIGILL \(4\) chef-client termination [\#2318](https://github.com/chef/chef/issues/2318)
- ChefDK nightly build- Unable to retrieve a valid package- OS X Yosemite [\#2307](https://github.com/chef/chef/issues/2307)
- Include a recipe is not working [\#2303](https://github.com/chef/chef/issues/2303)
- Omnibus installer won't work on OSX Yosemite [\#2290](https://github.com/chef/chef/issues/2290)
- Allow setting tinker options via attributes [\#2286](https://github.com/chef/chef/issues/2286)
- Missing notify\* and smtp\_alert features [\#2285](https://github.com/chef/chef/issues/2285)
- Give nodes support for all precedence levels [\#2283](https://github.com/chef/chef/issues/2283)
- Sort Manage UI lists [\#2279](https://github.com/chef/chef/issues/2279)
- Document SCM timeout parameter [\#2261](https://github.com/chef/chef/issues/2261)
- File resource not updating content [\#2256](https://github.com/chef/chef/issues/2256)
- Unit tests for new ResourceList class [\#2245](https://github.com/chef/chef/issues/2245)
- Unexpected Chef::Exceptions::ImmutableAttributeModification [\#2228](https://github.com/chef/chef/issues/2228)
- bundle install fails on mixlib-shellout requiring v1.9.3, but readme requires minimum 1.8.5 [\#2224](https://github.com/chef/chef/issues/2224)
- Chef 12 does not work with ChefSpec [\#2213](https://github.com/chef/chef/issues/2213)
- Rspec tests on Solaris are insanely slow [\#2082](https://github.com/chef/chef/issues/2082)
- windows\_package installer\_type has incorrect validation [\#1997](https://github.com/chef/chef/issues/1997)
- Remove unforked interval runs from chef-client [\#1910](https://github.com/chef/chef/issues/1910)
- Chef runs fail on Windows because of connection reset [\#1881](https://github.com/chef/chef/issues/1881)
- \[low priority\] Chef::Provider action should be read-only, set during initialize [\#1862](https://github.com/chef/chef/issues/1862)
- Have a new method on resource collection to add resources with a custom key [\#1817](https://github.com/chef/chef/issues/1817)
- Guard interpreter default for powershell\_script set to powershell\_script [\#1714](https://github.com/chef/chef/issues/1714)
- Guard interpreter default for batch set to :batch [\#1713](https://github.com/chef/chef/issues/1713)

**Merged pull requests:**

- Merge pull request \#2328 from opscode/sersut/win-spec-fix [\#2330](https://github.com/chef/chef/pull/2330) ([sersut](https://github.com/sersut))
- Fix windows specs for windows package type. [\#2328](https://github.com/chef/chef/pull/2328) ([sersut](https://github.com/sersut))
- RC Spec fixes for 12-stable [\#2327](https://github.com/chef/chef/pull/2327) ([sersut](https://github.com/sersut))
- Fixing documentation error \(leftovers, no longer correct\) [\#2322](https://github.com/chef/chef/pull/2322) ([tyler-ball](https://github.com/tyler-ball))
- Disable workstation tests for aix. [\#2320](https://github.com/chef/chef/pull/2320) ([kaustubh-d](https://github.com/kaustubh-d))
- add 14.04 to supported vagrant distros [\#2315](https://github.com/chef/chef/pull/2315) ([lamont-granquist](https://github.com/lamont-granquist))
- 64-bit Windows functional script resource specs should not execute on 32-bit Windows [\#2314](https://github.com/chef/chef/pull/2314) ([adamedx](https://github.com/adamedx))
- Make sure windows\_service and windows\_package resources are found with the new dynamic provider resolver. [\#2313](https://github.com/chef/chef/pull/2313) ([sersut](https://github.com/sersut))
- Fix test failures with latest AIX build. [\#2309](https://github.com/chef/chef/pull/2309) ([kaustubh-d](https://github.com/kaustubh-d))
- Chef::Application outer lexical scope [\#2308](https://github.com/chef/chef/pull/2308) ([lamont-granquist](https://github.com/lamont-granquist))
- Pick pull request \#2252 from master [\#2305](https://github.com/chef/chef/pull/2305) ([jaym](https://github.com/jaym))
- Remove old, outdated distro initscripts. [\#2301](https://github.com/chef/chef/pull/2301) ([juliandunn](https://github.com/juliandunn))
- updating resources/providers unit tests to rpsec3 [\#2300](https://github.com/chef/chef/pull/2300) ([lamont-granquist](https://github.com/lamont-granquist))
- Cherrypick pull request \#2264 from opscode/jdmundrawala/issue-2225 [\#2298](https://github.com/chef/chef/pull/2298) ([jaym](https://github.com/jaym))
- Using released chef-zero which uses ffi-yajl instead of JSON gem [\#2297](https://github.com/chef/chef/pull/2297) ([tyler-ball](https://github.com/tyler-ball))
- Last contribution pass before Chef 12. [\#2296](https://github.com/chef/chef/pull/2296) ([sersut](https://github.com/sersut))
- add md files for ProviderResolver features [\#2295](https://github.com/chef/chef/pull/2295) ([lamont-granquist](https://github.com/lamont-granquist))
- Renamed output\_has\_dsc\_module\_failure to dsc\_module\_import\_failure [\#2294](https://github.com/chef/chef/pull/2294) ([jaym](https://github.com/jaym))
- remove force of utf-8 [\#2287](https://github.com/chef/chef/pull/2287) ([lamont-granquist](https://github.com/lamont-granquist))
- force ffi-yajl to use C ext [\#2284](https://github.com/chef/chef/pull/2284) ([lamont-granquist](https://github.com/lamont-granquist))
- Notes for Windows Event Log feature [\#2282](https://github.com/chef/chef/pull/2282) ([jaym](https://github.com/jaym))
- Renamed output\_has\_dsc\_module\_failure to dsc\_module\_import\_failure [\#2281](https://github.com/chef/chef/pull/2281) ([jaym](https://github.com/jaym))
- Rearrange changelog [\#2280](https://github.com/chef/chef/pull/2280) ([juliandunn](https://github.com/juliandunn))
- Added release notes for AIX service provider. [\#2275](https://github.com/chef/chef/pull/2275) ([juliandunn](https://github.com/juliandunn))
- Contribution info for last pass before Chef 12 Release. [\#2271](https://github.com/chef/chef/pull/2271) ([sersut](https://github.com/sersut))
- Missed one spec in rpm\_spec.rb. [\#2266](https://github.com/chef/chef/pull/2266) ([sersut](https://github.com/sersut))
- Add missing specs for List [\#2265](https://github.com/chef/chef/pull/2265) ([sersut](https://github.com/sersut))
- Improve detection missing WhatIf support [\#2264](https://github.com/chef/chef/pull/2264) ([jaym](https://github.com/jaym))
- Misc RC spec fixes that we ran into in CI. [\#2263](https://github.com/chef/chef/pull/2263) ([sersut](https://github.com/sersut))
- Fix value of retries shown in the error report. [\#2259](https://github.com/chef/chef/pull/2259) ([kwilczynski](https://github.com/kwilczynski))
- speed up rest test [\#2257](https://github.com/chef/chef/pull/2257) ([lamont-granquist](https://github.com/lamont-granquist))
- Make empty run\_list to produce an empty array when using node.to\_hash [\#2255](https://github.com/chef/chef/pull/2255) ([xeron](https://github.com/xeron))
- Modified env resource to break values up by delimiter before comparing [\#2252](https://github.com/chef/chef/pull/2252) ([jaym](https://github.com/jaym))
- Ensure delete ENV\[var\] from current process [\#2249](https://github.com/chef/chef/pull/2249) ([jaym](https://github.com/jaym))
- Adding a bin for windows service so that we can appbundle [\#2248](https://github.com/chef/chef/pull/2248) ([jaym](https://github.com/jaym))
- Don't leave spec tempfiles in people's source roots. [\#2241](https://github.com/chef/chef/pull/2241) ([randomcamel](https://github.com/randomcamel))
- Backport cookbooks.opscode.com -\> supermarket change to 11-stable. [\#2240](https://github.com/chef/chef/pull/2240) ([sersut](https://github.com/sersut))
- Return correct value for tagged? when node\[:tags\] is nil. [\#2238](https://github.com/chef/chef/pull/2238) ([sersut](https://github.com/sersut))
- Port Issue \#2209: DSC parameters should be passed even when there is no config data file [\#2236](https://github.com/chef/chef/pull/2236) ([adamedx](https://github.com/adamedx))
- remove chef/shell\_out dep [\#2231](https://github.com/chef/chef/pull/2231) ([lamont-granquist](https://github.com/lamont-granquist))
- remove 1.8.7 support from README [\#2227](https://github.com/chef/chef/pull/2227) ([lamont-granquist](https://github.com/lamont-granquist))
- Cherry-pick \#2190 from opscode/jdmundrawala/issue-2169 [\#2218](https://github.com/chef/chef/pull/2218) ([jaym](https://github.com/jaym))
- Cherry-pick \#2208 from opscode/jdmundrawala/env-path-spec-fix [\#2217](https://github.com/chef/chef/pull/2217) ([jaym](https://github.com/jaym))
- Notify a resource by the `resource\[name\]` key it was written as [\#2216](https://github.com/chef/chef/pull/2216) ([tyler-ball](https://github.com/tyler-ball))
- Fixing bug where  tried to use the homebrew provider on OSX and didn't correctly check for lack of homebrew-specific attribute on the resource [\#2215](https://github.com/chef/chef/pull/2215) ([tyler-ball](https://github.com/tyler-ball))
- Rebase CHEF-2187: change default group mapping for SLES to gpasswd [\#2211](https://github.com/chef/chef/pull/2211) ([sersut](https://github.com/sersut))
- Updates to CHANGELOG and RELEASE\_NOTES for the last month's contributions. [\#2210](https://github.com/chef/chef/pull/2210) ([sersut](https://github.com/sersut))
- DSC parameters should be passed even when there is no config data file [\#2209](https://github.com/chef/chef/pull/2209) ([adamedx](https://github.com/adamedx))
- restore ENV\['PATH'\] in env\_spec after test is complete [\#2208](https://github.com/chef/chef/pull/2208) ([jaym](https://github.com/jaym))
- Rebase CHEF-1971: Report a more appropriate error when no recipe is given [\#2207](https://github.com/chef/chef/pull/2207) ([sersut](https://github.com/sersut))
- Upgrading to latest ffi-yajl which contains fixes for Object\#to\_json [\#2205](https://github.com/chef/chef/pull/2205) ([tyler-ball](https://github.com/tyler-ball))
- Upgrading to latest ffi-yajl which contains fixes for Object\#to\_json [\#2204](https://github.com/chef/chef/pull/2204) ([tyler-ball](https://github.com/tyler-ball))
- CHANGELOG update and spec for gem\_package upgrade fix [\#2201](https://github.com/chef/chef/pull/2201) ([sersut](https://github.com/sersut))
- Keep deprecation of valid\_actions until Chef 13. [\#2197](https://github.com/chef/chef/pull/2197) ([sersut](https://github.com/sersut))
- Don't override LWRP resources or providers anymore in Chef 12. [\#2193](https://github.com/chef/chef/pull/2193) ([sersut](https://github.com/sersut))
- Try to apply dsc configuration even if what-if fails [\#2190](https://github.com/chef/chef/pull/2190) ([jaym](https://github.com/jaym))
- Cherry pick dsc\_script bug fix into 11-stable [\#2188](https://github.com/chef/chef/pull/2188) ([jaym](https://github.com/jaym))
- return whatever the definition returns [\#2185](https://github.com/chef/chef/pull/2185) ([lamont-granquist](https://github.com/lamont-granquist))
- Add some useful github queries. [\#2184](https://github.com/chef/chef/pull/2184) ([sersut](https://github.com/sersut))
- Remove Ruby 1.8.7 from travis config. [\#2183](https://github.com/chef/chef/pull/2183) ([sersut](https://github.com/sersut))
- Remove node\_name lookup in knife ssh error handler [\#2126](https://github.com/chef/chef/pull/2126) ([trvrnrth](https://github.com/trvrnrth))
- Replacing all JSON gem usage with Chef::JSONCompat usage [\#2114](https://github.com/chef/chef/pull/2114) ([tyler-ball](https://github.com/tyler-ball))
- Reading crontab of non-root unix user should read as that user [\#2107](https://github.com/chef/chef/pull/2107) ([sax](https://github.com/sax))
- Installing bind with pacman\_package fails [\#2051](https://github.com/chef/chef/pull/2051) ([wacky612](https://github.com/wacky612))
- fix FreeBSD pkgng provider \(version detection\) [\#1980](https://github.com/chef/chef/pull/1980) ([bahamas10](https://github.com/bahamas10))
- honor package category for paludis packages [\#1957](https://github.com/chef/chef/pull/1957) ([tbe](https://github.com/tbe))
- Should use client\_name instead of node\_name [\#1924](https://github.com/chef/chef/pull/1924) ([justanshulsharma](https://github.com/justanshulsharma))
- Stop ignoring colored knife output config on Windows [\#1905](https://github.com/chef/chef/pull/1905) ([adamedx](https://github.com/adamedx))
- use centos-6.4 instead of rhel-7 [\#1830](https://github.com/chef/chef/pull/1830) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix a bug when receiving a relative redirect location [\#1827](https://github.com/chef/chef/pull/1827) ([svanharmelen](https://github.com/svanharmelen))

## [11.16.4](https://github.com/chef/chef/tree/11.16.4) (2014-10-07)
[Full Changelog](https://github.com/chef/chef/compare/10.34.4...11.16.4)

**Implemented enhancements:**

- sensitive flag not inherited by platform resources used by provider/lwrp [\#2180](https://github.com/chef/chef/issues/2180)
- Error or Warn when there are unverifiable certs in the trusted certs directory [\#1944](https://github.com/chef/chef/issues/1944)
- Enable ssl verification by default in Chef 12 [\#1542](https://github.com/chef/chef/issues/1542)
- Escape file paths for globbing [\#2092](https://github.com/chef/chef/pull/2092) ([mcquin](https://github.com/mcquin))
- Verify X509 properties of trusted certificates [\#2036](https://github.com/chef/chef/pull/2036) ([mcquin](https://github.com/mcquin))

**Fixed bugs:**

- Getting null domain for Solaris nodes upgraded from Ohai 6.18 to Ohai 7.x [\#2139](https://github.com/chef/chef/issues/2139)
- Windows paths with \ don't work with Dir.glob, Dir::\[\] [\#2078](https://github.com/chef/chef/issues/2078)
- Local mode test failures on Windows [\#1933](https://github.com/chef/chef/issues/1933)
- RuntimeError: Digest::Base cannot be directly inherited in Ruby [\#1793](https://github.com/chef/chef/issues/1793)
- git provider: can not shallow clone from a branch [\#1563](https://github.com/chef/chef/issues/1563)
- SSL verification of self-signed seems broken under Windows [\#1534](https://github.com/chef/chef/issues/1534)
- service chef-client restart fails [\#1524](https://github.com/chef/chef/issues/1524)
- Work around breaking change in git clone [\#2148](https://github.com/chef/chef/pull/2148) ([mal](https://github.com/mal))
- Delay evaluation of guard\_interpreter [\#2119](https://github.com/chef/chef/pull/2119) ([btm](https://github.com/btm))
- Escape file paths for globbing [\#2092](https://github.com/chef/chef/pull/2092) ([mcquin](https://github.com/mcquin))

**Closed issues:**

- Chef::Provider::User::Dscl raises Encoding::CompatibilityError with parental controls defined [\#2162](https://github.com/chef/chef/issues/2162)
- remote-directory is inconsistent with remote-file [\#2161](https://github.com/chef/chef/issues/2161)
- Strange "gce" attribute [\#2159](https://github.com/chef/chef/issues/2159)
- It's better to ask "How do I ... with chef?" questions to \#chef mailing list rather than filing a Github Issue [\#2158](https://github.com/chef/chef/issues/2158)
- Using sort in chef partial search does not produce expected results [\#2153](https://github.com/chef/chef/issues/2153)
- Chef Server API - Support Conditional PUTs for Chef Node Updates [\#2152](https://github.com/chef/chef/issues/2152)
- TFS integration with Chef [\#2146](https://github.com/chef/chef/issues/2146)
- Question: Attribute with empty value acquires the value of next attribute [\#2138](https://github.com/chef/chef/issues/2138)
- MySQL run on aws ami's [\#2137](https://github.com/chef/chef/issues/2137)
- Proxy settings not consistent across resources [\#2132](https://github.com/chef/chef/issues/2132)
- How to increase bootstrap time out ..?? [\#2124](https://github.com/chef/chef/issues/2124)
- knife search role:rolename doesn't return correct results [\#2115](https://github.com/chef/chef/issues/2115)
- Add remote-file silent option? [\#2112](https://github.com/chef/chef/issues/2112)
- chef-solo throws exception when gem\_package is called [\#2111](https://github.com/chef/chef/issues/2111)
- knife xargs documentation is inaccurate [\#2110](https://github.com/chef/chef/issues/2110)
- dpkg status database is locked by another process [\#2106](https://github.com/chef/chef/issues/2106)
- Error syncing the cookbook on the chef-client node [\#2104](https://github.com/chef/chef/issues/2104)
- Error Attempting to Upgrade from Open Source Chef 11 to Chef 12RC4 [\#2093](https://github.com/chef/chef/issues/2093)
- Installation of Chef Server 12 on fresh Ubuntu 12.04 x64 machine fails [\#2089](https://github.com/chef/chef/issues/2089)
- Question : Error passing double quoted string to Partial Search [\#2085](https://github.com/chef/chef/issues/2085)
- It is possible to gather sensitive debugging information from Chef server's application error [\#2083](https://github.com/chef/chef/issues/2083)
- vagrant provision throws 404 error [\#2077](https://github.com/chef/chef/issues/2077)
- Block Ruby from using proxy when it should not be using proxy [\#2076](https://github.com/chef/chef/issues/2076)
- 404 errors when retrieving metadata file. [\#2075](https://github.com/chef/chef/issues/2075)
- Downloading Chef 11.16.2 for ubuntu failed [\#2072](https://github.com/chef/chef/issues/2072)
- Fetching omnibus installer returns 404 [\#2071](https://github.com/chef/chef/issues/2071)
- Knife cookbook upload all hangs for 10 minutes on last cookbook upload [\#2070](https://github.com/chef/chef/issues/2070)
- ohai plugin fails in yajl json library encode [\#2069](https://github.com/chef/chef/issues/2069)
- Best way to match client and server? [\#2068](https://github.com/chef/chef/issues/2068)
- the install.sh can't determine my version! [\#2063](https://github.com/chef/chef/issues/2063)
- Uploading a cookbook with a 3.5mb file fails [\#2043](https://github.com/chef/chef/issues/2043)
- Chef Metal and vagrant Provider. [\#1999](https://github.com/chef/chef/issues/1999)
- SSL -  Certifcate not valid for hostname, but it's equal to CN \(former untrusted SAN-certificate\) [\#1970](https://github.com/chef/chef/issues/1970)
- powershell\_script guards written as strings do not work [\#1943](https://github.com/chef/chef/issues/1943)
- chef-client doesn't retry on HTTP 50X error when calling Chef REST API [\#1904](https://github.com/chef/chef/issues/1904)
- 12.0.0.alpha.0  Error with 'knife cookbook upload' command [\#1869](https://github.com/chef/chef/issues/1869)
- Debian packages no longer include distribution version [\#1865](https://github.com/chef/chef/issues/1865)
- Chef should use HTTP\_PROXY / HTTPS\_PROXY environment variables [\#1665](https://github.com/chef/chef/issues/1665)

**Merged pull requests:**

- CHANGELOG and version updates for 11.16.4. [\#2182](https://github.com/chef/chef/pull/2182) ([sersut](https://github.com/sersut))
- Make FileVendor configuration specific to the two implementations [\#2179](https://github.com/chef/chef/pull/2179) ([sersut](https://github.com/sersut))
- serverspec 2 fixes [\#2178](https://github.com/chef/chef/pull/2178) ([lamont-granquist](https://github.com/lamont-granquist))
- add changelog for 50x errors [\#2156](https://github.com/chef/chef/pull/2156) ([lamont-granquist](https://github.com/lamont-granquist))
- Match group func tests to specification [\#2154](https://github.com/chef/chef/pull/2154) ([btm](https://github.com/btm))
- Merge pull request \#1912 from jessehu/CHEF-ISSUE-1904 [\#2151](https://github.com/chef/chef/pull/2151) ([sersut](https://github.com/sersut))
- Jdmundrawala/11 windows env fix [\#2142](https://github.com/chef/chef/pull/2142) ([jaym](https://github.com/jaym))
- Deprecate CookbookVersion\#latest\_cookbooks [\#2141](https://github.com/chef/chef/pull/2141) ([mcquin](https://github.com/mcquin))
- Jdmundrawala/provider specs [\#2136](https://github.com/chef/chef/pull/2136) ([jaym](https://github.com/jaym))
- Make knife unit tests pass on windows [\#2135](https://github.com/chef/chef/pull/2135) ([jaym](https://github.com/jaym))
- Databag spec specifies not windows [\#2134](https://github.com/chef/chef/pull/2134) ([jaym](https://github.com/jaym))
- Remote directory should pass specs [\#2133](https://github.com/chef/chef/pull/2133) ([jaym](https://github.com/jaym))
- Windows can have git as well [\#2131](https://github.com/chef/chef/pull/2131) ([jaym](https://github.com/jaym))
- Fixing cookbook loading for windows [\#2130](https://github.com/chef/chef/pull/2130) ([jaym](https://github.com/jaym))
- adding CHANGELOG for omnibus-chef 2.1.3 update [\#2128](https://github.com/chef/chef/pull/2128) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix RHEL pre 7 provider service mapping [\#2123](https://github.com/chef/chef/pull/2123) ([andytson](https://github.com/andytson))
- Quietly keep locale en\_US.UTF-8 on Windows [\#2122](https://github.com/chef/chef/pull/2122) ([btm](https://github.com/btm))
- Finishing encrypted data bag UX [\#2118](https://github.com/chef/chef/pull/2118) ([tyler-ball](https://github.com/tyler-ball))
- Support checkout for git \< 1.7.3 [\#2116](https://github.com/chef/chef/pull/2116) ([jaym](https://github.com/jaym))
- Disable unforked interval runs. [\#2101](https://github.com/chef/chef/pull/2101) ([mcquin](https://github.com/mcquin))
- Restoring https://github.com/opscode/chef/pull/1921 to master [\#2094](https://github.com/chef/chef/pull/2094) ([tyler-ball](https://github.com/tyler-ball))
- Platform/dsc phase 1 rebase [\#2091](https://github.com/chef/chef/pull/2091) ([jaym](https://github.com/jaym))
- Fix test failure happening only on Jenkins 12.04+1.9.3: don't call File.... [\#2088](https://github.com/chef/chef/pull/2088) ([randomcamel](https://github.com/randomcamel))
- Fix Debian ifconfig unit test on Windows. [\#2080](https://github.com/chef/chef/pull/2080) ([randomcamel](https://github.com/randomcamel))
- Doc changes for the core reboot resource. [\#2067](https://github.com/chef/chef/pull/2067) ([randomcamel](https://github.com/randomcamel))
- removing shelling out to erubis/ruby [\#2046](https://github.com/chef/chef/pull/2046) ([lamont-granquist](https://github.com/lamont-granquist))
- retry on HTTP 50X Error when calling Chef REST API [\#1912](https://github.com/chef/chef/pull/1912) ([jessehu](https://github.com/jessehu))

## [10.34.4](https://github.com/chef/chef/tree/10.34.4) (2014-09-17)
[Full Changelog](https://github.com/chef/chef/compare/11.16.2...10.34.4)

## [11.16.2](https://github.com/chef/chef/tree/11.16.2) (2014-09-17)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.alpha.2...11.16.2)

**Implemented enhancements:**

- Add --encrypt flag to knife data bag create [\#1850](https://github.com/chef/chef/issues/1850)

**Closed issues:**

- chef dk install panel incomplete install path [\#2054](https://github.com/chef/chef/issues/2054)

**Merged pull requests:**

- Thanks to Lamont, fix trusted certs test failures on Windows. [\#2064](https://github.com/chef/chef/pull/2064) ([randomcamel](https://github.com/randomcamel))
- Fix the integration tests so they pass on Windows. [\#2059](https://github.com/chef/chef/pull/2059) ([randomcamel](https://github.com/randomcamel))
- Change :ssl\_verify\_mode config default to :verify\_peer [\#2012](https://github.com/chef/chef/pull/2012) ([mcquin](https://github.com/mcquin))

## [12.0.0.alpha.2](https://github.com/chef/chef/tree/12.0.0.alpha.2) (2014-09-15)
[Full Changelog](https://github.com/chef/chef/compare/11.16.0...12.0.0.alpha.2)

**Implemented enhancements:**

- Add a Reboot resource into core. [\#1979](https://github.com/chef/chef/pull/1979) ([randomcamel](https://github.com/randomcamel))
- Unicode fixes for Chef 12 [\#1977](https://github.com/chef/chef/pull/1977) ([lamont-granquist](https://github.com/lamont-granquist))

**Fixed bugs:**

- file resource fails with relative path on Windows  [\#1842](https://github.com/chef/chef/issues/1842)
- Shellout Encoding LC\_ALL coderage [\#1593](https://github.com/chef/chef/issues/1593)

**Closed issues:**

- Chef 12 alpha1 fails to install [\#2044](https://github.com/chef/chef/issues/2044)
- Chef download site internal error [\#2040](https://github.com/chef/chef/issues/2040)
- issue: node.save fails [\#2019](https://github.com/chef/chef/issues/2019)
- Question: Creating node attribute in recipe [\#2017](https://github.com/chef/chef/issues/2017)
- STDERR: 'msiexec' is not recognized as an internal or external command [\#2016](https://github.com/chef/chef/issues/2016)
- knife ec2 \(AWS linux PV Image\) [\#2015](https://github.com/chef/chef/issues/2015)
- Chef client installation fails in MacOS on shasum checksum validation [\#2014](https://github.com/chef/chef/issues/2014)
- ec2 bootstrap fails for FreeBSD machines! [\#2011](https://github.com/chef/chef/issues/2011)
- Bootstrap info bug [\#2010](https://github.com/chef/chef/issues/2010)
- YAJL internal error: attempted use of non-string object as key [\#1993](https://github.com/chef/chef/issues/1993)
- remote\_file on windows with a local file path throws error [\#1918](https://github.com/chef/chef/issues/1918)
- 11.14 breaks remote\_file for HTTP redirects [\#1863](https://github.com/chef/chef/issues/1863)

**Merged pull requests:**

- Spec fixes for Windows [\#2035](https://github.com/chef/chef/pull/2035) ([randomcamel](https://github.com/randomcamel))
- Rebase and ChangeLOG of pr/1898 [\#2033](https://github.com/chef/chef/pull/2033) ([lamont-granquist](https://github.com/lamont-granquist))
- Rebase and ChangeLOG for pr/1785 [\#2032](https://github.com/chef/chef/pull/2032) ([lamont-granquist](https://github.com/lamont-granquist))
- Rebase and ChangeLog for PR 1577 [\#2031](https://github.com/chef/chef/pull/2031) ([lamont-granquist](https://github.com/lamont-granquist))
- pull ohai rc release [\#2025](https://github.com/chef/chef/pull/2025) ([lamont-granquist](https://github.com/lamont-granquist))
- Add ChefFS rdoc, format existing ChefFS rdoc correctly [\#2023](https://github.com/chef/chef/pull/2023) ([jkeiser](https://github.com/jkeiser))
- \[master/12\] Fix whyrun\_safe\_ruby\_block regression [\#2022](https://github.com/chef/chef/pull/2022) ([jaymzh](https://github.com/jaymzh))
- \[11\] Fix whyrun\_safe\_ruby\_block regression [\#2021](https://github.com/chef/chef/pull/2021) ([jaymzh](https://github.com/jaymzh))
- fixing travis LC\_ALL errors [\#2020](https://github.com/chef/chef/pull/2020) ([lamont-granquist](https://github.com/lamont-granquist))
- Mcquin/transfer trusted certs [\#2003](https://github.com/chef/chef/pull/2003) ([mcquin](https://github.com/mcquin))
- Don't prepend \\?\ to relative paths, it produces an invalid path argument. [\#1901](https://github.com/chef/chef/pull/1901) ([randomcamel](https://github.com/randomcamel))

## [11.16.0](https://github.com/chef/chef/tree/11.16.0) (2014-09-07)
[Full Changelog](https://github.com/chef/chef/compare/11.16.0.rc.2...11.16.0)

## [11.16.0.rc.2](https://github.com/chef/chef/tree/11.16.0.rc.2) (2014-09-06)
[Full Changelog](https://github.com/chef/chef/compare/11.16.0.rc.1...11.16.0.rc.2)

**Implemented enhancements:**

- Homebrew As OS X Default Package Provider [\#1709](https://github.com/chef/chef/issues/1709)
- Chef should have a native partial search library [\#1514](https://github.com/chef/chef/issues/1514)
- Result filtering on search \(also known as Partial Search\) [\#1555](https://github.com/chef/chef/pull/1555) ([scotthain](https://github.com/scotthain))

**Closed issues:**

- logrotation for nginx with chef-server omnibus [\#2001](https://github.com/chef/chef/issues/2001)
- Chef Metal and vagrant Provider. [\#1998](https://github.com/chef/chef/issues/1998)
- Change the default service provider for Ubuntu for 13.10 in Chef 12 [\#1983](https://github.com/chef/chef/issues/1983)
- remote\_file not working for very large files [\#1981](https://github.com/chef/chef/issues/1981)

**Merged pull requests:**

- Depend on released Ohai 7.4 for Chef 11.16.0.rc.2 [\#2008](https://github.com/chef/chef/pull/2008) ([adamedx](https://github.com/adamedx))
- Make Chef::Config.versioned\_cookbooks configurable by consumers [\#2005](https://github.com/chef/chef/pull/2005) ([jkeiser](https://github.com/jkeiser))
- Port Chef 1982 to 10-stable [\#1989](https://github.com/chef/chef/pull/1989) ([sersut](https://github.com/sersut))
- Use homebrew for default package provider on OS X [\#1921](https://github.com/chef/chef/pull/1921) ([jtimberman](https://github.com/jtimberman))

## [11.16.0.rc.1](https://github.com/chef/chef/tree/11.16.0.rc.1) (2014-09-05)
[Full Changelog](https://github.com/chef/chef/compare/11.16.0.rc.0...11.16.0.rc.1)

**Fixed bugs:**

- Fix dscl user provider to be able to manage home and password at the same time. [\#1982](https://github.com/chef/chef/pull/1982) ([sersut](https://github.com/sersut))

**Merged pull requests:**

- Port Chef 1982 DSCL provider [\#1996](https://github.com/chef/chef/pull/1996) ([adamedx](https://github.com/adamedx))
- Print out request and response body on non-2xx response [\#1995](https://github.com/chef/chef/pull/1995) ([jkeiser](https://github.com/jkeiser))
- Update documentation / release notes [\#1990](https://github.com/chef/chef/pull/1990) ([btm](https://github.com/btm))
- Update documentation / release notes [\#1987](https://github.com/chef/chef/pull/1987) ([adamedx](https://github.com/adamedx))
- DscScript resource will raise an error if dsc is not available [\#1985](https://github.com/chef/chef/pull/1985) ([jaym](https://github.com/jaym))
- lcm parser is a lot more forgiving [\#1978](https://github.com/chef/chef/pull/1978) ([jaym](https://github.com/jaym))
- configuration\_generator\_spec uses newer rspec conventions [\#1967](https://github.com/chef/chef/pull/1967) ([jaym](https://github.com/jaym))
- Make local mode multi-tenant by default, add organization option [\#1960](https://github.com/chef/chef/pull/1960) ([jkeiser](https://github.com/jkeiser))

## [11.16.0.rc.0](https://github.com/chef/chef/tree/11.16.0.rc.0) (2014-09-04)
[Full Changelog](https://github.com/chef/chef/compare/10.34.2...11.16.0.rc.0)

**Implemented enhancements:**

- Automatically detect encrypted data bag items \(version \> 0\) [\#1849](https://github.com/chef/chef/issues/1849)
- Knife prefers 'config.rb' to 'knife.rb' \(but the latter is still supported and not deprecated\) [\#1964](https://github.com/chef/chef/pull/1964) ([danielsdeleo](https://github.com/danielsdeleo))
- Add --ssl-verify-mode and --\[no-\]verify-api-cert options. [\#1895](https://github.com/chef/chef/pull/1895) ([mcquin](https://github.com/mcquin))
- Autodetect encrypted data bag items in data\_bag\_item dsl method. [\#1853](https://github.com/chef/chef/pull/1853) ([mcquin](https://github.com/mcquin))
- CHEF-4101: DeepMerge - support overwriting hash values with nil [\#1851](https://github.com/chef/chef/pull/1851) ([lamont-granquist](https://github.com/lamont-granquist))

**Fixed bugs:**

- 'options' attribute is not passed to package or yum\_package resource [\#1874](https://github.com/chef/chef/issues/1874)
- Chef client is not being idempotent on user account creation [\#1705](https://github.com/chef/chef/issues/1705)
- Unable to use a cert with Subject Alternative Names [\#1700](https://github.com/chef/chef/issues/1700)
- CookbookSiteStreamingUploader and StreamingCookbookUploader classes are not using ssl\_verify config [\#1518](https://github.com/chef/chef/issues/1518)
- response.body may be nil [\#1896](https://github.com/chef/chef/pull/1896) ([lamont-granquist](https://github.com/lamont-granquist))

**Closed issues:**

- Knife cookbook upload "succeeds" if remote chef server is out of storage space [\#1966](https://github.com/chef/chef/issues/1966)
- Unable to retrieve a valid package! [\#1956](https://github.com/chef/chef/issues/1956)
- Chef Server runit install fails on CentOS 7 [\#1955](https://github.com/chef/chef/issues/1955)
- chef dk does not work if installed some place other than the C drive on windows [\#1950](https://github.com/chef/chef/issues/1950)
- Chef-server breaks when api\_fqdn modified [\#1941](https://github.com/chef/chef/issues/1941)
- Chef client can not save node data to the server [\#1937](https://github.com/chef/chef/issues/1937)
- Error in exception message https://github.com/opscode/chef/blob/master/lib/chef/client.rb\#L333 [\#1922](https://github.com/chef/chef/issues/1922)
- Windows client does not download cookbook files [\#1916](https://github.com/chef/chef/issues/1916)
- Not able to install chef manage [\#1893](https://github.com/chef/chef/issues/1893)
- Make default setting of :encrypted\_data\_bag\_secret nil. [\#1861](https://github.com/chef/chef/issues/1861)

**Merged pull requests:**

- Make Chef::Util::Powershell::Cmdlet Ruby 1.8.7 friendly [\#1976](https://github.com/chef/chef/pull/1976) ([btm](https://github.com/btm))
- Platform/11 dsc [\#1975](https://github.com/chef/chef/pull/1975) ([btm](https://github.com/btm))
- Check the group membership using dscl on Mac in specs. [\#1973](https://github.com/chef/chef/pull/1973) ([sersut](https://github.com/sersut))
- Cleanup dsc\_script\_spec to use newer rspec conventions [\#1968](https://github.com/chef/chef/pull/1968) ([jaym](https://github.com/jaym))
- DSC resource modules that have not been imported can cause failures [\#1958](https://github.com/chef/chef/pull/1958) ([adamedx](https://github.com/adamedx))
- Fix Windows path bugs, run all config tests against Windows [\#1954](https://github.com/chef/chef/pull/1954) ([adamedx](https://github.com/adamedx))
- Added test for \#generate\_description in provider/dsc\_script\_spec [\#1953](https://github.com/chef/chef/pull/1953) ([jaym](https://github.com/jaym))
- Better logging for dsc scripts with multiple resources [\#1952](https://github.com/chef/chef/pull/1952) ([jaym](https://github.com/jaym))
- Switch back to ChefZero::RSpec version 3 [\#1951](https://github.com/chef/chef/pull/1951) ([jkeiser](https://github.com/jkeiser))
- DSC spec platform detection via WMI [\#1949](https://github.com/chef/chef/pull/1949) ([adamedx](https://github.com/adamedx))
- change mysql-client package [\#1947](https://github.com/chef/chef/pull/1947) ([adamedx](https://github.com/adamedx))
- DSC specs and fixes for whatif parsing [\#1945](https://github.com/chef/chef/pull/1945) ([adamedx](https://github.com/adamedx))
- Clean up acl data handler, add username to user handler for cheffish [\#1939](https://github.com/chef/chef/pull/1939) ([jkeiser](https://github.com/jkeiser))
- Remove deprecated @node ivars [\#1938](https://github.com/chef/chef/pull/1938) ([jkeiser](https://github.com/jkeiser))
- Lcg/changelog cleanup [\#1890](https://github.com/chef/chef/pull/1890) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/1781 [\#1889](https://github.com/chef/chef/pull/1889) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/1738 [\#1888](https://github.com/chef/chef/pull/1888) ([lamont-granquist](https://github.com/lamont-granquist))
- Chef 12 bootstrap cleanup [\#1885](https://github.com/chef/chef/pull/1885) ([sersut](https://github.com/sersut))
- Lcg/1726 [\#1884](https://github.com/chef/chef/pull/1884) ([lamont-granquist](https://github.com/lamont-granquist))
- dsc\_script DSC configurationdata support [\#1877](https://github.com/chef/chef/pull/1877) ([adamedx](https://github.com/adamedx))
- Use path\_join to create local-mode-cache [\#1854](https://github.com/chef/chef/pull/1854) ([lamont-granquist](https://github.com/lamont-granquist))
- Make sure to call chef-client and knife that we just built [\#1583](https://github.com/chef/chef/pull/1583) ([juliandunn](https://github.com/juliandunn))

## [10.34.2](https://github.com/chef/chef/tree/10.34.2) (2014-08-21)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.alpha.1...10.34.2)

## [12.0.0.alpha.1](https://github.com/chef/chef/tree/12.0.0.alpha.1) (2014-08-21)
[Full Changelog](https://github.com/chef/chef/compare/10.34.0...12.0.0.alpha.1)

**Implemented enhancements:**

- Add simple DSL method to interact with encrypted data bags [\#1710](https://github.com/chef/chef/issues/1710)

**Closed issues:**

- chef-client merge default and override attributes if run in local-mode [\#1879](https://github.com/chef/chef/issues/1879)

**Merged pull requests:**

- Lcg/1561 [\#1883](https://github.com/chef/chef/pull/1883) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/insert at [\#1873](https://github.com/chef/chef/pull/1873) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/digester [\#1872](https://github.com/chef/chef/pull/1872) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/supermarket urls [\#1871](https://github.com/chef/chef/pull/1871) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/digester singleton [\#1870](https://github.com/chef/chef/pull/1870) ([lamont-granquist](https://github.com/lamont-granquist))
- DSC as a script-like resource [\#1846](https://github.com/chef/chef/pull/1846) ([adamedx](https://github.com/adamedx))

## [10.34.0](https://github.com/chef/chef/tree/10.34.0) (2014-08-19)
[Full Changelog](https://github.com/chef/chef/compare/11.14.6...10.34.0)

**Closed issues:**

- Need to manually install ruby-wmi for chef-windows-11.14 \(regression from 11.12\) [\#1856](https://github.com/chef/chef/issues/1856)
- Windows env issue [\#1828](https://github.com/chef/chef/issues/1828)

**Merged pull requests:**

- Disable functional dscl specs on non-mac OSes. [\#1852](https://github.com/chef/chef/pull/1852) ([sersut](https://github.com/sersut))
- revert change for ubuntu and fix test user spec tests [\#1847](https://github.com/chef/chef/pull/1847) ([kaustubh-d](https://github.com/kaustubh-d))
- Merge pull request \#1800 from opscode/sersut/chef\#1634 [\#1845](https://github.com/chef/chef/pull/1845) ([sersut](https://github.com/sersut))

## [11.14.6](https://github.com/chef/chef/tree/11.14.6) (2014-08-18)
[Full Changelog](https://github.com/chef/chef/compare/11.14.4...11.14.6)

**Closed issues:**

- when is Chef 11.14.4 going to be released? [\#1840](https://github.com/chef/chef/issues/1840)
- ERROR: knife search failed: invalid 'start' value: '' [\#1822](https://github.com/chef/chef/issues/1822)
- Using local file repository with chef [\#1804](https://github.com/chef/chef/issues/1804)

**Merged pull requests:**

- Modify travis notifications so that we are notified only when a stable branch is broken. [\#1844](https://github.com/chef/chef/pull/1844) ([sersut](https://github.com/sersut))
- Port the fixes that slipped through the cracks for 11.14.4 [\#1843](https://github.com/chef/chef/pull/1843) ([sersut](https://github.com/sersut))
- disable rhel tests completely for now [\#1841](https://github.com/chef/chef/pull/1841) ([lamont-granquist](https://github.com/lamont-granquist))
- Forcing dependency on Ohai w/ PS plugin [\#1836](https://github.com/chef/chef/pull/1836) ([jaym](https://github.com/jaym))
- Spelling error [\#1831](https://github.com/chef/chef/pull/1831) ([jbsmith86](https://github.com/jbsmith86))

## [11.14.4](https://github.com/chef/chef/tree/11.14.4) (2014-08-15)
[Full Changelog](https://github.com/chef/chef/compare/11.14.2...11.14.4)

**Implemented enhancements:**

- Require `name` Attribute in Cookbook Metadata [\#1712](https://github.com/chef/chef/issues/1712)
- Support Chef Client on FreeBSD 10 [\#1491](https://github.com/chef/chef/issues/1491)
- Jdmundrawala/dsc script [\#1824](https://github.com/chef/chef/pull/1824) ([jaym](https://github.com/jaym))
- DSCL User Provider Rewrite [\#1800](https://github.com/chef/chef/pull/1800) ([sersut](https://github.com/sersut))
- CHEF-5022: Differentiate between Windows service startup\_types [\#1771](https://github.com/chef/chef/pull/1771) ([btm](https://github.com/btm))
- log resource should support why-run [\#1725](https://github.com/chef/chef/pull/1725) ([lamont-granquist](https://github.com/lamont-granquist))
- Added whitespace boundaries to some of the mount point references in mount resource [\#1719](https://github.com/chef/chef/pull/1719) ([eherot](https://github.com/eherot))
- Apply template syntax check to files in the templates dir only. This avo... [\#1681](https://github.com/chef/chef/pull/1681) ([victorhahncastell](https://github.com/victorhahncastell))
- shared\_path can be used to get the path to the shared\_path in deploy resource [\#1676](https://github.com/chef/chef/pull/1676) ([sawanoboly](https://github.com/sawanoboly))
- Parallels cloud server platform support. [\#1669](https://github.com/chef/chef/pull/1669) ([Kasen](https://github.com/Kasen))
- \[CHEF-5356-gcm\(2\)\] Encrypted data bags should use different HMAC key and include the IV in the HMAC [\#1591](https://github.com/chef/chef/pull/1591) ([zuazo](https://github.com/zuazo))
- use systemd for recent fedora and rhel 7 [\#1552](https://github.com/chef/chef/pull/1552) ([jordane](https://github.com/jordane))
- OC-10832 - AIX - group provider implementation [\#1180](https://github.com/chef/chef/pull/1180) ([kaustubh-d](https://github.com/kaustubh-d))
- \[CHEF-3399\] Make data\_bag\_path an array like cookbook\_path [\#1177](https://github.com/chef/chef/pull/1177) ([xeron](https://github.com/xeron))

**Fixed bugs:**

- chef-service-manager: Should it be run as Administrator? [\#1777](https://github.com/chef/chef/issues/1777)
- 11.14.2 broke JSON comments in knife commands [\#1775](https://github.com/chef/chef/issues/1775)
- FreeBSD package reports incorrect resource name [\#1773](https://github.com/chef/chef/issues/1773)
- Upgrade to 11.14.2, "knife environment edit foo" opening up a single line of JSON in an editor [\#1766](https://github.com/chef/chef/issues/1766)
- chef-client should never send negative values for duration to reporting [\#1765](https://github.com/chef/chef/issues/1765)
- Flash Attr allowScriptAccess insecurely set to Always  [\#1762](https://github.com/chef/chef/issues/1762)
- Autocomplete is enabled for Users Page [\#1761](https://github.com/chef/chef/issues/1761)
- Chef not using Secure Cookie with SSL Enabled [\#1759](https://github.com/chef/chef/issues/1759)
- Sensitive Pages are Cached [\#1757](https://github.com/chef/chef/issues/1757)
- Remote file not using defined proxy server [\#1748](https://github.com/chef/chef/issues/1748)
- Chef solo 11.14.2 fails due to incorrect DuplicateRole error [\#1739](https://github.com/chef/chef/issues/1739)
- Package remove fails on SLES without version number [\#1732](https://github.com/chef/chef/issues/1732)
- Ruby resource won't run as a user [\#1685](https://github.com/chef/chef/issues/1685)
- Duplicate Role error regular expressions need to be updated [\#1654](https://github.com/chef/chef/issues/1654)
- Non-system UID is too low in Chef::Provider::User::Dscl [\#1647](https://github.com/chef/chef/issues/1647)
- Chef 11.14.0.rc.2 can't show node objects in JSON format [\#1635](https://github.com/chef/chef/issues/1635)
- Support Mac 10.7 + in Chef::Provider::User::Dscl provider [\#1634](https://github.com/chef/chef/issues/1634)
- Chef Client Local Mode fails when run from a directory above the chef repo [\#1574](https://github.com/chef/chef/issues/1574)
- In 10.32.2 client, RPM package provider doesn't properly handle remove action when RPM not installed on system [\#1554](https://github.com/chef/chef/issues/1554)
- CookbookSiteStreamingUploader should use ssl\_verify\_mode config option. [\#1834](https://github.com/chef/chef/pull/1834) ([mcquin](https://github.com/mcquin))
- Name :freebsd\_package resource `package` to provide compat with ChefSpec. [\#1812](https://github.com/chef/chef/pull/1812) ([sersut](https://github.com/sersut))
- Chef::Exceptions::Env exception when modifying env resource ... [\#1774](https://github.com/chef/chef/pull/1774) ([adamedx](https://github.com/adamedx))
- chef-client should never send negative values for duration to reporting [\#1772](https://github.com/chef/chef/pull/1772) ([jeremiahsnapp](https://github.com/jeremiahsnapp))
- fix SuSE package removal failure [\#1743](https://github.com/chef/chef/pull/1743) ([juliandunn](https://github.com/juliandunn))
- Fix duplicate check regex [\#1742](https://github.com/chef/chef/pull/1742) ([CloCkWeRX](https://github.com/CloCkWeRX))
- Reverse the error wording in Chef::ChefFS::FileSystem\#copy\_entries [\#1734](https://github.com/chef/chef/pull/1734) ([jeremiahsnapp](https://github.com/jeremiahsnapp))
- Lcg/file provider fixes [\#1715](https://github.com/chef/chef/pull/1715) ([lamont-granquist](https://github.com/lamont-granquist))
- git provider fails on existing branch names [\#1694](https://github.com/chef/chef/pull/1694) ([jordane](https://github.com/jordane))
- Some minor fixes for the Paludis package provider [\#1680](https://github.com/chef/chef/pull/1680) ([tbe](https://github.com/tbe))
- \[CHEF-1652\] Fix force flag [\#1667](https://github.com/chef/chef/pull/1667) ([parabuzzle](https://github.com/parabuzzle))
- Bad handling of ShellOut:live\_stream [\#1658](https://github.com/chef/chef/pull/1658) ([kgraham](https://github.com/kgraham))
- Chef::VersionConstraint\#to\_s should accurately reflect the constraint's behavior [\#1638](https://github.com/chef/chef/pull/1638) ([bcobb](https://github.com/bcobb))
- Add "force" attribute to resource/user, passing "-f" to userdel [\#1616](https://github.com/chef/chef/pull/1616) ([chr4](https://github.com/chr4))
- Don't modify variable passed to env resource when updating [\#1597](https://github.com/chef/chef/pull/1597) ([linkfanel](https://github.com/linkfanel))
- Fix ResourceReporter\#post\_reporting\_data http error handling. Fixes \#1550 [\#1551](https://github.com/chef/chef/pull/1551) ([hltbra](https://github.com/hltbra))
- \[OC-11667\] Don't overwrite the :default provider map if :default is passed as the platform [\#1527](https://github.com/chef/chef/pull/1527) ([ryancragun](https://github.com/ryancragun))

**Closed issues:**

- Can't set attributes inside a node array item hash. [\#1818](https://github.com/chef/chef/issues/1818)
- Problem with attributes called "size" ? [\#1815](https://github.com/chef/chef/issues/1815)
- knife bootstrap throws back 404 [\#1813](https://github.com/chef/chef/issues/1813)
- Knife Bootstrap failing on OSX 10.10 DP5 [\#1805](https://github.com/chef/chef/issues/1805)
- Chef server doesn't work on ec2 flawlessly [\#1780](https://github.com/chef/chef/issues/1780)
- package resource fails on .deb package [\#1763](https://github.com/chef/chef/issues/1763)
- knife bootstrap windows winrm error [\#1760](https://github.com/chef/chef/issues/1760)
- install.sh can't find chef-client [\#1758](https://github.com/chef/chef/issues/1758)
- Chef solo hangs after "Starting Chef Client, version" message [\#1756](https://github.com/chef/chef/issues/1756)
- knife cookbook site download failing for some cookbooks [\#1755](https://github.com/chef/chef/issues/1755)
- Omnibus installer 11.14.2-1 installs with wrong uid/gid on Ubuntu. [\#1750](https://github.com/chef/chef/issues/1750)
- replacing ruby-wmi with wmi-lite breaks windows and chef-client cookbooks [\#1749](https://github.com/chef/chef/issues/1749)
- chef-client v 11.14.0 introduces error for freebsd cookbook [\#1745](https://github.com/chef/chef/issues/1745)
- Error installing chef on CoreOS [\#1735](https://github.com/chef/chef/issues/1735)
- Hitting libffi.so.6 Unsafe Dependency when trying to build s390x chef-client [\#1733](https://github.com/chef/chef/issues/1733)
- http\_request resource :get does not return body of the request. [\#1729](https://github.com/chef/chef/issues/1729)
- NoMethodError in ruby\_block.rb [\#1722](https://github.com/chef/chef/issues/1722)
- Enable client-side key generation by default [\#1711](https://github.com/chef/chef/issues/1711)
- Hash Syntax [\#1696](https://github.com/chef/chef/issues/1696)
- Chef pre-11.14.0 LWRP base exception [\#1666](https://github.com/chef/chef/issues/1666)
- how can i remove recipe from current run\_list? [\#1631](https://github.com/chef/chef/issues/1631)
- git Provider Unable To Handle Private Repos Without known\_hosts [\#1545](https://github.com/chef/chef/issues/1545)
- Remove recipe DSL from base provider [\#1446](https://github.com/chef/chef/issues/1446)

**Merged pull requests:**

- Merge pull request \#1832 from opscode/lcg/proxy-var-fixes [\#1838](https://github.com/chef/chef/pull/1838) ([sersut](https://github.com/sersut))
- Don't swallow end to end failures [\#1835](https://github.com/chef/chef/pull/1835) ([mcquin](https://github.com/mcquin))
- Lcg/proxy var fixes [\#1832](https://github.com/chef/chef/pull/1832) ([lamont-granquist](https://github.com/lamont-granquist))
- Run end to end tests conditionally on presence of secure env vars. [\#1829](https://github.com/chef/chef/pull/1829) ([mcquin](https://github.com/mcquin))
- Updated powershell functional tests to work with changes to Chef::Util::Powershell:Cmdlet [\#1826](https://github.com/chef/chef/pull/1826) ([jaym](https://github.com/jaym))
- Merge pull request \#1812 from opscode/sersut/chef-1773 [\#1823](https://github.com/chef/chef/pull/1823) ([sersut](https://github.com/sersut))
- Remove recipe DSL from base provider. [\#1820](https://github.com/chef/chef/pull/1820) ([mcquin](https://github.com/mcquin))
- Merge pull request \#1800 from opscode/sersut/chef\#1634 [\#1816](https://github.com/chef/chef/pull/1816) ([sersut](https://github.com/sersut))
- Do not use :Win32 outside of let, describe, it blocks since we don't have it ready yet. [\#1814](https://github.com/chef/chef/pull/1814) ([sersut](https://github.com/sersut))
- add rhel 7 e2e test [\#1811](https://github.com/chef/chef/pull/1811) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/json comment tests [\#1810](https://github.com/chef/chef/pull/1810) ([lamont-granquist](https://github.com/lamont-granquist))
- Metadata name docs updates [\#1809](https://github.com/chef/chef/pull/1809) ([danielsdeleo](https://github.com/danielsdeleo))
- remove some uses of from\_json [\#1806](https://github.com/chef/chef/pull/1806) ([lamont-granquist](https://github.com/lamont-granquist))
- Issue 1754: Modify action for env resource on Windows raises exception [\#1803](https://github.com/chef/chef/pull/1803) ([adamedx](https://github.com/adamedx))
- fix specs broken due to JSON monkeypatching issues [\#1802](https://github.com/chef/chef/pull/1802) ([lamont-granquist](https://github.com/lamont-granquist))
- Make `name` attribute required in cookbook metadata, and respect it [\#1790](https://github.com/chef/chef/pull/1790) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/remove json monkeypatching [\#1787](https://github.com/chef/chef/pull/1787) ([lamont-granquist](https://github.com/lamont-granquist))
- add json pretty print tests to some knife show commands [\#1786](https://github.com/chef/chef/pull/1786) ([lamont-granquist](https://github.com/lamont-granquist))
- Integration test refactor [\#1783](https://github.com/chef/chef/pull/1783) ([danielsdeleo](https://github.com/danielsdeleo))
- AIX functional tests involving BFF need to be run as root. [\#1782](https://github.com/chef/chef/pull/1782) ([juliandunn](https://github.com/juliandunn))
- Create a cookbook and test it on Ubuntu 12.04 [\#1764](https://github.com/chef/chef/pull/1764) ([mcquin](https://github.com/mcquin))
- Adds Supermarket CLA links [\#1752](https://github.com/chef/chef/pull/1752) ([cwebberOps](https://github.com/cwebberOps))
- Fix OSX Group provider to be properly idempotent [\#1747](https://github.com/chef/chef/pull/1747) ([jaymzh](https://github.com/jaymzh))
- Fix OSX Group provider to be properly idempotent [\#1746](https://github.com/chef/chef/pull/1746) ([jaymzh](https://github.com/jaymzh))
- Fix MVPs [\#1741](https://github.com/chef/chef/pull/1741) ([juliandunn](https://github.com/juliandunn))
- revert this line [\#1736](https://github.com/chef/chef/pull/1736) ([lamont-granquist](https://github.com/lamont-granquist))
- Replace single quotes with double-quotes. [\#1731](https://github.com/chef/chef/pull/1731) ([dkinzer](https://github.com/dkinzer))
- Lcg/http resource query string [\#1730](https://github.com/chef/chef/pull/1730) ([lamont-granquist](https://github.com/lamont-granquist))
- Run Test Kitchen on Travis [\#1688](https://github.com/chef/chef/pull/1688) ([mcquin](https://github.com/mcquin))

## [11.14.2](https://github.com/chef/chef/tree/11.14.2) (2014-07-31)
[Full Changelog](https://github.com/chef/chef/compare/12.0.0.alpha.0...11.14.2)

**Fixed bugs:**

- knife cookbook site share "undefined method `has\_key?' for nil:NilClass" [\#1620](https://github.com/chef/chef/issues/1620)
- cookbook\_file doesn't always copy the files in the chef client's cache [\#1605](https://github.com/chef/chef/issues/1605)

## [12.0.0.alpha.0](https://github.com/chef/chef/tree/12.0.0.alpha.0) (2014-07-30)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0...12.0.0.alpha.0)

**Merged pull requests:**

- Policyfile fixes [\#1716](https://github.com/chef/chef/pull/1716) ([danielsdeleo](https://github.com/danielsdeleo))

## [11.14.0](https://github.com/chef/chef/tree/11.14.0) (2014-07-30)
[Full Changelog](https://github.com/chef/chef/compare/10.34.0.rc.1...11.14.0)

**Fixed bugs:**

- http://www.opscode.com/chef/download-server not reachable [\#1677](https://github.com/chef/chef/issues/1677)
- Allow an array in default\_action [\#1670](https://github.com/chef/chef/pull/1670) ([sethvargo](https://github.com/sethvargo))

**Closed issues:**

- support systemd in rhel7 [\#1717](https://github.com/chef/chef/issues/1717)
- whyrun doesn't print diffs in chef 11 [\#1706](https://github.com/chef/chef/issues/1706)
- Internal service error: knife cookbook upload [\#1693](https://github.com/chef/chef/issues/1693)
- ERROR 404 - Unable to retrieve a valid package! [\#1686](https://github.com/chef/chef/issues/1686)
- Command prompt in chef [\#1674](https://github.com/chef/chef/issues/1674)
- chef-server RabbitMQ not starting on Gentoo [\#1672](https://github.com/chef/chef/issues/1672)
- chef-server 11.1.3-1 upgrade fails [\#1595](https://github.com/chef/chef/issues/1595)

**Merged pull requests:**

- Lcg/fix dpkg [\#1720](https://github.com/chef/chef/pull/1720) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/shellout to base provider2 [\#1707](https://github.com/chef/chef/pull/1707) ([lamont-granquist](https://github.com/lamont-granquist))
- add shell\_out mixins to recipe DSL [\#1702](https://github.com/chef/chef/pull/1702) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/merge from 11 stable [\#1682](https://github.com/chef/chef/pull/1682) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/yay chef 12 [\#1663](https://github.com/chef/chef/pull/1663) ([lamont-granquist](https://github.com/lamont-granquist))
- Print deprecation notices for chef-repo rake tasks [\#1646](https://github.com/chef/chef/pull/1646) ([jtimberman](https://github.com/jtimberman))

## [10.34.0.rc.1](https://github.com/chef/chef/tree/10.34.0.rc.1) (2014-07-22)
[Full Changelog](https://github.com/chef/chef/compare/10.34.0.rc.0...10.34.0.rc.1)

**Merged pull requests:**

- bump version to 12.0.0.alpha.0 [\#1661](https://github.com/chef/chef/pull/1661) ([lamont-granquist](https://github.com/lamont-granquist))
- remove threads from nonessential code pieces [\#1659](https://github.com/chef/chef/pull/1659) ([lamont-granquist](https://github.com/lamont-granquist))
- pin ffi\_yajl to 1.0.0 with semver constraint [\#1636](https://github.com/chef/chef/pull/1636) ([lamont-granquist](https://github.com/lamont-granquist))
- remove rest-client gem [\#1409](https://github.com/chef/chef/pull/1409) ([lamont-granquist](https://github.com/lamont-granquist))

## [10.34.0.rc.0](https://github.com/chef/chef/tree/10.34.0.rc.0) (2014-07-17)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.rc.2...10.34.0.rc.0)

**Implemented enhancements:**

- Allow lazy attribute defaults in LWRPs [\#1559](https://github.com/chef/chef/pull/1559) ([sethvargo](https://github.com/sethvargo))

**Fixed bugs:**

- chef-client doesn't set Net::HTTP open\_timeout  [\#1585](https://github.com/chef/chef/issues/1585)
- Hosted Chef stores IAM profile credentials [\#1558](https://github.com/chef/chef/issues/1558)
- Backport https://github.com/opscode/chef/commit/e85f791ece68e43053acfe44... [\#1655](https://github.com/chef/chef/pull/1655) ([sersut](https://github.com/sersut))
- \[Issue 1554\] Don't detect package name as version when the RPM isn't ins... [\#1623](https://github.com/chef/chef/pull/1623) ([ryancragun](https://github.com/ryancragun))

**Closed issues:**

- Customization of 'activemq' admin console from 'out of box' default setup [\#1645](https://github.com/chef/chef/issues/1645)
- Order of Operations [\#1630](https://github.com/chef/chef/issues/1630)
- Chef-client must be installed twice when upgrading [\#1621](https://github.com/chef/chef/issues/1621)
- proxy support for remote\_file \(possibly other things\) with uri is broken \(http/basic\_client.rb\) [\#1618](https://github.com/chef/chef/issues/1618)
- Chef-Client: Error 413 - Disabling Ohai plugin does not work. [\#1615](https://github.com/chef/chef/issues/1615)
- Cookbooks should put platform-specific dependencies within an OS check [\#1613](https://github.com/chef/chef/issues/1613)
- Please improve documentation for Library and Namespaces [\#1607](https://github.com/chef/chef/issues/1607)
- bootstrap fails to download chef 11.14.0.alpha.1 [\#1603](https://github.com/chef/chef/issues/1603)

**Merged pull requests:**

- Lcg/11 stable merges [\#1657](https://github.com/chef/chef/pull/1657) ([lamont-granquist](https://github.com/lamont-granquist))
- Update gemspec URL and domain name [\#1649](https://github.com/chef/chef/pull/1649) ([juliandunn](https://github.com/juliandunn))
- Lock down rest-client to \<= 1.6.7 [\#1644](https://github.com/chef/chef/pull/1644) ([schisamo](https://github.com/schisamo))
- Chef CVT Fixes for Azure [\#1639](https://github.com/chef/chef/pull/1639) ([sersut](https://github.com/sersut))
- Correct link to ticket/issue tracker [\#1637](https://github.com/chef/chef/pull/1637) ([samdunne](https://github.com/samdunne))
- Backport lazy and DSL superclass to 11-stable [\#1633](https://github.com/chef/chef/pull/1633) ([sethvargo](https://github.com/sethvargo))
- Update expected result when LC\_ALL is not set in Windows. [\#1629](https://github.com/chef/chef/pull/1629) ([mcquin](https://github.com/mcquin))
- Add url scheme to proxy, if not present. [\#1624](https://github.com/chef/chef/pull/1624) ([mcquin](https://github.com/mcquin))
- Set Net::HTTP open\_timeout [\#1608](https://github.com/chef/chef/pull/1608) ([mcquin](https://github.com/mcquin))
- office hours -\> developer office hours [\#1606](https://github.com/chef/chef/pull/1606) ([btm](https://github.com/btm))
- vtolstov: reload service only if it running, if not - start [\#1581](https://github.com/chef/chef/pull/1581) ([mcquin](https://github.com/mcquin))

## [11.14.0.rc.2](https://github.com/chef/chef/tree/11.14.0.rc.2) (2014-07-02)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.rc.1...11.14.0.rc.2)

**Implemented enhancements:**

- Add shell\_out\_with\_systems\_locale to ShellOut [\#1548](https://github.com/chef/chef/pull/1548) ([mcquin](https://github.com/mcquin))

**Fixed bugs:**

- remove inheritance from apt\_package [\#1589](https://github.com/chef/chef/pull/1589) ([lamont-granquist](https://github.com/lamont-granquist))
- Disable upstart provider on ubuntu \>= 13.10. [\#1582](https://github.com/chef/chef/pull/1582) ([sersut](https://github.com/sersut))
- Chef 4994: knife cookbook site share fails on windows [\#1565](https://github.com/chef/chef/pull/1565) ([jmink](https://github.com/jmink))

**Closed issues:**

- Packacke Resource on Ubuntu Platforms not correctly reported \(ChefSpec fails\) [\#1580](https://github.com/chef/chef/issues/1580)
- Chef server broken on Debian \(initctl missing\) [\#1578](https://github.com/chef/chef/issues/1578)

**Merged pull requests:**

- add relnotes for ffi-yajl [\#1599](https://github.com/chef/chef/pull/1599) ([lamont-granquist](https://github.com/lamont-granquist))
- Revert the provider indirection logic in Chef::Provider::Package::Apt. [\#1598](https://github.com/chef/chef/pull/1598) ([sersut](https://github.com/sersut))
- Backport CHEF-5223 to 10-stable [\#1594](https://github.com/chef/chef/pull/1594) ([jaymzh](https://github.com/jaymzh))
- Do not update the path in the cookbook\_manifest with the full file name. [\#1588](https://github.com/chef/chef/pull/1588) ([sersut](https://github.com/sersut))
- Add missing requires to HTTP and HTTP::Simple [\#1575](https://github.com/chef/chef/pull/1575) ([danielsdeleo](https://github.com/danielsdeleo))
- Add note about office hours to CONTRIBUTING.md [\#1573](https://github.com/chef/chef/pull/1573) ([btm](https://github.com/btm))
- Pick the ffi version compliant ohai version. [\#1572](https://github.com/chef/chef/pull/1572) ([sersut](https://github.com/sersut))

## [11.14.0.rc.1](https://github.com/chef/chef/tree/11.14.0.rc.1) (2014-06-27)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.rc.0...11.14.0.rc.1)

## [11.14.0.rc.0](https://github.com/chef/chef/tree/11.14.0.rc.0) (2014-06-27)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.alpha.4...11.14.0.rc.0)

**Implemented enhancements:**

- Chef should have a resilient retry logic for cookbook download / upload to handle temp S3 Errors [\#1513](https://github.com/chef/chef/issues/1513)
- Delegate DSL method values to their superclass [\#1553](https://github.com/chef/chef/pull/1553) ([sethvargo](https://github.com/sethvargo))
- \[CHEF-5314\] Support override\_runlist CLI option in shef/chef-shell [\#1444](https://github.com/chef/chef/pull/1444) ([ryancragun](https://github.com/ryancragun))
- \[CHEF-5314\] Support override\_runlist CLI option in shef/chef-shell [\#1443](https://github.com/chef/chef/pull/1443) ([ryancragun](https://github.com/ryancragun))
- git resource status checking saves 1 shell\_out system call [\#1425](https://github.com/chef/chef/pull/1425) ([rvalyi](https://github.com/rvalyi))
- next try to add exherbo linux support [\#1414](https://github.com/chef/chef/pull/1414) ([vtolstov](https://github.com/vtolstov))
- CHEF-5261 Added some tests to prevent double slashes [\#1396](https://github.com/chef/chef/pull/1396) ([svanharmelen](https://github.com/svanharmelen))
- Warning if target hostname resembles "knife bootstrap windows winrm" command. [\#1364](https://github.com/chef/chef/pull/1364) ([curiositycasualty](https://github.com/curiositycasualty))
- \[CHEF-3637\] Add support for automatically using the Systemd service provider [\#506](https://github.com/chef/chef/pull/506) ([ctennis](https://github.com/ctennis))

**Fixed bugs:**

- ResourceReporter\#post\_reporting\_data does not handle 50x errors [\#1550](https://github.com/chef/chef/issues/1550)
- 32 bit Windows claiming to be 64 bit [\#1549](https://github.com/chef/chef/issues/1549)
- Omnibus installer error on AWS [\#1544](https://github.com/chef/chef/issues/1544)
- Can not install the latest Chef server\(11.1.1\) on a Debian machine [\#1541](https://github.com/chef/chef/issues/1541)
- service action :start fails on Windows if service is already running [\#1511](https://github.com/chef/chef/issues/1511)
- remote\_file url redirects not being followed correctly causing Chef::Exceptions::RedirectLimitExceeded [\#1510](https://github.com/chef/chef/issues/1510)
- Change --yum-lock-timeout option action to store. [\#1564](https://github.com/chef/chef/pull/1564) ([mcquin](https://github.com/mcquin))
- CHEF-5287: batch resource: can't convert nil into String due to invalid ENV hash [\#1531](https://github.com/chef/chef/pull/1531) ([adamedx](https://github.com/adamedx))
- remove setting proxy environment variables [\#1526](https://github.com/chef/chef/pull/1526) ([mcquin](https://github.com/mcquin))
- Allow cssh\(X\) to respect identity\_file [\#1520](https://github.com/chef/chef/pull/1520) ([curiositycasualty](https://github.com/curiositycasualty))
- \[chef\_fs/file\_system\] Ignore missing entry at destination when purging [\#1519](https://github.com/chef/chef/pull/1519) ([stevendanna](https://github.com/stevendanna))
- CHEF-5365 - chef local crashes if home directory is not set [\#1494](https://github.com/chef/chef/pull/1494) ([brettcave](https://github.com/brettcave))
- \[CHEF-5366\] Install on ArchLinux as a system gem explicitly [\#1487](https://github.com/chef/chef/pull/1487) ([aespinosa](https://github.com/aespinosa))
- Chef 4600 [\#1483](https://github.com/chef/chef/pull/1483) ([mcquin](https://github.com/mcquin))
- CHEF-5347: Allow for undefined solaris services in the service resource. [\#1477](https://github.com/chef/chef/pull/1477) ([MarkGibbons](https://github.com/MarkGibbons))
- Fix CHEF-5355. Don't pass on default HTTP port \(80\) in Host header. \[rebased on master\] [\#1471](https://github.com/chef/chef/pull/1471) ([kjwierenga](https://github.com/kjwierenga))
- save non-utf-8 encodable registry key data to node as an md5 checksum [\#1470](https://github.com/chef/chef/pull/1470) ([mcquin](https://github.com/mcquin))
- \[CHEF-5168\] Apt Package provider times out [\#1462](https://github.com/chef/chef/pull/1462) ([pdf](https://github.com/pdf))
- \[CHEF-5328\] Chef::User.list API error with inflate=true  [\#1456](https://github.com/chef/chef/pull/1456) ([zuazo](https://github.com/zuazo))
- Only modify password when one has been specified [\#1455](https://github.com/chef/chef/pull/1455) ([anandsuresh](https://github.com/anandsuresh))
- \[CHEF-5309\] add exception that happens nowadays when JSON parsing fails [\#1439](https://github.com/chef/chef/pull/1439) ([srenatus](https://github.com/srenatus))
- CHEF-3193: LOCK\_TIMEOUT in yum-dump.py should be configurable [\#1436](https://github.com/chef/chef/pull/1436) ([kramvan1](https://github.com/kramvan1))
- CHEF-5247: Fix Useradd\#manage\_user backdoor [\#1423](https://github.com/chef/chef/pull/1423) ([btm](https://github.com/btm))
- CHEF-5265 - upstart service not working correctly when called with parameters [\#1418](https://github.com/chef/chef/pull/1418) ([tarrall](https://github.com/tarrall))
- CHEF-5276, use upstart on ubuntu 13.10+ [\#1412](https://github.com/chef/chef/pull/1412) ([jtimberman](https://github.com/jtimberman))
- \[CHEF-4224\] tracing? throws an exception when chef-shell is first started [\#1404](https://github.com/chef/chef/pull/1404) ([juliandunn](https://github.com/juliandunn))
- Fix resource\_spec.rb: it's only\_if and not\_if [\#1263](https://github.com/chef/chef/pull/1263) ([srenatus](https://github.com/srenatus))
- OC-9954 - aix: use 'guest' user for rspec tests instead of 'nobody' user... [\#1164](https://github.com/chef/chef/pull/1164) ([kaustubh-d](https://github.com/kaustubh-d))
- \[CHEF-4562\] Remove leading underscore [\#1000](https://github.com/chef/chef/pull/1000) ([ljagiello](https://github.com/ljagiello))
- \[CHEF-4298\] dependencies in metadata.rb require a space [\#848](https://github.com/chef/chef/pull/848) ([zuazo](https://github.com/zuazo))
- \[CHEF-4193\] Enabling storage of roles in subdirectories [\#759](https://github.com/chef/chef/pull/759) ([bensomers](https://github.com/bensomers))

**Closed issues:**

- Unable to bootstrap on Cloudshare  [\#1569](https://github.com/chef/chef/issues/1569)
- After rebooting the chef-workstation it looses the configuration settings [\#1543](https://github.com/chef/chef/issues/1543)
- Add gemspec for 'x64-mingw32' platform [\#1535](https://github.com/chef/chef/issues/1535)
- Changelog should link to the final blog posts not RCs [\#1522](https://github.com/chef/chef/issues/1522)

**Merged pull requests:**

- Merge master into 11-stable for 11.14.0 release. [\#1571](https://github.com/chef/chef/pull/1571) ([sersut](https://github.com/sersut))
- Only check WOW64 process when system architecture is x64. [\#1560](https://github.com/chef/chef/pull/1560) ([sersut](https://github.com/sersut))
- Remove confusing gemspec comment about the no-longer-used json gem [\#1547](https://github.com/chef/chef/pull/1547) ([juliandunn](https://github.com/juliandunn))
- replace ruby-yajl with ffi-yajl gem  [\#1540](https://github.com/chef/chef/pull/1540) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-5158: Prefer CLI argument over configuration file setting for ssh\_attribute [\#1530](https://github.com/chef/chef/pull/1530) ([btm](https://github.com/btm))
- Bump ffi version since chef-dk depends on chef and dep-selector and dep-selector uses ~\> 1.9. [\#1528](https://github.com/chef/chef/pull/1528) ([sersut](https://github.com/sersut))
- Use FFI binders to attach :SendMessageTimeout instead of Win32API in ord... [\#1525](https://github.com/chef/chef/pull/1525) ([mcquin](https://github.com/mcquin))
- Updated changelog [\#1502](https://github.com/chef/chef/pull/1502) ([scotthain](https://github.com/scotthain))
- Updated tests with more complicated data, fixed regex [\#1501](https://github.com/chef/chef/pull/1501) ([scotthain](https://github.com/scotthain))
- Updated selinux path check to allow for directories that have a space in... [\#1500](https://github.com/chef/chef/pull/1500) ([scotthain](https://github.com/scotthain))
- Update the expired cert for specs. [\#1498](https://github.com/chef/chef/pull/1498) ([sersut](https://github.com/sersut))
- \[trivial\] typo [\#1497](https://github.com/chef/chef/pull/1497) ([atomic-penguin](https://github.com/atomic-penguin))
- update for today's merges [\#1493](https://github.com/chef/chef/pull/1493) ([mcquin](https://github.com/mcquin))
- Skip all unsupported platforms in remount test [\#1489](https://github.com/chef/chef/pull/1489) ([danielsdeleo](https://github.com/danielsdeleo))
- update for merges [\#1486](https://github.com/chef/chef/pull/1486) ([mcquin](https://github.com/mcquin))
- Add .project to .gitignore [\#1482](https://github.com/chef/chef/pull/1482) ([ekrupnik](https://github.com/ekrupnik))
- update for merges [\#1480](https://github.com/chef/chef/pull/1480) ([mcquin](https://github.com/mcquin))
- chef community merges [\#1478](https://github.com/chef/chef/pull/1478) ([mcquin](https://github.com/mcquin))
- CHEF-5273 - Corretly detect when rpm\_package does not exist in upgrade action [\#1407](https://github.com/chef/chef/pull/1407) ([robbydyer](https://github.com/robbydyer))
- CHEF-4778: Doc fix to highlight that -E is not respected by knife ssh \[search\]  [\#1130](https://github.com/chef/chef/pull/1130) ([philsturgeon](https://github.com/philsturgeon))
- Add Code Climate badge to README [\#1039](https://github.com/chef/chef/pull/1039) ([mrb](https://github.com/mrb))

## [11.14.0.alpha.4](https://github.com/chef/chef/tree/11.14.0.alpha.4) (2014-06-06)
[Full Changelog](https://github.com/chef/chef/compare/11.12.8...11.14.0.alpha.4)

**Merged pull requests:**

- Delete duplicate :host default [\#1475](https://github.com/chef/chef/pull/1475) ([jkeiser](https://github.com/jkeiser))

## [11.12.8](https://github.com/chef/chef/tree/11.12.8) (2014-06-05)
[Full Changelog](https://github.com/chef/chef/compare/11.12.6...11.12.8)

**Implemented enhancements:**

- CHEF-5322: Add utility for validating Windows paths [\#1449](https://github.com/chef/chef/pull/1449) ([btm](https://github.com/btm))

**Merged pull requests:**

- Pin chef-zero to \< 2.1 in order not to pick up default port changes in chef-zero 2.1.x [\#1473](https://github.com/chef/chef/pull/1473) ([sersut](https://github.com/sersut))
- Update CONTRIBUTING.md per new Github process. [\#1463](https://github.com/chef/chef/pull/1463) ([sersut](https://github.com/sersut))

## [11.12.6](https://github.com/chef/chef/tree/11.12.6) (2014-06-05)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.alpha.3...11.12.6)

**Implemented enhancements:**

- Do not print SSL warning when running chef-client in local-mode [\#1461](https://github.com/chef/chef/issues/1461)
- Add mount provider for Solaris OS and derivates [\#1451](https://github.com/chef/chef/pull/1451) ([lamont-granquist](https://github.com/lamont-granquist))

**Fixed bugs:**

- omnios uses solaris2-like usermod for groups [\#1466](https://github.com/chef/chef/pull/1466) ([rjbs](https://github.com/rjbs))
- automatically enable verify\_api\_cert when in local-mode [\#1464](https://github.com/chef/chef/pull/1464) ([mcquin](https://github.com/mcquin))
- set ENV vars for http proxies [\#1459](https://github.com/chef/chef/pull/1459) ([mcquin](https://github.com/mcquin))

**Closed issues:**

- Properly document what node\_path means in solo config [\#1465](https://github.com/chef/chef/issues/1465)

**Merged pull requests:**

- fix for rspec 2.99 [\#1469](https://github.com/chef/chef/pull/1469) ([lamont-granquist](https://github.com/lamont-granquist))
- Do not wait for clean exit when Exception is thrown [\#1467](https://github.com/chef/chef/pull/1467) ([jkeiser](https://github.com/jkeiser))

## [11.14.0.alpha.3](https://github.com/chef/chef/tree/11.14.0.alpha.3) (2014-05-30)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.alpha.2...11.14.0.alpha.3)

**Implemented enhancements:**

- Add "knife serve" to serve up chef repo in chef-zero [\#1458](https://github.com/chef/chef/pull/1458) ([jkeiser](https://github.com/jkeiser))
- Parallelizer improvements [\#1440](https://github.com/chef/chef/pull/1440) ([jkeiser](https://github.com/jkeiser))
- OC-9274 - Knife bootstrap support for AIX [\#1032](https://github.com/chef/chef/pull/1032) ([kaustubh-d](https://github.com/kaustubh-d))

**Fixed bugs:**

- Put cache at HOME/.chef if /var/chef can't be accessed. [\#1442](https://github.com/chef/chef/pull/1442) ([mcquin](https://github.com/mcquin))
- Replace ruby-wmi dependency with wmi-lite to address Ruby 2.0 faults [\#1435](https://github.com/chef/chef/pull/1435) ([adamedx](https://github.com/adamedx))
- CHEF-4791 Add more windows service states to the start/stop control flow [\#1166](https://github.com/chef/chef/pull/1166) ([deployable](https://github.com/deployable))

**Merged pull requests:**

- Fix some mount provider rage [\#1454](https://github.com/chef/chef/pull/1454) ([lamont-granquist](https://github.com/lamont-granquist))
- Updates to CHANGELOG and CONTRIBUTIONS [\#1450](https://github.com/chef/chef/pull/1450) ([sersut](https://github.com/sersut))
- Remove unneeded requires when using CookbookVersionLoader [\#1445](https://github.com/chef/chef/pull/1445) ([danielsdeleo](https://github.com/danielsdeleo))
- Cookbook synchronization speedup \(CHEF-4423\) [\#1434](https://github.com/chef/chef/pull/1434) ([mcquin](https://github.com/mcquin))
- CHEF-4911: Use the :bootstrap\_version if set by the user. [\#1432](https://github.com/chef/chef/pull/1432) ([sersut](https://github.com/sersut))
- add whitelist config options for attributes saved by the node [\#1431](https://github.com/chef/chef/pull/1431) ([mcquin](https://github.com/mcquin))
- \[CHEF-5289\] Remove 'Opscode' from service description [\#1422](https://github.com/chef/chef/pull/1422) ([juliandunn](https://github.com/juliandunn))
- CHEF-4637 - Add support for the new generation FreeBSD package manager [\#1421](https://github.com/chef/chef/pull/1421) ([sersut](https://github.com/sersut))
- Give -p option to install.sh if we are bootstrapping a pre-release version [\#1420](https://github.com/chef/chef/pull/1420) ([sersut](https://github.com/sersut))
- add knife options for chef-full customization [\#1419](https://github.com/chef/chef/pull/1419) ([mcquin](https://github.com/mcquin))
- Contribution information for some tickets. [\#1417](https://github.com/chef/chef/pull/1417) ([sersut](https://github.com/sersut))
- \[CHEF-5269\] Added additional ruby environment files to .gitignore. [\#1403](https://github.com/chef/chef/pull/1403) ([alex-ethier](https://github.com/alex-ethier))
- Lcg/chef 5015 [\#1383](https://github.com/chef/chef/pull/1383) ([lamont-granquist](https://github.com/lamont-granquist))
- \[CHEF-5163\] Support lazy evaluation the mount resource's options attr [\#1366](https://github.com/chef/chef/pull/1366) ([stevendanna](https://github.com/stevendanna))
- \[CHEF-5163\] Support lazy evaluation the mount resource's options attr [\#1356](https://github.com/chef/chef/pull/1356) ([stevendanna](https://github.com/stevendanna))
- Don't eat the authentication failed exception on bootstrap [\#1333](https://github.com/chef/chef/pull/1333) ([hongbin](https://github.com/hongbin))
- CHEF-5092: chef\_gem should use omnibus `gem` binary [\#1300](https://github.com/chef/chef/pull/1300) ([lamont-granquist](https://github.com/lamont-granquist))
- Enable Travis CI notifications [\#1287](https://github.com/chef/chef/pull/1287) ([schisamo](https://github.com/schisamo))

## [11.14.0.alpha.2](https://github.com/chef/chef/tree/11.14.0.alpha.2) (2014-05-07)
[Full Changelog](https://github.com/chef/chef/compare/11.12.4...11.14.0.alpha.2)

**Merged pull requests:**

- Fix issue with tests and Windows line endings [\#1413](https://github.com/chef/chef/pull/1413) ([jkeiser](https://github.com/jkeiser))
- \[CHEF-4636\] Removed dead code [\#1406](https://github.com/chef/chef/pull/1406) ([alex-ethier](https://github.com/alex-ethier))
- Add option to abandon chef run if blocked by another for too long. [\#1401](https://github.com/chef/chef/pull/1401) ([mcquin](https://github.com/mcquin))
- Switch to ruby 2.1.1 to workaround travis rvm issue [\#1400](https://github.com/chef/chef/pull/1400) ([danielsdeleo](https://github.com/danielsdeleo))
- Bump win32-api to a ruby 2.0 compatible version [\#1399](https://github.com/chef/chef/pull/1399) ([danielsdeleo](https://github.com/danielsdeleo))
- collect :user\_home at correct time, for windows [\#1398](https://github.com/chef/chef/pull/1398) ([mcquin](https://github.com/mcquin))
- Make command output indentable [\#1397](https://github.com/chef/chef/pull/1397) ([jkeiser](https://github.com/jkeiser))

## [11.12.4](https://github.com/chef/chef/tree/11.12.4) (2014-04-30)
[Full Changelog](https://github.com/chef/chef/compare/11.12.4.rc.2...11.12.4)

**Merged pull requests:**

- Contribution info for CC-113 [\#1394](https://github.com/chef/chef/pull/1394) ([sersut](https://github.com/sersut))
- \[CHEF-5180\] For consistency, use the username attribute to print the name of the resource in why-run mode. [\#1357](https://github.com/chef/chef/pull/1357) ([juliandunn](https://github.com/juliandunn))
- Fixed environment chop -\> chomp issue which truncated single character e... [\#1349](https://github.com/chef/chef/pull/1349) ([viyh](https://github.com/viyh))

## [11.12.4.rc.2](https://github.com/chef/chef/tree/11.12.4.rc.2) (2014-04-29)
[Full Changelog](https://github.com/chef/chef/compare/11.12.4.rc.1...11.12.4.rc.2)

**Merged pull requests:**

- Make it possible to include Chef::Provider / Chef::Resource [\#1392](https://github.com/chef/chef/pull/1392) ([jkeiser](https://github.com/jkeiser))
- Tidy tests [\#1391](https://github.com/chef/chef/pull/1391) ([danielsdeleo](https://github.com/danielsdeleo))
- Get local mode passing against Pedant [\#1386](https://github.com/chef/chef/pull/1386) ([jkeiser](https://github.com/jkeiser))

## [11.12.4.rc.1](https://github.com/chef/chef/tree/11.12.4.rc.1) (2014-04-23)
[Full Changelog](https://github.com/chef/chef/compare/11.12.4.rc.0...11.12.4.rc.1)

**Merged pull requests:**

- CHEF-5211: fix configure hostname guessing [\#1389](https://github.com/chef/chef/pull/1389) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.12.4.rc.0](https://github.com/chef/chef/tree/11.12.4.rc.0) (2014-04-23)
[Full Changelog](https://github.com/chef/chef/compare/11.12.2...11.12.4.rc.0)

**Merged pull requests:**

- Merge for release 11.12.4.rc.0 [\#1388](https://github.com/chef/chef/pull/1388) ([adamedx](https://github.com/adamedx))
- CHEF-5211: 'knife configure --initial' fails to load 'os' and 'hostname' ohai plugins properly [\#1387](https://github.com/chef/chef/pull/1387) ([adamedx](https://github.com/adamedx))
- CHEF-5100: moar func tests [\#1385](https://github.com/chef/chef/pull/1385) ([lamont-granquist](https://github.com/lamont-granquist))
- Make OS X service resource work when the plist doesn't exist yet. [\#1380](https://github.com/chef/chef/pull/1380) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-5198: adding func tests for Chef::HTTP clients [\#1377](https://github.com/chef/chef/pull/1377) ([lamont-granquist](https://github.com/lamont-granquist))
- Use the released versions of mixlib-shellout and ohai. [\#1376](https://github.com/chef/chef/pull/1376) ([sersut](https://github.com/sersut))
- CHEF-5198: add func tests for remote\_file [\#1370](https://github.com/chef/chef/pull/1370) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-5116 - Catch HTTPServerException for 404 in remote\_file retry [\#1358](https://github.com/chef/chef/pull/1358) ([johntdyer](https://github.com/johntdyer))

## [11.12.2](https://github.com/chef/chef/tree/11.12.2) (2014-04-09)
[Full Changelog](https://github.com/chef/chef/compare/10.32.2...11.12.2)

**Merged pull requests:**

- CHEF-5198: a better fix [\#1369](https://github.com/chef/chef/pull/1369) ([lamont-granquist](https://github.com/lamont-granquist))
- reorder middleware in chef::http::simple [\#1368](https://github.com/chef/chef/pull/1368) ([lamont-granquist](https://github.com/lamont-granquist))
- Wrap code in an instance\_eval context for syntax check. [\#1367](https://github.com/chef/chef/pull/1367) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.32.2](https://github.com/chef/chef/tree/10.32.2) (2014-04-09)
[Full Changelog](https://github.com/chef/chef/compare/10.32.0...10.32.2)

**Merged pull requests:**

- pin sdoc to make solaris builds happy [\#1365](https://github.com/chef/chef/pull/1365) ([lamont-granquist](https://github.com/lamont-granquist))

## [10.32.0](https://github.com/chef/chef/tree/10.32.0) (2014-04-08)
[Full Changelog](https://github.com/chef/chef/compare/11.12.0...10.32.0)

## [11.12.0](https://github.com/chef/chef/tree/11.12.0) (2014-04-08)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.alpha.1...11.12.0)

**Merged pull requests:**

- \[CHEF-4632\] backport \#1179 - bump up upper limit on json gem to 1.8.1 [\#1363](https://github.com/chef/chef/pull/1363) ([jaymzh](https://github.com/jaymzh))
- CHEF-5189 Correct link provider debug output [\#1362](https://github.com/chef/chef/pull/1362) ([jeremiahsnapp](https://github.com/jeremiahsnapp))

## [11.14.0.alpha.1](https://github.com/chef/chef/tree/11.14.0.alpha.1) (2014-04-07)
[Full Changelog](https://github.com/chef/chef/compare/11.12.0.rc.2...11.14.0.alpha.1)

## [11.12.0.rc.2](https://github.com/chef/chef/tree/11.12.0.rc.2) (2014-04-04)
[Full Changelog](https://github.com/chef/chef/compare/10.32.0.rc.1...11.12.0.rc.2)

**Merged pull requests:**

- \[11\] Don't catch SIGTERM if not in daemon mode [\#1315](https://github.com/chef/chef/pull/1315) ([jaymzh](https://github.com/jaymzh))
- \[10-stable\] Don't trap TERM if not in daemon mode [\#1314](https://github.com/chef/chef/pull/1314) ([jaymzh](https://github.com/jaymzh))

## [10.32.0.rc.1](https://github.com/chef/chef/tree/10.32.0.rc.1) (2014-04-01)
[Full Changelog](https://github.com/chef/chef/compare/11.12.0.rc.1...10.32.0.rc.1)

## [11.12.0.rc.1](https://github.com/chef/chef/tree/11.12.0.rc.1) (2014-03-31)
[Full Changelog](https://github.com/chef/chef/compare/10.32.0.rc.0...11.12.0.rc.1)

**Merged pull requests:**

- added require for config\_fetcher: CHEF-5169 [\#1354](https://github.com/chef/chef/pull/1354) ([josephrdsmith](https://github.com/josephrdsmith))
- Fix / Mark volatile the transient failures on Solaris. [\#1353](https://github.com/chef/chef/pull/1353) ([sersut](https://github.com/sersut))
- CVT: Mount spec should use File::expand\_path for symmetry on Windows [\#1352](https://github.com/chef/chef/pull/1352) ([adamedx](https://github.com/adamedx))

## [10.32.0.rc.0](https://github.com/chef/chef/tree/10.32.0.rc.0) (2014-03-31)
[Full Changelog](https://github.com/chef/chef/compare/11.14.0.alpha.0...10.32.0.rc.0)

## [11.14.0.alpha.0](https://github.com/chef/chef/tree/11.14.0.alpha.0) (2014-03-30)
[Full Changelog](https://github.com/chef/chef/compare/11.12.0.rc.0...11.14.0.alpha.0)

## [11.12.0.rc.0](https://github.com/chef/chef/tree/11.12.0.rc.0) (2014-03-30)
[Full Changelog](https://github.com/chef/chef/compare/11.12.0.alpha.1...11.12.0.rc.0)

**Merged pull requests:**

- Fix Windows 2003 CI issues [\#1348](https://github.com/chef/chef/pull/1348) ([sersut](https://github.com/sersut))
- CHEF-5015 force\_unlink should only unlink if the file exists [\#1347](https://github.com/chef/chef/pull/1347) ([jeremiahsnapp](https://github.com/jeremiahsnapp))
- Chef 4373 10x [\#1345](https://github.com/chef/chef/pull/1345) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix unit tests to not access /etc/chef/encrypted\_data\_bag\_secret [\#1342](https://github.com/chef/chef/pull/1342) ([danielsdeleo](https://github.com/danielsdeleo))
- Restore shadowing warning [\#1341](https://github.com/chef/chef/pull/1341) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix few typo [\#1339](https://github.com/chef/chef/pull/1339) ([nishigori](https://github.com/nishigori))
- Chef 4373 [\#1338](https://github.com/chef/chef/pull/1338) ([danielsdeleo](https://github.com/danielsdeleo))
- Restrict rake to 10.1.x because ruby 1.8 support was dropped in 10.2 [\#1336](https://github.com/chef/chef/pull/1336) ([danielsdeleo](https://github.com/danielsdeleo))
- Rescue TypeError duping un-dupable types in deep merge [\#1335](https://github.com/chef/chef/pull/1335) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-4888: Call WIN32OLE.ole\_initialize in sub-threads [\#1334](https://github.com/chef/chef/pull/1334) ([btm](https://github.com/btm))
- Chef 5134 [\#1331](https://github.com/chef/chef/pull/1331) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/chef 5041 content length [\#1329](https://github.com/chef/chef/pull/1329) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-5087: Add Windows Installer package provider [\#1328](https://github.com/chef/chef/pull/1328) ([btm](https://github.com/btm))
- Community contributions merge [\#1327](https://github.com/chef/chef/pull/1327) ([btm](https://github.com/btm))
- Remove Usermod group provider from Suse after fixing OHAI-339. [\#1325](https://github.com/chef/chef/pull/1325) ([sersut](https://github.com/sersut))
- CHEF-5057: Allow confirm prompt to have a default choice [\#1324](https://github.com/chef/chef/pull/1324) ([sersut](https://github.com/sersut))
- CC-53: More contribution info. [\#1322](https://github.com/chef/chef/pull/1322) ([sersut](https://github.com/sersut))
- CHEF-3714: add a file\_edited? method [\#1321](https://github.com/chef/chef/pull/1321) ([btm](https://github.com/btm))
- CC-52: Contribution information for the tickets merged from community. [\#1320](https://github.com/chef/chef/pull/1320) ([sersut](https://github.com/sersut))
- \[10-stable\] Fix crashes on invalid cache files [\#1319](https://github.com/chef/chef/pull/1319) ([jaymzh](https://github.com/jaymzh))
- Contributions merge [\#1318](https://github.com/chef/chef/pull/1318) ([btm](https://github.com/btm))
- CHEF-4553: Guard interpreter and powershell boolean awareness [\#1316](https://github.com/chef/chef/pull/1316) ([adamedx](https://github.com/adamedx))
- CHEF-3698: Do not set log\_level by default [\#1310](https://github.com/chef/chef/pull/1310) ([btm](https://github.com/btm))
- Don't honor splay setting when sent USR1 signal. [\#1308](https://github.com/chef/chef/pull/1308) ([sersut](https://github.com/sersut))
- Logic proposal for --force flag to delete the validators during client bulk delete. [\#1306](https://github.com/chef/chef/pull/1306) ([sersut](https://github.com/sersut))
- Emit a warning when loading recipe from cookbooks not in dependency graph \[CHEF-4367\] [\#1302](https://github.com/chef/chef/pull/1302) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-5118\] Add docs for Chef::EncryptedDataBag.load [\#1301](https://github.com/chef/chef/pull/1301) ([sethvargo](https://github.com/sethvargo))
- CHEF-5064: ensure Chef::REST does not modify options in-place [\#1280](https://github.com/chef/chef/pull/1280) ([josephholsten](https://github.com/josephholsten))
- \[CHEF-5037\] default to IPS packages on Solaris 5.11+ [\#1268](https://github.com/chef/chef/pull/1268) ([ccope](https://github.com/ccope))
- \[CHEF-5017\]\[Chef::Mixin::ShellOut\] Create a method to get IO for live stream. [\#1260](https://github.com/chef/chef/pull/1260) ([ryotarai](https://github.com/ryotarai))
- Update to allow boolean and numeric attributes [\#1245](https://github.com/chef/chef/pull/1245) ([slantview](https://github.com/slantview))
- CHEF-4990 Fix provider for the state of 'maintenance' Solaris  services. [\#1235](https://github.com/chef/chef/pull/1235) ([sawanoboly](https://github.com/sawanoboly))
- CHEF-4962, knife ssh will use a cloud attribute for port if available. [\#1213](https://github.com/chef/chef/pull/1213) ([jeffmendoza](https://github.com/jeffmendoza))
- Correct the Arch Linux mapping to use Systemd Service Provider [\#1191](https://github.com/chef/chef/pull/1191) ([andreasrs](https://github.com/andreasrs))
- CHEF-4643 Add cookbook versions to chef-client INFO and DEBUG logs [\#1059](https://github.com/chef/chef/pull/1059) ([jeremiahsnapp](https://github.com/jeremiahsnapp))
- CHEF-4443 - Always save the correct run list [\#948](https://github.com/chef/chef/pull/948) ([thommay](https://github.com/thommay))

## [11.12.0.alpha.1](https://github.com/chef/chef/tree/11.12.0.alpha.1) (2014-03-14)
[Full Changelog](https://github.com/chef/chef/compare/11.10.4.ohai7.0...11.12.0.alpha.1)

**Merged pull requests:**

- CC-51: Merging Chef Contributions. [\#1299](https://github.com/chef/chef/pull/1299) ([sersut](https://github.com/sersut))
- Make the initial  bootstrap message more user friendly. [\#1295](https://github.com/chef/chef/pull/1295) ([sersut](https://github.com/sersut))
- Upgrade ohai to 7.0.0.rc.0. [\#1294](https://github.com/chef/chef/pull/1294) ([sersut](https://github.com/sersut))
- Add enable/disable to MacOSX service provider [\#1292](https://github.com/chef/chef/pull/1292) ([jaymzh](https://github.com/jaymzh))
- New policy files for Chef 10.x branch. [\#1291](https://github.com/chef/chef/pull/1291) ([sersut](https://github.com/sersut))
- Update md files for three merged issues [\#1290](https://github.com/chef/chef/pull/1290) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-5030:  improve debian ifconfig provider code [\#1289](https://github.com/chef/chef/pull/1289) ([lamont-granquist](https://github.com/lamont-granquist))
- New policy files for Chef Client. [\#1285](https://github.com/chef/chef/pull/1285) ([sersut](https://github.com/sersut))
- CouchDB Creation Speedup [\#1284](https://github.com/chef/chef/pull/1284) ([sdelano](https://github.com/sdelano))
- Add enable/disable to MacOSX service provider [\#1267](https://github.com/chef/chef/pull/1267) ([jaymzh](https://github.com/jaymzh))
- CHEF-5001: tests for multiple rollbacks [\#1254](https://github.com/chef/chef/pull/1254) ([lamont-granquist](https://github.com/lamont-granquist))
- add ohai\[:machinename\] [\#1216](https://github.com/chef/chef/pull/1216) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-4773: ruby-shadow supports darwin+freebsd now [\#1126](https://github.com/chef/chef/pull/1126) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.10.4.ohai7.0](https://github.com/chef/chef/tree/11.10.4.ohai7.0) (2014-02-25)
[Full Changelog](https://github.com/chef/chef/compare/11.10.4...11.10.4.ohai7.0)

**Merged pull requests:**

- Add a --force option to protect against accidental deletion of validators [\#1272](https://github.com/chef/chef/pull/1272) ([jamesc](https://github.com/jamesc))
- New command line option for knife client create to create validator [\#1270](https://github.com/chef/chef/pull/1270) ([jamesc](https://github.com/jamesc))
- knife client show does not show validator/admin correctly [\#1269](https://github.com/chef/chef/pull/1269) ([jamesc](https://github.com/jamesc))

## [11.10.4](https://github.com/chef/chef/tree/11.10.4) (2014-02-20)
[Full Changelog](https://github.com/chef/chef/compare/11.10.4.rc.0...11.10.4)

**Merged pull requests:**

- Add an note about addtional bootstrap templates being deprecated [\#1274](https://github.com/chef/chef/pull/1274) ([btm](https://github.com/btm))

## [11.10.4.rc.0](https://github.com/chef/chef/tree/11.10.4.rc.0) (2014-02-20)
[Full Changelog](https://github.com/chef/chef/compare/10.30.4...11.10.4.rc.0)

**Merged pull requests:**

- Correctly order setup of reporting state in registry specs [\#1277](https://github.com/chef/chef/pull/1277) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-5052 Correctly set cookbook\_name and recipe\_name when cloning [\#1275](https://github.com/chef/chef/pull/1275) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-5032 Add permanent run list modification CLI option [\#1271](https://github.com/chef/chef/pull/1271) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.30.4](https://github.com/chef/chef/tree/10.30.4) (2014-02-17)
[Full Changelog](https://github.com/chef/chef/compare/11.10.2...10.30.4)

## [11.10.2](https://github.com/chef/chef/tree/11.10.2) (2014-02-17)
[Full Changelog](https://github.com/chef/chef/compare/10.30.4.rc.0...11.10.2)

## [10.30.4.rc.0](https://github.com/chef/chef/tree/10.30.4.rc.0) (2014-02-14)
[Full Changelog](https://github.com/chef/chef/compare/11.10.2.rc.0...10.30.4.rc.0)

## [11.10.2.rc.0](https://github.com/chef/chef/tree/11.10.2.rc.0) (2014-02-14)
[Full Changelog](https://github.com/chef/chef/compare/11.10.0...11.10.2.rc.0)

**Merged pull requests:**

- Contributions merge [\#1323](https://github.com/chef/chef/pull/1323) ([btm](https://github.com/btm))
- Lcg/chef 5018 [\#1262](https://github.com/chef/chef/pull/1262) ([lamont-granquist](https://github.com/lamont-granquist))
- Jc/backport event handlers config [\#1258](https://github.com/chef/chef/pull/1258) ([jamesc](https://github.com/jamesc))
- Localize rescues in Recipe method\_missing DSL [\#1256](https://github.com/chef/chef/pull/1256) ([danielsdeleo](https://github.com/danielsdeleo))
- Adding request\_id to the set of headers for every request that will be sent to erchef [\#1236](https://github.com/chef/chef/pull/1236) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))

## [11.10.0](https://github.com/chef/chef/tree/11.10.0) (2014-02-06)
[Full Changelog](https://github.com/chef/chef/compare/11.10.0.rc.1...11.10.0)

**Merged pull requests:**

- Use RubyVM to syntax check in-process where possible [\#1252](https://github.com/chef/chef/pull/1252) ([danielsdeleo](https://github.com/danielsdeleo))

## [11.10.0.rc.1](https://github.com/chef/chef/tree/11.10.0.rc.1) (2014-02-05)
[Full Changelog](https://github.com/chef/chef/compare/11.10.0.rc.0...11.10.0.rc.1)

**Merged pull requests:**

- OC-11191: Workaround for apparent memory leak in CHEF-5004 [\#1251](https://github.com/chef/chef/pull/1251) ([adamedx](https://github.com/adamedx))
- \[CHEF-3506\] suppress final node save when using override run list [\#1248](https://github.com/chef/chef/pull/1248) ([danielsdeleo](https://github.com/danielsdeleo))
- Delegate sync\_cookbooks to policy\_builder, subclasses rely on it [\#1247](https://github.com/chef/chef/pull/1247) ([danielsdeleo](https://github.com/danielsdeleo))
- Make sure --concurrency 1 works while uploading multiple cookbooks. [\#1246](https://github.com/chef/chef/pull/1246) ([sersut](https://github.com/sersut))
- Expose resource creation via more static methods [\#1241](https://github.com/chef/chef/pull/1241) ([danielsdeleo](https://github.com/danielsdeleo))
- Making sure that the resource\_name and resource\_id while being sent to reporting are always strings. [\#1240](https://github.com/chef/chef/pull/1240) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))
- Lcg/rspec 2.14 deprecation warnings [\#1238](https://github.com/chef/chef/pull/1238) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.10.0.rc.0](https://github.com/chef/chef/tree/11.10.0.rc.0) (2014-01-30)
[Full Changelog](https://github.com/chef/chef/compare/11.8.4.ohai7.0...11.10.0.rc.0)

**Merged pull requests:**

- Lcg/rspec 2.14 [\#1237](https://github.com/chef/chef/pull/1237) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-4885: Chef::ReservedNames::Win32::Version has invalid methods [\#1234](https://github.com/chef/chef/pull/1234) ([adamedx](https://github.com/adamedx))
- Remove most references to wiki from the README [\#1232](https://github.com/chef/chef/pull/1232) ([danielsdeleo](https://github.com/danielsdeleo))
- \[Chef 4983\] Undo changes to Chef::Client public API and add new public API for expanding the run list [\#1231](https://github.com/chef/chef/pull/1231) ([danielsdeleo](https://github.com/danielsdeleo))
- Experimental Policyfile support [\#1230](https://github.com/chef/chef/pull/1230) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-4502:  Validate Content-Length Field in HTTP requests [\#1227](https://github.com/chef/chef/pull/1227) ([lamont-granquist](https://github.com/lamont-granquist))
- OC-2192: change error message to suggest namespace collision between nod... [\#1222](https://github.com/chef/chef/pull/1222) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.8.4.ohai7.0](https://github.com/chef/chef/tree/11.8.4.ohai7.0) (2014-01-20)
[Full Changelog](https://github.com/chef/chef/compare/11.10.0.alpha.1...11.8.4.ohai7.0)

**Merged pull requests:**

- CHEF-4963 - Mixlib-shellout library is incorrect for Chef 11.8.2 [\#1221](https://github.com/chef/chef/pull/1221) ([sersut](https://github.com/sersut))
- CHEF-4639: writing credentials files with `file` or `template` may leak credentials in diffs [\#1220](https://github.com/chef/chef/pull/1220) ([sersut](https://github.com/sersut))
- WIP: attempt to save CHEF-2418 [\#1218](https://github.com/chef/chef/pull/1218) ([lamont-granquist](https://github.com/lamont-granquist))
- fix platform\_family check for fedora [\#1215](https://github.com/chef/chef/pull/1215) ([lamont-granquist](https://github.com/lamont-granquist))
- Ohai 7 Compatibility for Chef [\#1214](https://github.com/chef/chef/pull/1214) ([sersut](https://github.com/sersut))
- Lock `sdoc` down to `~\> 0.3.0` [\#1211](https://github.com/chef/chef/pull/1211) ([schisamo](https://github.com/schisamo))
- Extract policy building concerns from Chef::Client [\#1210](https://github.com/chef/chef/pull/1210) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-4946\] Don't try to install ruby-shadow on cygwin [\#1209](https://github.com/chef/chef/pull/1209) ([linkfanel](https://github.com/linkfanel))
- CHEF-3012: Windows group provider is not idempotent for domain users [\#1207](https://github.com/chef/chef/pull/1207) ([adamedx](https://github.com/adamedx))
- CHEF-4927 - coerce group GID to string [\#1202](https://github.com/chef/chef/pull/1202) ([jtimberman](https://github.com/jtimberman))
- Add Ruby 2.1.0 to travis matrix [\#1201](https://github.com/chef/chef/pull/1201) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-4913: ffi 1.3.1 is too low a version when using Ruby 2.0.0 with Windows [\#1199](https://github.com/chef/chef/pull/1199) ([adamedx](https://github.com/adamedx))
- multiple dep lines no longer supported by bundler [\#1196](https://github.com/chef/chef/pull/1196) ([lamont-granquist](https://github.com/lamont-granquist))
- Temporarily for travis to use rubygems 2.1.x [\#1194](https://github.com/chef/chef/pull/1194) ([danielsdeleo](https://github.com/danielsdeleo))
- Always run `chef-client` via `ruby PATH/TO/chef-client` in tests. [\#1193](https://github.com/chef/chef/pull/1193) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-4913\] Bump ffi version to 1.5.0 [\#1192](https://github.com/chef/chef/pull/1192) ([lushc](https://github.com/lushc))
- Add support for loading a static list of plugin files. [\#1186](https://github.com/chef/chef/pull/1186) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-4762: http\_request with action :head does not behave correctly in 1.8.0 [\#1183](https://github.com/chef/chef/pull/1183) ([zuazo](https://github.com/zuazo))
- bump up upper limit on json gem to 1.8.1 [\#1179](https://github.com/chef/chef/pull/1179) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-4850 Close file in Chef::Util::FileEdit after reading contents [\#1161](https://github.com/chef/chef/pull/1161) ([deployable](https://github.com/deployable))
- \[CHEF-4799\] Handle non-dupable elements when duping attribute arrays [\#1135](https://github.com/chef/chef/pull/1135) ([brugidou](https://github.com/brugidou))
- CHEF-4777: add include\_recipes to recipes node attr [\#1128](https://github.com/chef/chef/pull/1128) ([lamont-granquist](https://github.com/lamont-granquist))
- CHEF-4734: Stop enforcing group/owner regular expressions [\#1115](https://github.com/chef/chef/pull/1115) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.10.0.alpha.1](https://github.com/chef/chef/tree/11.10.0.alpha.1) (2013-12-09)
[Full Changelog](https://github.com/chef/chef/compare/10.30.2...11.10.0.alpha.1)

## [10.30.2](https://github.com/chef/chef/tree/10.30.2) (2013-12-06)
[Full Changelog](https://github.com/chef/chef/compare/10.30.2.rc.0...10.30.2)

**Merged pull requests:**

- \[CHEF-4852\]Print total number of resources in doc formatter [\#1162](https://github.com/chef/chef/pull/1162) ([ranjib](https://github.com/ranjib))

## [10.30.2.rc.0](https://github.com/chef/chef/tree/10.30.2.rc.0) (2013-12-04)
[Full Changelog](https://github.com/chef/chef/compare/10.30.0...10.30.2.rc.0)

**Merged pull requests:**

- Do not attempt to JSON parse the body of a 204 response. [\#1163](https://github.com/chef/chef/pull/1163) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.30.0](https://github.com/chef/chef/tree/10.30.0) (2013-12-03)
[Full Changelog](https://github.com/chef/chef/compare/11.8.2...10.30.0)

**Merged pull requests:**

- CHEF-4441: emit reasonable error when default data bag secret does not exist [\#1158](https://github.com/chef/chef/pull/1158) ([jkeiser](https://github.com/jkeiser))

## [11.8.2](https://github.com/chef/chef/tree/11.8.2) (2013-12-03)
[Full Changelog](https://github.com/chef/chef/compare/10.30.0.rc.2...11.8.2)

**Merged pull requests:**

- \[CHEF-4842\] Fix comparison of user resources with non-ASCII comments [\#1156](https://github.com/chef/chef/pull/1156) ([grobie](https://github.com/grobie))

## [10.30.0.rc.2](https://github.com/chef/chef/tree/10.30.0.rc.2) (2013-12-02)
[Full Changelog](https://github.com/chef/chef/compare/10.30.0.rc.1...10.30.0.rc.2)

**Implemented enhancements:**

- Btm/chef 4760 knife logging rebase [\#1673](https://github.com/chef/chef/pull/1673) ([btm](https://github.com/btm))

**Merged pull requests:**

- Make sure the attributes with value nil are not converted to { } when they are being merged at the same precedence level. [\#1155](https://github.com/chef/chef/pull/1155) ([sersut](https://github.com/sersut))
- Always set a correct Host header to avoid net/http bug [\#1151](https://github.com/chef/chef/pull/1151) ([danielsdeleo](https://github.com/danielsdeleo))
- Skip IPv6 tests on Solaris [\#1150](https://github.com/chef/chef/pull/1150) ([danielsdeleo](https://github.com/danielsdeleo))
- Chef 3940 [\#1149](https://github.com/chef/chef/pull/1149) ([btm](https://github.com/btm))
- search for prerelease knife gems as well [\#1099](https://github.com/chef/chef/pull/1099) ([lamont-granquist](https://github.com/lamont-granquist))

## [10.30.0.rc.1](https://github.com/chef/chef/tree/10.30.0.rc.1) (2013-11-26)
[Full Changelog](https://github.com/chef/chef/compare/10.30.0.rc.0...10.30.0.rc.1)

**Merged pull requests:**

- Ipv6 host header [\#1147](https://github.com/chef/chef/pull/1147) ([danielsdeleo](https://github.com/danielsdeleo))
- Don't change content type in Chef::REST if one was provided [\#1146](https://github.com/chef/chef/pull/1146) ([danielsdeleo](https://github.com/danielsdeleo))
- OC-10380: skip checksumming for no-content files [\#1111](https://github.com/chef/chef/pull/1111) ([lamont-granquist](https://github.com/lamont-granquist))

## [10.30.0.rc.0](https://github.com/chef/chef/tree/10.30.0.rc.0) (2013-11-22)
[Full Changelog](https://github.com/chef/chef/compare/11.8.2.rc.0...10.30.0.rc.0)

**Merged pull requests:**

- Windows Spec Fixes [\#1143](https://github.com/chef/chef/pull/1143) ([sersut](https://github.com/sersut))
- back port of OC-10380 to 10-stable [\#1141](https://github.com/chef/chef/pull/1141) ([lamont-granquist](https://github.com/lamont-granquist))
- Pick mixlib-shellout 1.3.0.rc.0 to prepare for 10.30.0.rc.0 [\#1140](https://github.com/chef/chef/pull/1140) ([sersut](https://github.com/sersut))
- Make Chef::DataBag.save use POST instead of PUT [\#1138](https://github.com/chef/chef/pull/1138) ([sersut](https://github.com/sersut))
- Porting CHEF-3297 to 10-stable. [\#1136](https://github.com/chef/chef/pull/1136) ([sersut](https://github.com/sersut))
- \[CHEF-4110-10stable\] Add a whyrun\_safe\_ruby\_block resource [\#1116](https://github.com/chef/chef/pull/1116) ([jaymzh](https://github.com/jaymzh))
-  	\[CHEF-4110\] Add whyrun\_safe\_ruby\_block resource [\#743](https://github.com/chef/chef/pull/743) ([jaymzh](https://github.com/jaymzh))

## [11.8.2.rc.0](https://github.com/chef/chef/tree/11.8.2.rc.0) (2013-11-21)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0...11.8.2.rc.0)

**Merged pull requests:**

- \[CHEF-4616\] \(10-stable\) Support IPv6 Literals in `chef\_server\_url` [\#1137](https://github.com/chef/chef/pull/1137) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-3297: Add excluded\_members property to the group resources [\#1134](https://github.com/chef/chef/pull/1134) ([sersut](https://github.com/sersut))
- raw\_http\_request was aliased to send\_http\_request [\#1132](https://github.com/chef/chef/pull/1132) ([jamesc](https://github.com/jamesc))
- \[CHEF-4616\] Improve IPv6 support [\#1131](https://github.com/chef/chef/pull/1131) ([danielsdeleo](https://github.com/danielsdeleo))
- Add excluded\_members support to the rest of the group providers. [\#1127](https://github.com/chef/chef/pull/1127) ([sersut](https://github.com/sersut))
- Core Group Provider + Dscl / Windows / Ubuntu providers changes for CHEF-3297 [\#1124](https://github.com/chef/chef/pull/1124) ([sersut](https://github.com/sersut))
- Handle sections without text parameters [\#1121](https://github.com/chef/chef/pull/1121) ([bossmc](https://github.com/bossmc))
- CHEF-4380: package resource with "source" is broken on EL6 using 11.6.0rc3 [\#1119](https://github.com/chef/chef/pull/1119) ([sersut](https://github.com/sersut))
- CHEF-4596 / CHEF-4631 : Pick the array that is higher in the precedence order instead of merging during deep merge [\#1118](https://github.com/chef/chef/pull/1118) ([sersut](https://github.com/sersut))
- Pass custom headers when following redirects [\#1112](https://github.com/chef/chef/pull/1112) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix windows gem dependencies on 10-stable [\#1110](https://github.com/chef/chef/pull/1110) ([sersut](https://github.com/sersut))
- Enable integration tests in CI and fix the way tests are launched. [\#1109](https://github.com/chef/chef/pull/1109) ([sersut](https://github.com/sersut))
- Merge 11.8.0 changes into master [\#1105](https://github.com/chef/chef/pull/1105) ([sersut](https://github.com/sersut))
- \[CHEF-4700\] Remove an unused variable in spec/unit/client\_spec.rb [\#1102](https://github.com/chef/chef/pull/1102) ([ryotarai](https://github.com/ryotarai))

## [11.8.0](https://github.com/chef/chef/tree/11.8.0) (2013-10-31)
[Full Changelog](https://github.com/chef/chef/compare/10.28.4.rc.0...11.8.0)

## [10.28.4.rc.0](https://github.com/chef/chef/tree/10.28.4.rc.0) (2013-10-30)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0.rc.4...10.28.4.rc.0)

**Merged pull requests:**

- Add SSL Tooling to improve UX around cert validation \(WIP\) [\#1100](https://github.com/chef/chef/pull/1100) ([danielsdeleo](https://github.com/danielsdeleo))

## [11.8.0.rc.4](https://github.com/chef/chef/tree/11.8.0.rc.4) (2013-10-29)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0.rc.3...11.8.0.rc.4)

**Merged pull requests:**

- Adapt windows\_service to be compatible with win32-service 0.8.2. [\#1098](https://github.com/chef/chef/pull/1098) ([sersut](https://github.com/sersut))
- Pin mime-types to a ruby 1.8 compatible version [\#1097](https://github.com/chef/chef/pull/1097) ([danielsdeleo](https://github.com/danielsdeleo))
- Debug request headers [\#1096](https://github.com/chef/chef/pull/1096) ([danielsdeleo](https://github.com/danielsdeleo))
- Change content type warning to debug [\#1093](https://github.com/chef/chef/pull/1093) ([danielsdeleo](https://github.com/danielsdeleo))
- Check before creating a new system mutex on windows. [\#1092](https://github.com/chef/chef/pull/1092) ([sersut](https://github.com/sersut))
- Solo json fixes [\#1086](https://github.com/chef/chef/pull/1086) ([danielsdeleo](https://github.com/danielsdeleo))
- Correct prompt to increase Knife log verbosity [\#1075](https://github.com/chef/chef/pull/1075) ([benlangfeld](https://github.com/benlangfeld))

## [11.8.0.rc.3](https://github.com/chef/chef/tree/11.8.0.rc.3) (2013-10-24)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0.rc.2...11.8.0.rc.3)

**Merged pull requests:**

- CHEF-4662: fix insecure knife tempfiles [\#1083](https://github.com/chef/chef/pull/1083) ([lamont-granquist](https://github.com/lamont-granquist))
- Update remote\_file to expect nil return for 304 response [\#1079](https://github.com/chef/chef/pull/1079) ([danielsdeleo](https://github.com/danielsdeleo))
- fix solaris path fix [\#1067](https://github.com/chef/chef/pull/1067) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.8.0.rc.2](https://github.com/chef/chef/tree/11.8.0.rc.2) (2013-10-22)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0.rc.1...11.8.0.rc.2)

**Merged pull requests:**

- Fix recursion in self.find\_embedded\_dir\_in on windows. [\#1074](https://github.com/chef/chef/pull/1074) ([sersut](https://github.com/sersut))
- OC-10190: Write a regression test to catch any unexpected messages while running chef-client -v [\#1073](https://github.com/chef/chef/pull/1073) ([sersut](https://github.com/sersut))

## [11.8.0.rc.1](https://github.com/chef/chef/tree/11.8.0.rc.1) (2013-10-21)
[Full Changelog](https://github.com/chef/chef/compare/11.10.0.alpha.0...11.8.0.rc.1)

**Merged pull requests:**

- Remove systemu gem dependency from chef. [\#1072](https://github.com/chef/chef/pull/1072) ([sersut](https://github.com/sersut))
- Auto configure the ssl\_ca\_file on windows under omnibus [\#1071](https://github.com/chef/chef/pull/1071) ([danielsdeleo](https://github.com/danielsdeleo))
- Remove the auto generation of man pages from docs task [\#1070](https://github.com/chef/chef/pull/1070) ([sersut](https://github.com/sersut))
- Mark popen4 tests "volatile" to prevent spurious Ci failures [\#1069](https://github.com/chef/chef/pull/1069) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix the race condition in concurrent chef-solo test [\#1068](https://github.com/chef/chef/pull/1068) ([sersut](https://github.com/sersut))
- Fix error caused by loading duplicate trusted certs [\#1066](https://github.com/chef/chef/pull/1066) ([danielsdeleo](https://github.com/danielsdeleo))
- Add pry as a runtime dependency [\#1065](https://github.com/chef/chef/pull/1065) ([danielsdeleo](https://github.com/danielsdeleo))

## [11.10.0.alpha.0](https://github.com/chef/chef/tree/11.10.0.alpha.0) (2013-10-17)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0.rc.0...11.10.0.alpha.0)

## [11.8.0.rc.0](https://github.com/chef/chef/tree/11.8.0.rc.0) (2013-10-17)
[Full Changelog](https://github.com/chef/chef/compare/10.28.2...11.8.0.rc.0)

**Merged pull requests:**

- Patch webrick timeout handler to avoid test failures [\#1064](https://github.com/chef/chef/pull/1064) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-4422 Truncate cache paths for remote files [\#1063](https://github.com/chef/chef/pull/1063) ([adamedx](https://github.com/adamedx))
- CHEF-4625: Explicitly close temp files to prevent sharing violations [\#1062](https://github.com/chef/chef/pull/1062) ([adamedx](https://github.com/adamedx))
- CHEF-4197: Chef::Provider::Mount device\_mount\_regex fails to populate capture groups when device is symlink \(Ubuntu 12\) [\#1061](https://github.com/chef/chef/pull/1061) ([sersut](https://github.com/sersut))
- \[CHEF-4509\] read `secret` `secret\_file` from knife hash [\#1060](https://github.com/chef/chef/pull/1060) ([schisamo](https://github.com/schisamo))
- Add SSL Certificates Directory [\#1058](https://github.com/chef/chef/pull/1058) ([danielsdeleo](https://github.com/danielsdeleo))
- Remove the unstable functional test for windows service which shells out... [\#1056](https://github.com/chef/chef/pull/1056) ([sersut](https://github.com/sersut))
- Fix CVTs in the new CI cluster [\#1054](https://github.com/chef/chef/pull/1054) ([sersut](https://github.com/sersut))
- CHEF-4634: Prettify data when writing it out in --local-mode [\#1052](https://github.com/chef/chef/pull/1052) ([jkeiser](https://github.com/jkeiser))
- Authenticate when downloading cookbooks so that Enterprise Chef will wor... [\#1051](https://github.com/chef/chef/pull/1051) ([jkeiser](https://github.com/jkeiser))
- Fix issue where multiple threads try to create same directory at the sam... [\#1050](https://github.com/chef/chef/pull/1050) ([jkeiser](https://github.com/jkeiser))
- Set cache\_path under the user's home dir rather than the local repo path [\#1049](https://github.com/chef/chef/pull/1049) ([jkeiser](https://github.com/jkeiser))
- Add a category to knife essentials commands [\#1048](https://github.com/chef/chef/pull/1048) ([jkeiser](https://github.com/jkeiser))
- CHEF-4470: Running chef-client fails when chef is running as a service on windows. [\#1046](https://github.com/chef/chef/pull/1046) ([sersut](https://github.com/sersut))
- When reporting a resource, before and after should always be a hash [\#1044](https://github.com/chef/chef/pull/1044) ([jamesc](https://github.com/jamesc))
- Fix --chef-repo-path [\#1043](https://github.com/chef/chef/pull/1043) ([jkeiser](https://github.com/jkeiser))
- Fix DELETE requests for -z for all endpoints, and PUT/POST for cookbooks [\#1042](https://github.com/chef/chef/pull/1042) ([jkeiser](https://github.com/jkeiser))
- OC-8694: Use diff-lcs in knife diff [\#1038](https://github.com/chef/chef/pull/1038) ([adamedx](https://github.com/adamedx))
- Support --local-mode chef-client parameter [\#1037](https://github.com/chef/chef/pull/1037) ([jkeiser](https://github.com/jkeiser))
- CHEF-4556: chef-client service starts at every run of chef-client::service recipe [\#1035](https://github.com/chef/chef/pull/1035) ([sersut](https://github.com/sersut))
- CHEF-4515: upload sometimes inflates JSON.  Fix by using true raw versio... [\#1033](https://github.com/chef/chef/pull/1033) ([jkeiser](https://github.com/jkeiser))
- Fix knife download acls \(was not downloading subdirectories\) [\#1028](https://github.com/chef/chef/pull/1028) ([jkeiser](https://github.com/jkeiser))
- Split Chef::REST into components. [\#1024](https://github.com/chef/chef/pull/1024) ([danielsdeleo](https://github.com/danielsdeleo))
- Fixing ssl\_cert task error message [\#578](https://github.com/chef/chef/pull/578) ([sjoerdmulder](https://github.com/sjoerdmulder))

## [10.28.2](https://github.com/chef/chef/tree/10.28.2) (2013-10-04)
[Full Changelog](https://github.com/chef/chef/compare/11.6.2...10.28.2)

## [11.6.2](https://github.com/chef/chef/tree/11.6.2) (2013-10-04)
[Full Changelog](https://github.com/chef/chef/compare/10.28.0...11.6.2)

**Merged pull requests:**

- OC-9024: Start chef-client in new process when it is run as a service on windows [\#1027](https://github.com/chef/chef/pull/1027) ([adamedx](https://github.com/adamedx))
- CHEF-4426 - knife cookbook upload doesn't work on windows when working with :versioned\_cookbooks [\#1023](https://github.com/chef/chef/pull/1023) ([sersut](https://github.com/sersut))
- \[CHEF-4399\] - Line endings for templates are based on the platform the template was written on not on the node platform [\#1020](https://github.com/chef/chef/pull/1020) ([sersut](https://github.com/sersut))
- OC-10077: Port CHEF-4419 fix to be included in 11.8.  [\#1018](https://github.com/chef/chef/pull/1018) ([sersut](https://github.com/sersut))
- bump win32-process to 0.7.3 [\#1015](https://github.com/chef/chef/pull/1015) ([lamont-granquist](https://github.com/lamont-granquist))
- file cache location changes on windows [\#1011](https://github.com/chef/chef/pull/1011) ([lamont-granquist](https://github.com/lamont-granquist))
- Jk/version constraints 10 stable [\#1010](https://github.com/chef/chef/pull/1010) ([jkeiser](https://github.com/jkeiser))
- use :each, because config is now reset after each [\#1007](https://github.com/chef/chef/pull/1007) ([lamont-granquist](https://github.com/lamont-granquist))
- default case should be same as log\_level :auto [\#1006](https://github.com/chef/chef/pull/1006) ([lamont-granquist](https://github.com/lamont-granquist))
- use separate gemspec for mingw [\#1001](https://github.com/chef/chef/pull/1001) ([lamont-granquist](https://github.com/lamont-granquist))
- Jk/more defaults 2 [\#993](https://github.com/chef/chef/pull/993) ([jkeiser](https://github.com/jkeiser))
- Jk/default fix [\#992](https://github.com/chef/chef/pull/992) ([jkeiser](https://github.com/jkeiser))
- Use default value facilities of mixlib-config to simplify things [\#991](https://github.com/chef/chef/pull/991) ([jkeiser](https://github.com/jkeiser))
- Reset Chef::Config between every test [\#990](https://github.com/chef/chef/pull/990) ([jkeiser](https://github.com/jkeiser))
- Add chef\_zero.enabled configuration option to chef-client and knife [\#989](https://github.com/chef/chef/pull/989) ([jkeiser](https://github.com/jkeiser))
- CHEF-3982: Solaris bootstrap PATH \<\< /opt/sfw/bin [\#987](https://github.com/chef/chef/pull/987) ([lamont-granquist](https://github.com/lamont-granquist))
- Use "default" DSL in Chef::Config to make reset possible [\#986](https://github.com/chef/chef/pull/986) ([jkeiser](https://github.com/jkeiser))
- OC-9226: \[AIX\] Make functional test failures for Chef::Resource::User :pending  [\#974](https://github.com/chef/chef/pull/974) ([adamedx](https://github.com/adamedx))
- OC-8526: Group provider does not respect group\_name on Windows [\#973](https://github.com/chef/chef/pull/973) ([adamedx](https://github.com/adamedx))
- Jk/chef repo path [\#969](https://github.com/chef/chef/pull/969) ([jkeiser](https://github.com/jkeiser))
- \[CHEF-4342\] Use progress formatter on Travis [\#870](https://github.com/chef/chef/pull/870) ([sethvargo](https://github.com/sethvargo))

## [10.28.0](https://github.com/chef/chef/tree/10.28.0) (2013-08-30)
[Full Changelog](https://github.com/chef/chef/compare/10.28.0.rc.0...10.28.0)

**Merged pull requests:**

- OC-8713: AIX: Package provider for AIX [\#957](https://github.com/chef/chef/pull/957) ([adamedx](https://github.com/adamedx))
- OC-9195: OC-9224: OC-9227: Solaris constructor, AIX link and chef-shell tests [\#956](https://github.com/chef/chef/pull/956) ([adamedx](https://github.com/adamedx))

## [10.28.0.rc.0](https://github.com/chef/chef/tree/10.28.0.rc.0) (2013-08-13)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0.hotfix.1...10.28.0.rc.0)

**Merged pull requests:**

- OC-8622: Add support for the cron resource for AIX [\#941](https://github.com/chef/chef/pull/941) ([adamedx](https://github.com/adamedx))

## [11.6.0.hotfix.1](https://github.com/chef/chef/tree/11.6.0.hotfix.1) (2013-08-03)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0...11.6.0.hotfix.1)

**Merged pull requests:**

- CHEF-4422 Truncate cache paths for remote files [\#939](https://github.com/chef/chef/pull/939) ([adamedx](https://github.com/adamedx))
- Convert apt package provider to shellout [\#938](https://github.com/chef/chef/pull/938) ([danielsdeleo](https://github.com/danielsdeleo))
- Make sure config file selection specs can run when HOME is not set. [\#936](https://github.com/chef/chef/pull/936) ([sersut](https://github.com/sersut))
- Chef 4406 11 stable [\#934](https://github.com/chef/chef/pull/934) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-4419: Absolute file paths with no drive letter for file resources on Windows fails chef-client run [\#926](https://github.com/chef/chef/pull/926) ([sersut](https://github.com/sersut))
- Avoid using define\_method to stop memory leak. [\#918](https://github.com/chef/chef/pull/918) ([stevendanna](https://github.com/stevendanna))
- OC-8707: Implement ifconfig provider for AIX [\#915](https://github.com/chef/chef/pull/915) ([adamedx](https://github.com/adamedx))
- OC-8621: Add support for the mount resource for AIX [\#912](https://github.com/chef/chef/pull/912) ([adamedx](https://github.com/adamedx))

## [11.6.0](https://github.com/chef/chef/tree/11.6.0) (2013-07-22)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0.rc.4...11.6.0)

**Merged pull requests:**

- backport spec fix for unbundling rspec [\#902](https://github.com/chef/chef/pull/902) ([lamont-granquist](https://github.com/lamont-granquist))
- \[CHEF-4248\] expose scm timeout attribute [\#805](https://github.com/chef/chef/pull/805) ([jfoy](https://github.com/jfoy))

## [11.6.0.rc.4](https://github.com/chef/chef/tree/11.6.0.rc.4) (2013-07-17)
[Full Changelog](https://github.com/chef/chef/compare/11.8.0.alpha.0...11.6.0.rc.4)

**Merged pull requests:**

- \[CHEF-4380\] Fix missing include on shellout mixin [\#900](https://github.com/chef/chef/pull/900) ([sersut](https://github.com/sersut))
- \[CHEF-4380\] Fix missing include on shellout mixin [\#899](https://github.com/chef/chef/pull/899) ([juliandunn](https://github.com/juliandunn))
- OC-8693 [\#898](https://github.com/chef/chef/pull/898) ([mcquin](https://github.com/mcquin))
- CHEF-4314: Pin active\_support \< 4.0.0 due to atomic + CAS issues [\#897](https://github.com/chef/chef/pull/897) ([sersut](https://github.com/sersut))

## [11.8.0.alpha.0](https://github.com/chef/chef/tree/11.8.0.alpha.0) (2013-07-16)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0.rc.3...11.8.0.alpha.0)

**Merged pull requests:**

- get first gem.bat in path rather than last [\#892](https://github.com/chef/chef/pull/892) ([lamont-granquist](https://github.com/lamont-granquist))

## [11.6.0.rc.3](https://github.com/chef/chef/tree/11.6.0.rc.3) (2013-07-12)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0.rc.2...11.6.0.rc.3)

**Merged pull requests:**

- Change error description sections elements to be hashes. [\#893](https://github.com/chef/chef/pull/893) ([sersut](https://github.com/sersut))
- OC--8527: CHEF-3284: shef on Windows 7 & Windows 2008 R2 doesn't support backspace etc [\#889](https://github.com/chef/chef/pull/889) ([adamedx](https://github.com/adamedx))
- Add -E flag to chef-solo in order to enable people use the new environment support in chef-solo. [\#885](https://github.com/chef/chef/pull/885) ([sersut](https://github.com/sersut))

## [11.6.0.rc.2](https://github.com/chef/chef/tree/11.6.0.rc.2) (2013-07-11)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0.rc.1...11.6.0.rc.2)

**Merged pull requests:**

- Upgrade RSpec to 2.13.x [\#890](https://github.com/chef/chef/pull/890) ([danielsdeleo](https://github.com/danielsdeleo))
- Ignore corrupt cache control data; re-download file [\#887](https://github.com/chef/chef/pull/887) ([danielsdeleo](https://github.com/danielsdeleo))
- Increase the default yum timeout to 5 minutes. [\#882](https://github.com/chef/chef/pull/882) ([sersut](https://github.com/sersut))
- Chef 4357 [\#881](https://github.com/chef/chef/pull/881) ([danielsdeleo](https://github.com/danielsdeleo))

## [11.6.0.rc.1](https://github.com/chef/chef/tree/11.6.0.rc.1) (2013-07-03)
[Full Changelog](https://github.com/chef/chef/compare/11.6.0.rc.0...11.6.0.rc.1)

**Merged pull requests:**

- this should have been reverted to old behavior, causes failures on [\#874](https://github.com/chef/chef/pull/874) ([lamont-granquist](https://github.com/lamont-granquist))
- \[CHEF-4341\] Use symlink source when inspecting current permissions [\#869](https://github.com/chef/chef/pull/869) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-4335\] Buffer ssh output by line to avoid mangling it. [\#866](https://github.com/chef/chef/pull/866) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/diff encoding [\#863](https://github.com/chef/chef/pull/863) ([lamont-granquist](https://github.com/lamont-granquist))
- Yum package calls readlines on a string. [\#862](https://github.com/chef/chef/pull/862) ([sersut](https://github.com/sersut))

## [11.6.0.rc.0](https://github.com/chef/chef/tree/11.6.0.rc.0) (2013-06-27)
[Full Changelog](https://github.com/chef/chef/compare/11.5.0.alpha.0...11.6.0.rc.0)

**Merged pull requests:**

- CHEF-4312 Fix compat for file resources managing content via symlink [\#856](https://github.com/chef/chef/pull/856) ([danielsdeleo](https://github.com/danielsdeleo))
- OC-8391: Chef::Provider::User::Windows fails with local password policies [\#855](https://github.com/chef/chef/pull/855) ([adamedx](https://github.com/adamedx))
- OC-8337: Add missing functional tests for powershell\_script, batch resources [\#851](https://github.com/chef/chef/pull/851) ([adamedx](https://github.com/adamedx))
- El usermod test fixes [\#847](https://github.com/chef/chef/pull/847) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix `usermod` test issues [\#846](https://github.com/chef/chef/pull/846) ([danielsdeleo](https://github.com/danielsdeleo))
- Verify that chefignore is a file before reading it. [\#845](https://github.com/chef/chef/pull/845) ([jkeiser](https://github.com/jkeiser))
- to see this on command line with default :auto level we need to warn [\#843](https://github.com/chef/chef/pull/843) ([lamont-granquist](https://github.com/lamont-granquist))
- Lcg/cloexec lockfile [\#840](https://github.com/chef/chef/pull/840) ([lamont-granquist](https://github.com/lamont-granquist))
- add rake task for generating docs with YARD [\#839](https://github.com/chef/chef/pull/839) ([lamont-granquist](https://github.com/lamont-granquist))
- \[CHEF-4204\] Fix issues with shell-significant characters in useradd commands [\#838](https://github.com/chef/chef/pull/838) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix net-ssh-multi concurreny issues [\#835](https://github.com/chef/chef/pull/835) ([sersut](https://github.com/sersut))
- Handle new 412 depsolver errors without any cookbook information. [\#833](https://github.com/chef/chef/pull/833) ([sersut](https://github.com/sersut))
- don't depend on line separator in partial tests [\#828](https://github.com/chef/chef/pull/828) ([danielsdeleo](https://github.com/danielsdeleo))
- Don't call fork when chef is running on windows. [\#827](https://github.com/chef/chef/pull/827) ([sersut](https://github.com/sersut))
- start testing with travis [\#826](https://github.com/chef/chef/pull/826) ([josephrdsmith](https://github.com/josephrdsmith))
- \[CHEF-4275\] Fix rubygems version heuristic to workaround old rubygem code getting loaded. [\#824](https://github.com/chef/chef/pull/824) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-2741\] Deploy resource re-attempts failed deploys on subsequent runs [\#822](https://github.com/chef/chef/pull/822) ([danielsdeleo](https://github.com/danielsdeleo))
- remove log level special casing from git resource [\#819](https://github.com/chef/chef/pull/819) ([danielsdeleo](https://github.com/danielsdeleo))
- fixes for 'rake install' on ruby-2.0.0 [\#818](https://github.com/chef/chef/pull/818) ([lamont-granquist](https://github.com/lamont-granquist))
- Chef 4233: data bag upload includes extra keys [\#817](https://github.com/chef/chef/pull/817) ([jkeiser](https://github.com/jkeiser))
- OC:7888 Windows mount support for username / domain [\#815](https://github.com/chef/chef/pull/815) ([adamedx](https://github.com/adamedx))
- Prevent integration tests from loading real config [\#813](https://github.com/chef/chef/pull/813) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-3307: metadata.name can be empty, which is truthy [\#812](https://github.com/chef/chef/pull/812) ([lamont-granquist](https://github.com/lamont-granquist))
- Fix "undefined method binread" in functional tests on Ruby 1.8.7 [\#811](https://github.com/chef/chef/pull/811) ([danielsdeleo](https://github.com/danielsdeleo))
- Binmode lulz fix [\#808](https://github.com/chef/chef/pull/808) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix ruby 1.8 compatibility with file-refactor changes [\#807](https://github.com/chef/chef/pull/807) ([danielsdeleo](https://github.com/danielsdeleo))
- Some more CI fixes for Solaris & Windows Server 2003 @ SLES 11 SP2. [\#803](https://github.com/chef/chef/pull/803) ([sersut](https://github.com/sersut))
- Fix various issues seen in CI. [\#802](https://github.com/chef/chef/pull/802) ([sersut](https://github.com/sersut))
- Fixes for the issues we've seen in CI run for file-refactor branch. [\#799](https://github.com/chef/chef/pull/799) ([sersut](https://github.com/sersut))
- Add opt-in code coverage reporting [\#798](https://github.com/chef/chef/pull/798) ([danielsdeleo](https://github.com/danielsdeleo))
- remove unused remote file util class [\#797](https://github.com/chef/chef/pull/797) ([danielsdeleo](https://github.com/danielsdeleo))
- Binmode and Template line endings [\#795](https://github.com/chef/chef/pull/795) ([sersut](https://github.com/sersut))
- Add warning when overriding core template functionality [\#794](https://github.com/chef/chef/pull/794) ([danielsdeleo](https://github.com/danielsdeleo))
- Failing selinux spec [\#793](https://github.com/chef/chef/pull/793) ([danielsdeleo](https://github.com/danielsdeleo))
- Run remote\_file functional tests w/ HTTPS [\#788](https://github.com/chef/chef/pull/788) ([danielsdeleo](https://github.com/danielsdeleo))
- Functional tests for selinux functionality. [\#787](https://github.com/chef/chef/pull/787) ([sersut](https://github.com/sersut))
- Add Template Helpers [\#784](https://github.com/chef/chef/pull/784) ([danielsdeleo](https://github.com/danielsdeleo))
- AIX also has no ruby shadow [\#783](https://github.com/chef/chef/pull/783) ([lamont-granquist](https://github.com/lamont-granquist))
- File refactor local cleanup [\#781](https://github.com/chef/chef/pull/781) ([danielsdeleo](https://github.com/danielsdeleo))
- File refactor ftp cleanup [\#780](https://github.com/chef/chef/pull/780) ([danielsdeleo](https://github.com/danielsdeleo))
- Unit specs for selinux. [\#778](https://github.com/chef/chef/pull/778) ([sersut](https://github.com/sersut))
- Specs \(and fixes\) for force\_unlink [\#775](https://github.com/chef/chef/pull/775) ([sersut](https://github.com/sersut))
- Rename file new config parameters for new file resource. [\#772](https://github.com/chef/chef/pull/772) ([sersut](https://github.com/sersut))
- Increased test coverage and fixes for windows ACL handling. [\#771](https://github.com/chef/chef/pull/771) ([sersut](https://github.com/sersut))
- Relocate reusable classes under Chef::Provider::File to its own namespace [\#765](https://github.com/chef/chef/pull/765) ([sersut](https://github.com/sersut))
- Remove ability to override selinux restorecon command. [\#764](https://github.com/chef/chef/pull/764) ([sersut](https://github.com/sersut))
- Add deprecated methods of files and providers during file-refactor back with necessary warnings. [\#763](https://github.com/chef/chef/pull/763) ([sersut](https://github.com/sersut))
- File refactor unit test fix [\#762](https://github.com/chef/chef/pull/762) ([danielsdeleo](https://github.com/danielsdeleo))
- Fix nitpick comments and code typos. [\#761](https://github.com/chef/chef/pull/761) ([sersut](https://github.com/sersut))
- OC-7687: Default to --no-color on Windows [\#758](https://github.com/chef/chef/pull/758) ([adamedx](https://github.com/adamedx))
- File Refactor [\#665](https://github.com/chef/chef/pull/665) ([lamont-opscode](https://github.com/lamont-opscode))

## [11.5.0.alpha.0](https://github.com/chef/chef/tree/11.5.0.alpha.0) (2013-05-13)
[Full Changelog](https://github.com/chef/chef/compare/10.26.0...11.5.0.alpha.0)

**Merged pull requests:**

- Chef 4176 [\#756](https://github.com/chef/chef/pull/756) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.26.0](https://github.com/chef/chef/tree/10.26.0) (2013-05-06)
[Full Changelog](https://github.com/chef/chef/compare/10.26.0.beta.0...10.26.0)

**Merged pull requests:**

- Windows test reliability issues across versions of Windows [\#752](https://github.com/chef/chef/pull/752) ([adamedx](https://github.com/adamedx))
- \[CHEF-4157\] split Platform to prune dep graph [\#747](https://github.com/chef/chef/pull/747) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-3615 - Add encrypt-then-mac mode for encrypted data bag items [\#744](https://github.com/chef/chef/pull/744) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3858\] rescue bad json errors and re-raise as decryption failures [\#741](https://github.com/chef/chef/pull/741) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.26.0.beta.0](https://github.com/chef/chef/tree/10.26.0.beta.0) (2013-04-24)
[Full Changelog](https://github.com/chef/chef/compare/10.24.4...10.26.0.beta.0)

**Merged pull requests:**

- CHEF-1707:  fix user provider for solaris passwords [\#721](https://github.com/chef/chef/pull/721) ([lamont-granquist](https://github.com/lamont-granquist))

## [10.24.4](https://github.com/chef/chef/tree/10.24.4) (2013-04-24)
[Full Changelog](https://github.com/chef/chef/compare/11.4.4...10.24.4)

## [11.4.4](https://github.com/chef/chef/tree/11.4.4) (2013-04-24)
[Full Changelog](https://github.com/chef/chef/compare/11.4.4.rc.0...11.4.4)

## [11.4.4.rc.0](https://github.com/chef/chef/tree/11.4.4.rc.0) (2013-04-23)
[Full Changelog](https://github.com/chef/chef/compare/10.24.2...11.4.4.rc.0)

**Merged pull requests:**

- \[CHEF-4117\] fix resource attempting to remove constants it doesn't have [\#734](https://github.com/chef/chef/pull/734) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.24.2](https://github.com/chef/chef/tree/10.24.2) (2013-04-22)
[Full Changelog](https://github.com/chef/chef/compare/11.4.2...10.24.2)

## [11.4.2](https://github.com/chef/chef/tree/11.4.2) (2013-04-22)
[Full Changelog](https://github.com/chef/chef/compare/11.4.2.rc.0...11.4.2)

**Merged pull requests:**

- \[CHEF-3432\] fix LWRP class leak in 10-stable [\#730](https://github.com/chef/chef/pull/730) ([danielsdeleo](https://github.com/danielsdeleo))

## [11.4.2.rc.0](https://github.com/chef/chef/tree/11.4.2.rc.0) (2013-04-22)
[Full Changelog](https://github.com/chef/chef/compare/11.4.1.alpha.1...11.4.2.rc.0)

**Merged pull requests:**

- Chef 3432 Fix memory leak w/ LWRP class creation [\#722](https://github.com/chef/chef/pull/722) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-4011\] use `platform\_specific\_path` helper in specs [\#720](https://github.com/chef/chef/pull/720) ([schisamo](https://github.com/schisamo))
- Typo in symliinks [\#714](https://github.com/chef/chef/pull/714) ([jjasghar](https://github.com/jjasghar))
- OC-5726: Enable password to sudo from stdin for knife ssh bootstrap [\#704](https://github.com/chef/chef/pull/704) ([adamedx](https://github.com/adamedx))
- Fix the service\_manager\_tests on commit verification pipeline [\#695](https://github.com/chef/chef/pull/695) ([sersut](https://github.com/sersut))
- OC-6536: Update Windows Versions library to include latest versions of Windows [\#694](https://github.com/chef/chef/pull/694) ([adamedx](https://github.com/adamedx))
- OC-6536 Need to update Windows versions returned by Chef helper API to support Win 2012 / Win 8 [\#693](https://github.com/chef/chef/pull/693) ([chirag-jog](https://github.com/chirag-jog))
- Disable diffs during file functional tests [\#691](https://github.com/chef/chef/pull/691) ([danielsdeleo](https://github.com/danielsdeleo))
- Oc 6470 - Enable password to sudo from stdin for knife ssh bootstrap [\#680](https://github.com/chef/chef/pull/680) ([chirag-jog](https://github.com/chirag-jog))
- Update the log message in service\_manager. [\#671](https://github.com/chef/chef/pull/671) ([sersut](https://github.com/sersut))
- Refactor windows\_service\_manager slightly so that we can reuse it in dif... [\#663](https://github.com/chef/chef/pull/663) ([sersut](https://github.com/sersut))
- Remove non-trailing optional parameter to fix Ruby 1.8 and general maint... [\#661](https://github.com/chef/chef/pull/661) ([adamedx](https://github.com/adamedx))
- \[CHEF-3935\] Replace stdlib Logger w/ a lock free variant [\#655](https://github.com/chef/chef/pull/655) ([danielsdeleo](https://github.com/danielsdeleo))
- Chef-Client as Windows Service [\#642](https://github.com/chef/chef/pull/642) ([sersut](https://github.com/sersut))
- Remove weird json dependency [\#634](https://github.com/chef/chef/pull/634) ([grosser](https://github.com/grosser))

## [11.4.1.alpha.1](https://github.com/chef/chef/tree/11.4.1.alpha.1) (2013-02-21)
[Full Changelog](https://github.com/chef/chef/compare/10.24.0...11.4.1.alpha.1)

**Merged pull requests:**

- Addition of Batch and Powershell resources for Windows [\#646](https://github.com/chef/chef/pull/646) ([adamedx](https://github.com/adamedx))

## [10.24.0](https://github.com/chef/chef/tree/10.24.0) (2013-02-16)
[Full Changelog](https://github.com/chef/chef/compare/10.22.0...10.24.0)

## [10.22.0](https://github.com/chef/chef/tree/10.22.0) (2013-02-13)
[Full Changelog](https://github.com/chef/chef/compare/11.4.0...10.22.0)

## [11.4.0](https://github.com/chef/chef/tree/11.4.0) (2013-02-12)
[Full Changelog](https://github.com/chef/chef/compare/10.20.0...11.4.0)

**Merged pull requests:**

- Chef 3863 10stable [\#639](https://github.com/chef/chef/pull/639) ([danielsdeleo](https://github.com/danielsdeleo))
- hand cherry-pick json-dos-fix to pl master [\#638](https://github.com/chef/chef/pull/638) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3863\] Reimplement json\_class in a constrained way not vuln to DoS [\#637](https://github.com/chef/chef/pull/637) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.20.0](https://github.com/chef/chef/tree/10.20.0) (2013-02-07)
[Full Changelog](https://github.com/chef/chef/compare/11.2.0...10.20.0)

## [11.2.0](https://github.com/chef/chef/tree/11.2.0) (2013-02-07)
[Full Changelog](https://github.com/chef/chef/compare/11.2.0.rc.1...11.2.0)

## [11.2.0.rc.1](https://github.com/chef/chef/tree/11.2.0.rc.1) (2013-02-06)
[Full Changelog](https://github.com/chef/chef/compare/11.0.0...11.2.0.rc.1)

## [11.0.0](https://github.com/chef/chef/tree/11.0.0) (2013-02-01)
[Full Changelog](https://github.com/chef/chef/compare/11.0.0.rc.0...11.0.0)

## [11.0.0.rc.0](https://github.com/chef/chef/tree/11.0.0.rc.0) (2013-02-01)
[Full Changelog](https://github.com/chef/chef/compare/11.0.0.beta.2...11.0.0.rc.0)

## [11.0.0.beta.2](https://github.com/chef/chef/tree/11.0.0.beta.2) (2013-01-30)
[Full Changelog](https://github.com/chef/chef/compare/11.0.0.beta.1...11.0.0.beta.2)

**Merged pull requests:**

- CHEF-3806: set\_unless leaks set\_unless\_value\_present into later calls [\#619](https://github.com/chef/chef/pull/619) ([lamont-opscode](https://github.com/lamont-opscode))

## [11.0.0.beta.1](https://github.com/chef/chef/tree/11.0.0.beta.1) (2013-01-28)
[Full Changelog](https://github.com/chef/chef/compare/11.0.0.beta.0...11.0.0.beta.1)

**Merged pull requests:**

- \[CHEF-3799\] fixes TypeError for puts on VividMash [\#613](https://github.com/chef/chef/pull/613) ([danielsdeleo](https://github.com/danielsdeleo))
- Replace arrays between precedence levels [\#611](https://github.com/chef/chef/pull/611) ([danielsdeleo](https://github.com/danielsdeleo))
- Praj/fixing win 2003 errors [\#608](https://github.com/chef/chef/pull/608) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))
- \[CHEF-3783\] Make deprecated constants available [\#603](https://github.com/chef/chef/pull/603) ([danielsdeleo](https://github.com/danielsdeleo))
- CHEF-3467: Cookbook file resource permissions not inherited from parent ... [\#597](https://github.com/chef/chef/pull/597) ([adamedx](https://github.com/adamedx))
- Admin privilage check for windows in chef-client [\#585](https://github.com/chef/chef/pull/585) ([sersut](https://github.com/sersut))

## [11.0.0.beta.0](https://github.com/chef/chef/tree/11.0.0.beta.0) (2013-01-21)
[Full Changelog](https://github.com/chef/chef/compare/10.18.2...11.0.0.beta.0)

**Merged pull requests:**

- Integrate Changes from Chef 10.18 into master \(Chef 11\) [\#599](https://github.com/chef/chef/pull/599) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.18.2](https://github.com/chef/chef/tree/10.18.2) (2013-01-18)
[Full Changelog](https://github.com/chef/chef/compare/10.18.0...10.18.2)

**Merged pull requests:**

- CHEF-3731 for Chef 11 [\#832](https://github.com/chef/chef/pull/832) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3571\] Add `chef-apply` command to run a single recipe file [\#594](https://github.com/chef/chef/pull/594) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3771\] Fix spurious resource clone warnings [\#593](https://github.com/chef/chef/pull/593) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3497\] Fix knife configure order, apply any relevant Chef::Config\[:knife\] settings [\#583](https://github.com/chef/chef/pull/583) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.18.0](https://github.com/chef/chef/tree/10.18.0) (2013-01-15)
[Full Changelog](https://github.com/chef/chef/compare/10.18.0.rc.2...10.18.0)

## [10.18.0.rc.2](https://github.com/chef/chef/tree/10.18.0.rc.2) (2013-01-11)
[Full Changelog](https://github.com/chef/chef/compare/10.16.6...10.18.0.rc.2)

**Merged pull requests:**

- race condition that resolves itself? [\#580](https://github.com/chef/chef/pull/580) ([lamont-opscode](https://github.com/lamont-opscode))

## [10.16.6](https://github.com/chef/chef/tree/10.16.6) (2013-01-10)
[Full Changelog](https://github.com/chef/chef/compare/10.16.4...10.16.6)

**Merged pull requests:**

- update mixlib to at least 0.9.16 [\#579](https://github.com/chef/chef/pull/579) ([danielsdeleo](https://github.com/danielsdeleo))
- fix functional test context for permissions. [\#576](https://github.com/chef/chef/pull/576) ([danielsdeleo](https://github.com/danielsdeleo))
- Fixup File security metadata reporting for Unix [\#575](https://github.com/chef/chef/pull/575) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.16.4](https://github.com/chef/chef/tree/10.16.4) (2012-12-25)
[Full Changelog](https://github.com/chef/chef/compare/10.18.0.rc.1...10.16.4)

**Merged pull requests:**

- CHEF-3718: pin systemu version for windows [\#567](https://github.com/chef/chef/pull/567) ([lamont-opscode](https://github.com/lamont-opscode))
- \[CHEF-3715\] Remove Caching of SHA256 checksums in client/solo [\#566](https://github.com/chef/chef/pull/566) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3681\] add inline compilation option for LWRP [\#564](https://github.com/chef/chef/pull/564) ([danielsdeleo](https://github.com/danielsdeleo))
- Stress tests randomly fail in Ci. Exclude them [\#563](https://github.com/chef/chef/pull/563) ([danielsdeleo](https://github.com/danielsdeleo))
- Lcg/oc 4660 registry [\#562](https://github.com/chef/chef/pull/562) ([lamont-opscode](https://github.com/lamont-opscode))

## [10.18.0.rc.1](https://github.com/chef/chef/tree/10.18.0.rc.1) (2012-12-19)
[Full Changelog](https://github.com/chef/chef/compare/10.16.2...10.18.0.rc.1)

**Merged pull requests:**

- \[CHEF-3689\] Refactor Client Registration, make it work for existing clients w/ Chef 11 Server [\#558](https://github.com/chef/chef/pull/558) ([danielsdeleo](https://github.com/danielsdeleo))
- Define LWRP Behavior in Subclasses of Resource and Provider [\#556](https://github.com/chef/chef/pull/556) ([danielsdeleo](https://github.com/danielsdeleo))
- explicitly include EnforceOwnershipAndPermissions where it's used [\#555](https://github.com/chef/chef/pull/555) ([danielsdeleo](https://github.com/danielsdeleo))
- Reload original knife config after knife functional tests. [\#551](https://github.com/chef/chef/pull/551) ([sersut](https://github.com/sersut))
- \[Chef 3689\] \(10 stable\) Fix client registration when an inflated ApiClient is returned [\#542](https://github.com/chef/chef/pull/542) ([danielsdeleo](https://github.com/danielsdeleo))
- Chef 2812 [\#540](https://github.com/chef/chef/pull/540) ([btm](https://github.com/btm))
- CHEF-3688 remove stale attribute read protection [\#538](https://github.com/chef/chef/pull/538) ([adamhjk](https://github.com/adamhjk))
- \[CHEF-3662\] ApiClient can set a private key from JSON [\#530](https://github.com/chef/chef/pull/530) ([danielsdeleo](https://github.com/danielsdeleo))
- Chef 3680 - fix StaleAttribute errors when converting node to JSON [\#529](https://github.com/chef/chef/pull/529) ([danielsdeleo](https://github.com/danielsdeleo))
- More Windows Spec Test Fixes [\#523](https://github.com/chef/chef/pull/523) ([sdelano](https://github.com/sdelano))
- \[CHEF-3662\] ApiClient can reregister itself [\#522](https://github.com/chef/chef/pull/522) ([danielsdeleo](https://github.com/danielsdeleo))
- Quote cookbook name/version in error message [\#520](https://github.com/chef/chef/pull/520) ([danielsdeleo](https://github.com/danielsdeleo))
- Removing link tests from Windows 2k3 since symbolic links are not yet supported on this OS [\#519](https://github.com/chef/chef/pull/519) ([sersut](https://github.com/sersut))
- Restructure 'knife index rebuild' task and overhaul tests [\#516](https://github.com/chef/chef/pull/516) ([christophermaier](https://github.com/christophermaier))
- Chef 3660: Deploy Revision Provider Fails on Solaris 9 [\#515](https://github.com/chef/chef/pull/515) ([sdelano](https://github.com/sdelano))
- Deprecate 'knife index rebuild' [\#512](https://github.com/chef/chef/pull/512) ([christophermaier](https://github.com/christophermaier))
- Gracefully handle JSON with a bad 'json\_class' value [\#504](https://github.com/chef/chef/pull/504) ([christophermaier](https://github.com/christophermaier))
- CHEF-3411: Do not try to inspect recipes that do not exist [\#503](https://github.com/chef/chef/pull/503) ([btm](https://github.com/btm))
- Default to 'doc' Output Formatter When STDOUT is a Console [\#493](https://github.com/chef/chef/pull/493) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3619\] fix obsolete require of 'rake/rdoctask' [\#489](https://github.com/chef/chef/pull/489) ([aspiers](https://github.com/aspiers))
- \[CHEF-3616\] add cipher field to edbi metadata [\#488](https://github.com/chef/chef/pull/488) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3616\] add cipher field to edbi metadata [\#487](https://github.com/chef/chef/pull/487) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3392\] \(10-stable\) compat with version 1 encrypted dbi format [\#485](https://github.com/chef/chef/pull/485) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-3392\] JSON serialize encrypted data bags, use random IV [\#481](https://github.com/chef/chef/pull/481) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-2903\] load attribute files in run\_list order [\#474](https://github.com/chef/chef/pull/474) ([danielsdeleo](https://github.com/danielsdeleo))
- Verify that resources are updated or not in functional tests [\#473](https://github.com/chef/chef/pull/473) ([danielsdeleo](https://github.com/danielsdeleo))
- Rebased and merged branch immediate-converge-action onto 10-stable from ... [\#472](https://github.com/chef/chef/pull/472) ([tylercloke](https://github.com/tylercloke))
- Add handling of timeouts generated by dep selector. [\#470](https://github.com/chef/chef/pull/470) ([manderson26](https://github.com/manderson26))
- Chef 3499 -- Add platform introspection to node [\#466](https://github.com/chef/chef/pull/466) ([danielsdeleo](https://github.com/danielsdeleo))
- removing daemonize option for windows [\#459](https://github.com/chef/chef/pull/459) ([lamont-opscode](https://github.com/lamont-opscode))

## [10.16.2](https://github.com/chef/chef/tree/10.16.2) (2012-10-26)
[Full Changelog](https://github.com/chef/chef/compare/10.16.0...10.16.2)

**Merged pull requests:**

- \[CHEF-3561\] add template context for template errors [\#454](https://github.com/chef/chef/pull/454) ([danielsdeleo](https://github.com/danielsdeleo))
- work around CHEF-3554 in windows by disabling this information collectio... [\#450](https://github.com/chef/chef/pull/450) ([timh](https://github.com/timh))
- CHEF-3547, fixed bug for permissions in cookbook provider. [\#445](https://github.com/chef/chef/pull/445) ([tylercloke](https://github.com/tylercloke))

## [10.16.0](https://github.com/chef/chef/tree/10.16.0) (2012-10-22)
[Full Changelog](https://github.com/chef/chef/compare/10.16.0.rc.2...10.16.0)

**Merged pull requests:**

- Save reporting data to disk on HTTP failure [\#440](https://github.com/chef/chef/pull/440) ([btm](https://github.com/btm))
- \[CHEF-2737\] remove subtractive merge [\#439](https://github.com/chef/chef/pull/439) ([danielsdeleo](https://github.com/danielsdeleo))
- \[CHEF-2992\] [\#436](https://github.com/chef/chef/pull/436) ([danielsdeleo](https://github.com/danielsdeleo))

## [10.16.0.rc.2](https://github.com/chef/chef/tree/10.16.0.rc.2) (2012-10-19)
[Full Changelog](https://github.com/chef/chef/compare/10.16.0.rc.1...10.16.0.rc.2)

## [10.16.0.rc.1](https://github.com/chef/chef/tree/10.16.0.rc.1) (2012-10-17)
[Full Changelog](https://github.com/chef/chef/compare/10.16.0.rc.0...10.16.0.rc.1)

**Merged pull requests:**

- Chef 3520: add knife-essentials \(knife diff/download/upload/raw/show/list/delete\) to core Chef [\#430](https://github.com/chef/chef/pull/430) ([jkeiser](https://github.com/jkeiser))

## [10.16.0.rc.0](https://github.com/chef/chef/tree/10.16.0.rc.0) (2012-10-11)
[Full Changelog](https://github.com/chef/chef/compare/10.14.4...10.16.0.rc.0)

**Merged pull requests:**

- Lcg/reporting ignores 500s [\#423](https://github.com/chef/chef/pull/423) ([lamont-opscode](https://github.com/lamont-opscode))
- Reporting with summary only [\#421](https://github.com/chef/chef/pull/421) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))
- Pull all rebased resource updating changes into 10-stable [\#405](https://github.com/chef/chef/pull/405) ([tylercloke](https://github.com/tylercloke))

## [10.14.4](https://github.com/chef/chef/tree/10.14.4) (2012-09-27)
[Full Changelog](https://github.com/chef/chef/compare/10.14.4.rc.0...10.14.4)

**Merged pull requests:**

- disable reporting in why-run [\#412](https://github.com/chef/chef/pull/412) ([sersut](https://github.com/sersut))
- Compressing data for reporting [\#406](https://github.com/chef/chef/pull/406) ([sersut](https://github.com/sersut))

## [10.14.4.rc.0](https://github.com/chef/chef/tree/10.14.4.rc.0) (2012-09-24)
[Full Changelog](https://github.com/chef/chef/compare/10.14.2...10.14.4.rc.0)

**Merged pull requests:**

- CHEF-3375: remote\_file support for URL lists to use as mirrors [\#372](https://github.com/chef/chef/pull/372) ([zuazo](https://github.com/zuazo))

## [10.14.2](https://github.com/chef/chef/tree/10.14.2) (2012-09-10)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0...10.14.2)

## [10.14.0](https://github.com/chef/chef/tree/10.14.0) (2012-09-07)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0.rc.4...10.14.0)

## [10.14.0.rc.4](https://github.com/chef/chef/tree/10.14.0.rc.4) (2012-09-06)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0.rc.3...10.14.0.rc.4)

## [10.14.0.rc.3](https://github.com/chef/chef/tree/10.14.0.rc.3) (2012-09-06)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0.rc.2...10.14.0.rc.3)

## [10.14.0.rc.2](https://github.com/chef/chef/tree/10.14.0.rc.2) (2012-09-06)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0.rc.1...10.14.0.rc.2)

**Merged pull requests:**

- Reporting updates [\#386](https://github.com/chef/chef/pull/386) ([sersut](https://github.com/sersut))
- fixes CHEF-3400 and pulls forwards reporting diff generation fixes [\#382](https://github.com/chef/chef/pull/382) ([lamont-opscode](https://github.com/lamont-opscode))

## [10.14.0.rc.1](https://github.com/chef/chef/tree/10.14.0.rc.1) (2012-08-28)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0.rc.0...10.14.0.rc.1)

**Merged pull requests:**

- Oc 3152: throttle diff output [\#375](https://github.com/chef/chef/pull/375) ([lamont-opscode](https://github.com/lamont-opscode))
- CHEF-3276 [\#374](https://github.com/chef/chef/pull/374) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))

## [10.14.0.rc.0](https://github.com/chef/chef/tree/10.14.0.rc.0) (2012-08-21)
[Full Changelog](https://github.com/chef/chef/compare/10.14.0.beta.3...10.14.0.rc.0)

**Merged pull requests:**

- needs config to point at client key, revert config when we're done [\#369](https://github.com/chef/chef/pull/369) ([lamont-opscode](https://github.com/lamont-opscode))
- make restoring the config state more resiliant [\#367](https://github.com/chef/chef/pull/367) ([lamont-opscode](https://github.com/lamont-opscode))
- fix spec for operating systems where gid 0 name is not "wheel" [\#366](https://github.com/chef/chef/pull/366) ([lamont-opscode](https://github.com/lamont-opscode))
- 10 stable bugsfix [\#365](https://github.com/chef/chef/pull/365) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))
- Chef 3235 [\#361](https://github.com/chef/chef/pull/361) ([lamont-opscode](https://github.com/lamont-opscode))
- Fix knife functional tests to correctly reset the config state and ... [\#358](https://github.com/chef/chef/pull/358) ([sersut](https://github.com/sersut))
- Fixed config\_file\_selection path error seen when HOME is set to / [\#357](https://github.com/chef/chef/pull/357) ([PrajaktaPurohit](https://github.com/PrajaktaPurohit))
- Enforce ownership and permissions spec [\#356](https://github.com/chef/chef/pull/356) ([lamont-opscode](https://github.com/lamont-opscode))

## [10.14.0.beta.3](https://github.com/chef/chef/tree/10.14.0.beta.3) (2012-07-26)
[Full Changelog](https://github.com/chef/chef/compare/10.12.0...10.14.0.beta.3)

## [10.12.0](https://github.com/chef/chef/tree/10.12.0) (2012-06-18)
[Full Changelog](https://github.com/chef/chef/compare/10.12.0.rc.1...10.12.0)

## [10.12.0.rc.1](https://github.com/chef/chef/tree/10.12.0.rc.1) (2012-05-31)
[Full Changelog](https://github.com/chef/chef/compare/0.10.10...10.12.0.rc.1)

**Merged pull requests:**

- Proposed changes for \[CHEF-3142\] [\#306](https://github.com/chef/chef/pull/306) ([schisamo](https://github.com/schisamo))
- Fix link provider: Chef 2389, 3102, 3110, 3111, 3112 and others [\#299](https://github.com/chef/chef/pull/299) ([jkeiser](https://github.com/jkeiser))

## [0.10.10](https://github.com/chef/chef/tree/0.10.10) (2012-05-11)
[Full Changelog](https://github.com/chef/chef/compare/0.10.10.rc.3...0.10.10)

**Merged pull requests:**

- CHEF-3090: shellout loglevel compat [\#288](https://github.com/chef/chef/pull/288) ([hosh](https://github.com/hosh))

## [0.10.10.rc.3](https://github.com/chef/chef/tree/0.10.10.rc.3) (2012-05-02)
[Full Changelog](https://github.com/chef/chef/compare/0.10.10.rc.2...0.10.10.rc.3)

## [0.10.10.rc.2](https://github.com/chef/chef/tree/0.10.10.rc.2) (2012-05-01)
[Full Changelog](https://github.com/chef/chef/compare/0.10.10.rc.1...0.10.10.rc.2)

## [0.10.10.rc.1](https://github.com/chef/chef/tree/0.10.10.rc.1) (2012-04-30)
[Full Changelog](https://github.com/chef/chef/compare/0.10.10.beta.1...0.10.10.rc.1)

**Merged pull requests:**

- \[CHEF-1681\] Fix cron provider to handle commented out crontab lines [\#251](https://github.com/chef/chef/pull/251) ([alext](https://github.com/alext))

## [0.10.10.beta.1](https://github.com/chef/chef/tree/0.10.10.beta.1) (2012-04-06)
[Full Changelog](https://github.com/chef/chef/compare/0.10.8...0.10.10.beta.1)

**Merged pull requests:**

- \[CHEF-2824\] Add mount provider for Solaris OS and derivatives [\#203](https://github.com/chef/chef/pull/203) ([hfichter](https://github.com/hfichter))
- Exit with status 1 for knife cookbook upload errors [\#171](https://github.com/chef/chef/pull/171) ([andrewle](https://github.com/andrewle))

## [0.10.8](https://github.com/chef/chef/tree/0.10.8) (2011-12-16)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6...0.10.8)

## [0.10.6](https://github.com/chef/chef/tree/0.10.6) (2011-12-13)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.rc.5...0.10.6)

## [0.10.6.rc.5](https://github.com/chef/chef/tree/0.10.6.rc.5) (2011-12-07)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.rc.4...0.10.6.rc.5)

## [0.10.6.rc.4](https://github.com/chef/chef/tree/0.10.6.rc.4) (2011-12-02)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.rc.3...0.10.6.rc.4)

## [0.10.6.rc.3](https://github.com/chef/chef/tree/0.10.6.rc.3) (2011-11-28)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.rc.2...0.10.6.rc.3)

## [0.10.6.rc.2](https://github.com/chef/chef/tree/0.10.6.rc.2) (2011-11-21)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.rc.1...0.10.6.rc.2)

## [0.10.6.rc.1](https://github.com/chef/chef/tree/0.10.6.rc.1) (2011-11-16)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.beta.3...0.10.6.rc.1)

## [0.10.6.beta.3](https://github.com/chef/chef/tree/0.10.6.beta.3) (2011-11-10)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.beta.2...0.10.6.beta.3)

**Merged pull requests:**

- Fixed typo in chef-solr Rakefile [\#177](https://github.com/chef/chef/pull/177) ([iafonov](https://github.com/iafonov))
- Don't depend on the value of an masgn [\#174](https://github.com/chef/chef/pull/174) ([dje](https://github.com/dje))

## [0.10.6.beta.2](https://github.com/chef/chef/tree/0.10.6.beta.2) (2011-11-01)
[Full Changelog](https://github.com/chef/chef/compare/0.10.6.beta.1...0.10.6.beta.2)

## [0.10.6.beta.1](https://github.com/chef/chef/tree/0.10.6.beta.1) (2011-10-31)
[Full Changelog](https://github.com/chef/chef/compare/0.10.4...0.10.6.beta.1)

**Merged pull requests:**

- Chef-2357/2358: support cwd and environment on Windows shell\_out [\#170](https://github.com/chef/chef/pull/170) ([jkeiser-oc](https://github.com/jkeiser-oc))
- Chef 2655 [\#166](https://github.com/chef/chef/pull/166) ([andreacampi](https://github.com/andreacampi))
- Chef 2549 new [\#157](https://github.com/chef/chef/pull/157) ([ctdk](https://github.com/ctdk))
- Robustify git resource, add development\_mode and update\_method, add tests  [\#105](https://github.com/chef/chef/pull/105) ([jkeiser-oc](https://github.com/jkeiser-oc))
- dev:features doesn't really want to call start\_chef\_solr\_indexer anymore [\#63](https://github.com/chef/chef/pull/63) ([jtimberman](https://github.com/jtimberman))

## [0.10.4](https://github.com/chef/chef/tree/0.10.4) (2011-08-11)
[Full Changelog](https://github.com/chef/chef/compare/0.10.2...0.10.4)

**Merged pull requests:**

- Changes documentation to account for change from \(-d to -D\) in knife cookbook site install.  [\#115](https://github.com/chef/chef/pull/115) ([stevendanna](https://github.com/stevendanna))

## [0.10.2](https://github.com/chef/chef/tree/0.10.2) (2011-06-29)
[Full Changelog](https://github.com/chef/chef/compare/0.9.18...0.10.2)

## [0.9.18](https://github.com/chef/chef/tree/0.9.18) (2011-06-29)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0...0.9.18)

**Merged pull requests:**

- Add 'additional\_remotes' property to 'git' resource [\#91](https://github.com/chef/chef/pull/91) ([jkeiser-oc](https://github.com/jkeiser-oc))
- Fix for CHEF-2378 [\#90](https://github.com/chef/chef/pull/90) ([wolfpakz](https://github.com/wolfpakz))
- add support for reading key from remote url [\#77](https://github.com/chef/chef/pull/77) ([lusis](https://github.com/lusis))

## [0.10.0](https://github.com/chef/chef/tree/0.10.0) (2011-05-02)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.rc.2...0.10.0)

**Merged pull requests:**

- PATH issue for groupadd/useradd [\#38](https://github.com/chef/chef/pull/38) ([lusis](https://github.com/lusis))

## [0.10.0.rc.2](https://github.com/chef/chef/tree/0.10.0.rc.2) (2011-04-29)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.rc.1...0.10.0.rc.2)

## [0.10.0.rc.1](https://github.com/chef/chef/tree/0.10.0.rc.1) (2011-04-28)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.rc.0...0.10.0.rc.1)

**Merged pull requests:**

- mount support for fuse filesystems in chef [\#54](https://github.com/chef/chef/pull/54) ([wfelipe](https://github.com/wfelipe))

## [0.10.0.rc.0](https://github.com/chef/chef/tree/0.10.0.rc.0) (2011-04-15)
[Full Changelog](https://github.com/chef/chef/compare/0.9.16...0.10.0.rc.0)

## [0.9.16](https://github.com/chef/chef/tree/0.9.16) (2011-04-15)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.10...0.9.16)

## [0.10.0.beta.10](https://github.com/chef/chef/tree/0.10.0.beta.10) (2011-04-14)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.9...0.10.0.beta.10)

## [0.10.0.beta.9](https://github.com/chef/chef/tree/0.10.0.beta.9) (2011-04-11)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.8...0.10.0.beta.9)

## [0.10.0.beta.8](https://github.com/chef/chef/tree/0.10.0.beta.8) (2011-04-08)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.7...0.10.0.beta.8)

## [0.10.0.beta.7](https://github.com/chef/chef/tree/0.10.0.beta.7) (2011-04-06)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.6...0.10.0.beta.7)

## [0.10.0.beta.6](https://github.com/chef/chef/tree/0.10.0.beta.6) (2011-04-04)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.5...0.10.0.beta.6)

## [0.10.0.beta.5](https://github.com/chef/chef/tree/0.10.0.beta.5) (2011-03-31)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.4...0.10.0.beta.5)

## [0.10.0.beta.4](https://github.com/chef/chef/tree/0.10.0.beta.4) (2011-03-31)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.3...0.10.0.beta.4)

## [0.10.0.beta.3](https://github.com/chef/chef/tree/0.10.0.beta.3) (2011-03-30)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.2...0.10.0.beta.3)

## [0.10.0.beta.2](https://github.com/chef/chef/tree/0.10.0.beta.2) (2011-03-30)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.1...0.10.0.beta.2)

## [0.10.0.beta.1](https://github.com/chef/chef/tree/0.10.0.beta.1) (2011-03-29)
[Full Changelog](https://github.com/chef/chef/compare/0.10.0.beta.0...0.10.0.beta.1)

## [0.10.0.beta.0](https://github.com/chef/chef/tree/0.10.0.beta.0) (2011-03-28)
[Full Changelog](https://github.com/chef/chef/compare/0.9.14...0.10.0.beta.0)

## [0.9.14](https://github.com/chef/chef/tree/0.9.14) (2011-03-04)
[Full Changelog](https://github.com/chef/chef/compare/0.9.14.rc.1...0.9.14)

## [0.9.14.rc.1](https://github.com/chef/chef/tree/0.9.14.rc.1) (2011-03-03)
[Full Changelog](https://github.com/chef/chef/compare/0.9.14.beta.1...0.9.14.rc.1)

## [0.9.14.beta.1](https://github.com/chef/chef/tree/0.9.14.beta.1) (2011-02-09)
[Full Changelog](https://github.com/chef/chef/compare/pl-rel-1.0.0...0.9.14.beta.1)

## [pl-rel-1.0.0](https://github.com/chef/chef/tree/pl-rel-1.0.0) (2010-11-25)
[Full Changelog](https://github.com/chef/chef/compare/nofields-deploy...pl-rel-1.0.0)

## [nofields-deploy](https://github.com/chef/chef/tree/nofields-deploy) (2010-10-25)
[Full Changelog](https://github.com/chef/chef/compare/rel-0.9.12...nofields-deploy)

## [rel-0.9.12](https://github.com/chef/chef/tree/rel-0.9.12) (2010-10-22)
[Full Changelog](https://github.com/chef/chef/compare/0.9.12...rel-0.9.12)

## [0.9.12](https://github.com/chef/chef/tree/0.9.12) (2010-10-22)
[Full Changelog](https://github.com/chef/chef/compare/0.9.10...0.9.12)

## [0.9.10](https://github.com/chef/chef/tree/0.9.10) (2010-10-19)
[Full Changelog](https://github.com/chef/chef/compare/0.9.10.rc.3...0.9.10)

## [0.9.10.rc.3](https://github.com/chef/chef/tree/0.9.10.rc.3) (2010-10-12)
[Full Changelog](https://github.com/chef/chef/compare/0.9.10.rc.2...0.9.10.rc.3)

## [0.9.10.rc.2](https://github.com/chef/chef/tree/0.9.10.rc.2) (2010-10-08)
[Full Changelog](https://github.com/chef/chef/compare/0.9.10.rc.1...0.9.10.rc.2)

## [0.9.10.rc.1](https://github.com/chef/chef/tree/0.9.10.rc.1) (2010-10-08)
[Full Changelog](https://github.com/chef/chef/compare/0.9.10.rc.0...0.9.10.rc.1)

## [0.9.10.rc.0](https://github.com/chef/chef/tree/0.9.10.rc.0) (2010-10-07)
[Full Changelog](https://github.com/chef/chef/compare/beta-1...0.9.10.rc.0)

## [beta-1](https://github.com/chef/chef/tree/beta-1) (2010-09-21)
[Full Changelog](https://github.com/chef/chef/compare/beta-1-pre...beta-1)

## [beta-1-pre](https://github.com/chef/chef/tree/beta-1-pre) (2010-09-15)
[Full Changelog](https://github.com/chef/chef/compare/0.9.8...beta-1-pre)

## [0.9.8](https://github.com/chef/chef/tree/0.9.8) (2010-08-05)
[Full Changelog](https://github.com/chef/chef/compare/0.9.8.rc.0...0.9.8)

## [0.9.8.rc.0](https://github.com/chef/chef/tree/0.9.8.rc.0) (2010-07-31)
[Full Changelog](https://github.com/chef/chef/compare/0.9.8.beta.2...0.9.8.rc.0)

## [0.9.8.beta.2](https://github.com/chef/chef/tree/0.9.8.beta.2) (2010-07-29)
[Full Changelog](https://github.com/chef/chef/compare/0.9.8.beta.1...0.9.8.beta.2)

## [0.9.8.beta.1](https://github.com/chef/chef/tree/0.9.8.beta.1) (2010-07-23)
[Full Changelog](https://github.com/chef/chef/compare/0.9.6...0.9.8.beta.1)

## [0.9.6](https://github.com/chef/chef/tree/0.9.6) (2010-07-02)
[Full Changelog](https://github.com/chef/chef/compare/0.9.4...0.9.6)

## [0.9.4](https://github.com/chef/chef/tree/0.9.4) (2010-06-30)
[Full Changelog](https://github.com/chef/chef/compare/0.9.2...0.9.4)

## [0.9.2](https://github.com/chef/chef/tree/0.9.2) (2010-06-29)
[Full Changelog](https://github.com/chef/chef/compare/0.9.0...0.9.2)

## [0.9.0](https://github.com/chef/chef/tree/0.9.0) (2010-06-21)
[Full Changelog](https://github.com/chef/chef/compare/0.9.0.rc02...0.9.0)

## [0.9.0.rc02](https://github.com/chef/chef/tree/0.9.0.rc02) (2010-06-17)
[Full Changelog](https://github.com/chef/chef/compare/0.9.0.rc01...0.9.0.rc02)

## [0.9.0.rc01](https://github.com/chef/chef/tree/0.9.0.rc01) (2010-06-16)
[Full Changelog](https://github.com/chef/chef/compare/0.9.0.b02...0.9.0.rc01)

## [0.9.0.b02](https://github.com/chef/chef/tree/0.9.0.b02) (2010-06-13)
[Full Changelog](https://github.com/chef/chef/compare/0.8.16...0.9.0.b02)

## [0.8.16](https://github.com/chef/chef/tree/0.8.16) (2010-05-12)
[Full Changelog](https://github.com/chef/chef/compare/0.8.14...0.8.16)

## [0.8.14](https://github.com/chef/chef/tree/0.8.14) (2010-05-07)
[Full Changelog](https://github.com/chef/chef/compare/0.8.12...0.8.14)

## [0.8.12](https://github.com/chef/chef/tree/0.8.12) (2010-05-06)
[Full Changelog](https://github.com/chef/chef/compare/alpha_deploy_4...0.8.12)

## [alpha_deploy_4](https://github.com/chef/chef/tree/alpha_deploy_4) (2010-04-14)
[Full Changelog](https://github.com/chef/chef/compare/0.8.10...alpha_deploy_4)

## [0.8.10](https://github.com/chef/chef/tree/0.8.10) (2010-04-01)
[Full Changelog](https://github.com/chef/chef/compare/0.8.8...0.8.10)

## [0.8.8](https://github.com/chef/chef/tree/0.8.8) (2010-03-18)
[Full Changelog](https://github.com/chef/chef/compare/0.8.6...0.8.8)

## [0.8.6](https://github.com/chef/chef/tree/0.8.6) (2010-03-05)
[Full Changelog](https://github.com/chef/chef/compare/0.8.4...0.8.6)

## [0.8.4](https://github.com/chef/chef/tree/0.8.4) (2010-03-02)
[Full Changelog](https://github.com/chef/chef/compare/alpha_deploy_3...0.8.4)

## [alpha_deploy_3](https://github.com/chef/chef/tree/alpha_deploy_3) (2010-02-28)
[Full Changelog](https://github.com/chef/chef/compare/0.8.2...alpha_deploy_3)

## [0.8.2](https://github.com/chef/chef/tree/0.8.2) (2010-02-28)
[Full Changelog](https://github.com/chef/chef/compare/alpha_deploy_2...0.8.2)

## [alpha_deploy_2](https://github.com/chef/chef/tree/alpha_deploy_2) (2010-02-28)
[Full Changelog](https://github.com/chef/chef/compare/0.7.16...alpha_deploy_2)

## [0.7.16](https://github.com/chef/chef/tree/0.7.16) (2009-12-22)
[Full Changelog](https://github.com/chef/chef/compare/0.7.14...0.7.16)

## [0.7.14](https://github.com/chef/chef/tree/0.7.14) (2009-10-26)
[Full Changelog](https://github.com/chef/chef/compare/0.7.12rc0...0.7.14)

## [0.7.12rc0](https://github.com/chef/chef/tree/0.7.12rc0) (2009-10-03)
[Full Changelog](https://github.com/chef/chef/compare/0.7.10...0.7.12rc0)

## [0.7.10](https://github.com/chef/chef/tree/0.7.10) (2009-09-04)
[Full Changelog](https://github.com/chef/chef/compare/0.7.8...0.7.10)

## [0.7.8](https://github.com/chef/chef/tree/0.7.8) (2009-08-12)
[Full Changelog](https://github.com/chef/chef/compare/0.7.6...0.7.8)

## [0.7.6](https://github.com/chef/chef/tree/0.7.6) (2009-08-07)
[Full Changelog](https://github.com/chef/chef/compare/0.7.4...0.7.6)

## [0.7.4](https://github.com/chef/chef/tree/0.7.4) (2009-06-26)
[Full Changelog](https://github.com/chef/chef/compare/0.7.2...0.7.4)

## [0.7.2](https://github.com/chef/chef/tree/0.7.2) (2009-06-24)
[Full Changelog](https://github.com/chef/chef/compare/0.7.0...0.7.2)

## [0.7.0](https://github.com/chef/chef/tree/0.7.0) (2009-06-10)
[Full Changelog](https://github.com/chef/chef/compare/0.6.2...0.7.0)

## [0.6.2](https://github.com/chef/chef/tree/0.6.2) (2009-04-29)
[Full Changelog](https://github.com/chef/chef/compare/0.6.0...0.6.2)

## [0.6.0](https://github.com/chef/chef/tree/0.6.0) (2009-04-28)
[Full Changelog](https://github.com/chef/chef/compare/0.5.6...0.6.0)

## [0.5.6](https://github.com/chef/chef/tree/0.5.6) (2009-03-06)
[Full Changelog](https://github.com/chef/chef/compare/0.5.4...0.5.6)

## [0.5.4](https://github.com/chef/chef/tree/0.5.4) (2009-02-13)
[Full Changelog](https://github.com/chef/chef/compare/0.5.2...0.5.4)

## [0.5.2](https://github.com/chef/chef/tree/0.5.2) (2009-02-01)
[Full Changelog](https://github.com/chef/chef/compare/chef-server-package...0.5.2)

## [chef-server-package](https://github.com/chef/chef/tree/chef-server-package) (2008-06-16)


\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*