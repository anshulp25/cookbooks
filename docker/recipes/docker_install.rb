cookbook_file "/etc/yum.repos.d/docker.repo" do
  source "docker.repo"
end

package "docker-engine" do
  action :install
end

service "docker" do
  action [ :enable , :start ]
end
