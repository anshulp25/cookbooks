file "/etc/mesos/zk" do
  content "zk://"+node['zookeeper']['url']
end

file "/etc/mesos-master/quorum" do
  content "1"
end
