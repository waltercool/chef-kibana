name 'kibana_lwrp'
maintainer 'John E. Vincent'
maintainer_email 'lusis.org+github.com@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures kibana'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

version '3.0.2'

%w(git nginx apache2 ark java runit compat_resource).each do |cb|
  depends cb
end
depends 'libarchive', '~> 1.0.0'

supports 'ubuntu'
supports 'debian'
depends 'ohai'
