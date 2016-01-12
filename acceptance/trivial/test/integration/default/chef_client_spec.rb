describe command('chef-client') do
  its(:exit_status) { should be 0 }
end
