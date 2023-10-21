# Prerequisites

1. create two digitalocean droplets as hosts
    - host-1 as load balancer
    - host-2 as wordpress and database

2. use your laptop as client
    - [install](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)ansible
    - install SSHPass
        ` sudo apt-get install sshpass`

3. initial the hosts 
    - go to ansible/initial-server/configs
    - run `ansible all --list-hosts` to see host file is correct or not
    - run `ansible-playbook ../playbooks/playbook.yml -k`
    - insert the server password

4. install docker on hosts
