maintainer       "Jens Kraemer"
maintainer_email "jk@jkraemer.net"
license          "MIT"
description      "Installs ruby"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends 'ruby_build'
recipe "ruby", "Installs ruby"

%w{ ubuntu debian }.each do |os|
  supports os
end
