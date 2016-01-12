execute 'bundle exec kitchen destroy' do
  cwd node['chef-acceptance']['suite-dir']

  # environment({
  #   "GEM_PATH" => "/Users/salam/.chefdk/gem/ruby/2.1.0:/opt/chefdk/embedded/lib/ruby/gems/2.1.0",
  #   "GEM_ROOT" => "/opt/chefdk/embedded/lib/ruby/gems/2.1.0",
  #   "GEM_HOME" => "/Users/salam/.chefdk/gem/ruby/2.1.0"
  # })
end
