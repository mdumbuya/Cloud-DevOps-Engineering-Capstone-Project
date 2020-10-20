# cd-Engineering-capstone (Cloud-DevOps-Engineering-Capstone)

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

##### JDK
```
$ sudo apt-get update
$ sudo apt install -y default-jdk        
$ wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
$ sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
$ sudo apt-get update
$ sudo apt-get install jenkin
$ sudo systemctl start jenkins
$ sudo systemctl enable jenkins
$ sudo systemctl status jenkins
```

## Licene

[MIT](https://choosealicense.com/licenses/mit/)
