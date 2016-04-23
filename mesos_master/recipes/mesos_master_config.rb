file "/etc/mesos/zk" do
  content "zk://mesosmaster:2181/mesos"
end

file "/etc/mesos-master/quorum" do
  content "1"
end


service "mesos-slave" do
  action :disable
end

service "zookeeper" do
  action :start
end


service "mesos-master" do
  action :start
end


service "marathon" do
  action :start
end
