file "/etc/hostname" do
  content "mesosslave"
end

execute "mesos_slave_hostname" do
  command "/bin/hostname mesosslave"
end

service "network" do
  action :restart
end

template "/etc/hosts" do
  source "hosts_slave.erb"
end
