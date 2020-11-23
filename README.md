# Udacity Cloud DevOps Engineer Capstone 

## Overview

In this project, I have applied the skills I developed through the Cloud DevOps Engineering program.
I applied the skills to operationalize a Machine Learning Microservice API. 
I had a given pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. More about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Project Tasks

In this project, I applied the skills and knowledge which was developed throughout the Cloud DevOps Nanodegree program. These include:
*Working in AWS</li>
*Using Jenkins to implement Continuous Integration and Continuous Deployment</li>
*Building pipelines</li>
*Working with Ansible and CloudFormation to deploy clusters</li>
*Building Kubernetes clusters</li>
*Building Docker containers in pipelines</li>


You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase my abilities within Cloud DevOps Engineering.**

---

## Setup the Environment

The following software is setup:
* AWS EC2 with Ubuntu 20.04
* Docker
* AWS CLI
* AWS Eksctl
* AWS Kubectl
* Jenkins
* Pipeline: AWS Plugin
* Blue Ocean Plugin
* Setup AWS Credentials
* Setup Dockerhub Credentials

# Install Docker 
```
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
```

# Install AWS CLI
```
aws --version
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
pip3 install --upgrade --user awscli
```

# Install AWS Eksctl
```
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
```

# Install AWS Kubectl
```
sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2 curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
```

# Install AWS Credentials
```
$ aws configure
AWS Access Key ID [None]: <AKIAIOSFODNN7EXAMPLE>
AWS Secret Access Key [None]: <wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY>
Default region name [None]: <region-code>
Default output format [None]: <json>
```

# Install Java
```
sudo apt update
sudo apt search openjdk
sudo apt install openjdk-8-jdk
java -version
```

# Install Jenkins
```
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
```

## Deploy a Eks Cluster
The following command is used to deploy the cluster to which the app later is deployed. 
```
eksctl create cluster --name capstoneclustermdumbu --version 1.18 --nodegroup-name standard-workers 
--node-type t2.micro --nodes 3 --nodes-min 1 --nodes-max 4 --node-ami auto --region us-east-2

```

## Deploy a Eks Cluster
The following steps are implemented in the Jenkins Pipeline:
1. Linting step: Checking for errors in the Dockerfile.
2. Build a Docker image of the app. 
3. Push the the Docker image to the Dockerhub repository of mdumbuys93.
4. Deploy App to AWS cluster.
5. Checking if App is up.
6. Checking for rollout.
7. Cleaning up.


## Licene

[MIT](https://choosealicense.com/licenses/mit/)

