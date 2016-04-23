file "/etc/hostname" do
  content "mesosmaster"
end

execute "mesos_master_hostname" do
  command "/bin/hostname mesosmaster"
end

service "network" do
  action :restart
end

template "/etc/hosts" do
  source "hosts.erb"
end
