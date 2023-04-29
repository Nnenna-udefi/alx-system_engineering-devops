# installs an nginx server and creates a custom http header response

# install nginx
class { 'nginx': }

# custom header
file { '/etc/nginx/nginx.conf':
  content => "server_tokens off;\nadd_header X-Served-By $hostname;\n",
  notify => Service['nginx'],
}

# restart nginx services when the header changes
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/nginx.conf'],
}
