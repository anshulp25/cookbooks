package "MesosRepo" do
  source  node['mesos']['repourl']
  action  :install
end


package "mesos" do
  action :install
end
