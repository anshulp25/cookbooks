package "MesosRepo" do
  source  node['mesos']['repourl']
  action  :install
end

package "ClouderaZookeeperRepo" do
  source node['zookeeper']['repourl']
  action :install
end


package ["mesos","marathon","mesosphere-zookeeper"] do
  action :install
end
