# Ansible task
https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_module.html

## Ansible Docker on AWS Task
- Step1: Launch ansible controller
    - `Vagrant up controller`
    - `vagrant ssh controller`
    - Navigate to controller and run `./controller_config.sh`
    -
- Step2: create an Ansible playbook launch an ec2 instance on - useful links available in description above 

Let's create Ansible vault file to secure our AWS keys

- cd `/etc/ansible` then create a folder `sudo mkdir group_vars`
- cd group_vars then create a nother folder 
- `sudo mkdir all`, then `cd all`
- run `sudo ansible-vault create pass.yml`
- aws_access_key and aws_secret_key copy your keys
- to save the file press `esc` then type `:wq!` then enter
- for editing the file `ansible-vault edit pass.yml`
- `sudo chmod 666 pass.yml`
- `sudo cat pass.yml` it's encrypted now
- change the hosts file and add aws ip 

        [aws]
        ec2-instance ansible_host=<ec2_IP> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/eng99.pem


- Step3: Launch ec2 insatce using ansible playbook
    - creating playbook file `sudo nano aws.yml`
    - `sudo ansible-playbook aws.yml -e 'ansible_python_interpreter=/usr/bin/python3' --ask-vault-pass`
    - 

- Step4: Install docker and create docker file

    - `curl -fsSl https://get.docker.com/ | sh`

- Step5: Build Nginx image using Dockerfile

- Step6: in Dockerfile's script copy the index.html, that we created yesterday, to default location of nginx - usr/share/nginx/html/ to host your webpage using nginx web-server
- Step7: push the image to your docker hub
- Step8: create a container of nginx image and ensure it's visible on ec2 public ip
- Step9: 
- 
### comands
- `sudo nano aws.yml`
- `sudo ansible-playbook aws.yml -e 'ansible_python_interpreter=/usr/bin/python3' --ask-vault-pass`
- 
### Install Docker
- `curl -fsSl https://get.docker.com/ | sh`