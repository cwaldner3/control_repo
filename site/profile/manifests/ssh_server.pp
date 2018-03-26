class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJsdZOVB+FrP2uohbuEziBhEB3Bl/SmsJKMP5lyU4PPTXR67uBS1Eb1rWP6tPdtlM7wY6I7RGuucijXT83sQ3cN3sO08hPgZFsldoCxtob/r41X88SidciNtgxm9ekQBDcR4M333RShwrREbyx0ZJRiLWiGWD7fujeEGGoiQuylwgh/OeBTbKZ4IlcriZoR7vn00izzdeEfc7EZwNQSgxwE/D6SfPyMf3iOyiU8jitnPC7Sz4yif6Zp94mUfM0qqFR3GSnEGO38Yle3CIC4eIQo9Ino+yc8SlmQDnlJNbT7yIl7X8hVhzHXnB4WxTQu+98gF5lThFwKsEwZo7Ir2Xd',
	}  
}



