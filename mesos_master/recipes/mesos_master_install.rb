remote_file "/tmp/mesosrepo.rpm" do
  source node['mesos']['repourl']
end



package "MesosRepo" do
  source  "/tmp/mesosrepo.rpm"
  action  :install
end

remote_file "/tmp/clouderarepo.rpm" do
  source node['zookeeper']['repourl']
end

package "deltarpm" do
  action :install
end


package "ClouderaZookeeperRepo" do
  source "/tmp/clouderarepo.rpm"
  action :install
end


package "mesos" do
  action :install
end

package "marathon" do
  action :install
end

package "mesosphere-zookeeper" do
  action :install
end

# Need to check the working of the below one
# package [ pkg1, pkg2, pkg 3] do
# action :install
#end
