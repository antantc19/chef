#!/usr/bin/env ruby

def whatprovides(package_name)
  provides = `dnf repoquery -q --latest-limit 1 --whatprovides #{package_name}`
  provides.each_line do |line|
    if line =~ /^(\S+)\-(\S+)\-(\S+)\.(\S+)/
      print "#{$1} #{$2}-#{$3}.#{$4}"
      break
    end
  end
end

while line = STDIN.gets.chomp
  args = line.split(/\s+/)
  case args.shift
  when "whatprovides"
    whatprovides(*args)
  else
    raise "bad command"
  end
end
