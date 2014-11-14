dirname = File.dirname(File.expand_path(__FILE__))

cookbook_path     File.join(dirname, "cookbooks")
cache_path        "#{ENV['HOME']}/.cache/chef"
