#
# Cookbook Name:: ruby
# Recipe:: default
#

include_recipe 'ruby_build'

ruby_build_ruby node[:ruby][:version] do
  cflags = case node[:ruby][:version]
           when /^1\.9/
             '-march=native -g -O2'
             # fails on wheezy
           #when /^2\.0/
           #  "-O3 -pipe#{' -Wno-error=shorten-64-to-32' if platform?('debian')}"
           when /^1\.8/
             '-O2'
           end
  environment( 'CFLAGS' => cflags )
end

node.default[:ruby][:dir] = "/usr/local/ruby/#{node[:ruby][:version]}"
node.default[:ruby][:gem] = "#{node[:ruby][:dir]}/bin/gem"
node.default[:ruby][:ruby] = "#{node[:ruby][:dir]}/bin/ruby"
