# udacity-cloud-devops-engineer-capstone

This project applies the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program.

## Project Tasks

The following tasks are carried out in this project:
+ Working in AWS
+ Using Jenkins to implement Continuous Integration and Continuous Deployment
+ Building pipelines
+ Working with Ansible and CloudFormation to deploy clusters
+ Building Kubernetes clusters
+ Building Docker containers in pipelines

#### Setup of EC2 for Jenkins

##### Java
```
sudo apt-get update
sudo apt install -y default-jdk        
```

##### Intall Java
```
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
```

##### Start Jenkins
```
sudo systemctl start jenkins
sudo systemctl status jenkins
```

## Licene

[MIT](https://choosealicense.com/licenses/mit/)


##### Ansible
```
$ sudo apt-get update
$ sudo apt install software-properties-common
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
