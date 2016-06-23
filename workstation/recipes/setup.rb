#package 'cowsay' do
#   action :install
#end

package 'tree' do
   action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
   content "Property of ...

   IPADDRESS-ohai: #{node['ipaddress']}
   HOSTNAME-ohai:  #{node['hostname']}
   MEMORY-ohai:    #{node['memory']['total']}
   CPU-ohai:       #{node['cpu']['0']['mhz']} MHz
   "

   mode '0644'
   owner 'root'
   group 'root'
end
