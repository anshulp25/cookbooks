file "/var/lib/zookeeper/myid" do
  content "1"
end


template "/etc/zookeeper/conf/zoo.cfg" do
  source "zoo.cfg.erb"
  variables ({
    :zk_url => node['zookeeper']['url']
  }
  )
end
