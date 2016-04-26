file "/etc/mesos-slave/containerizers" do
  content "docker,mesos"
end


file "/etc/mesos-slave/executor_registration_timeout" do
  content "5mins"
end


service "mesos-slave" do
  action :restart
end
