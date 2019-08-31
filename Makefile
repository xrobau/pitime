# Turns a RPI into a Extremely Accurate stratum 1 Timeserver
#

.PHONY: playbook vim

playbook: vim /usr/bin/ansible
	ansible-playbook -i hosts main.yml

vim:
	update-alternatives --set editor /usr/bin/vim.basic

/usr/bin/ansible:
	apt-get -y install ansible
