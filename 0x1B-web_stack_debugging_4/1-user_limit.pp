# Holberton user
exec {'Fix limits hard':
command  => "sed -i 's/holberton hard nofile 5/holberton hard no file 10000/g' \
/etc/security/limits.conf",
provider => shell
}
-> exec {'Fix limits soft':
command  => "sed -i 's/holberton soft nofile 4/holberton soft no file 10000/g' \
/etc/security/limits.conf",
provider => shell
}
-> exec {'reboot ':
command  => 'sysctl -p',
provider => shell
}
