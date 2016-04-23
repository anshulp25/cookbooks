remote_file "tmp/mesosrepo.rpm" do
  source node['mesos']['repourl']
end


package "MesosRepo" do
  source  "/tmp/mesosrepo.rpm"
  action  :install
end

package "deltarpm" do
  action :install
end

package "mesos" do
  action :install
end
