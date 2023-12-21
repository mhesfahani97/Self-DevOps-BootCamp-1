1. create two digitalocean(or any cloud provider you want!) droplets as hosts
    - host-1 
    - host-2

2. use your laptop as client(or any thing else as client that you want!)
    - [install](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)ansible
    - install SSHPass
        `sudo apt-get install sshpass`

3. clone the project
    - `git clone https://github.com/mhesfahani97/Self-DevOps-BootCamp-1.git`

4. insert the public IPs of droplets
    - `vim Task-1/ansible/inventory/hosts.ini`
    - save it

5. insert the private or public IP of host-2
    - `vim Task-1/ansible/roles/role-5-setup-load-balancer/vars/main.yml`
    - save it

6. go to config folder
    - `cd Task-1/ansible/configs` 

7. run the ansible command
    - `ansible-playbook ../playbooks/playbook.yml -k`

8. now for see the output go to a browser and search the IP address of host-1 you've created
