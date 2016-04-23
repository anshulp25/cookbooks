
file "/etc/mesos/zk" do
  content "zk://mesosmaster:2181/mesos"
end


service "mesos-master" do
  action :disable
end
