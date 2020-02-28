# Fix nginx requests error
exec {'Replace line':
path     => '/etc/default/nginx',
command  => "echo 'ULIMIT=\"-n 4096\"' > /etc/default/nginx",
provider => shell
}
-> exec {'Restart nginx':
command  =>  'service nginx restart',
provider => shell
}
