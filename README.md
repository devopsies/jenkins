# DevSecOps Workshops: CI/CD

This is a brief introduction to Jenkins, followed by a workshop. For the workshop material, visit <a href="https://github.com/devopsies/jenkins" target="_blank">github.com/devopsies/jenkins</a>. For a complete documentation, visit <a href="https://www.jenkins.io/doc/" target="_blank">www.jenkins.io/doc/</a>.

## What is Jenkins?

Jenkins is an open source automation server. It helps automate the parts of software development related to building, testing, and deploying, facilitating continuous integration and continuous delivery. For more information, visit <a href="https://www.jenkins.io/" target="_blank">www.jenkins.io/</a>.

## Start using Jenkins

In this workshop, we're going to build a simple CI pipeline for our previous workshop application <a href="https://github.com/mdnfiras/devsecops-github-actions" target="_blank">github.com/mdnfiras/devsecops-github-actions</a>. We're going to install Jenkins on a virtual machine that uses 1 GB of RAM and 2 vCPUs.

### Install Jenkins

Clone the repository then launch & SSH into the workshop's Vagrant VM `jenkins`. Install Open JDK 11:

```bash
sudo apt update
sudo apt install openjdk-11-jdk -y
```

Install Jenkins:

```bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
```

### Run Jenkins for the first time

Start Jenkins:

```bash
sudo systemctl start jenkins
```

Enable Jenkins service so it starts automatically upon VM restarts:

```bash
sudo systemctl enable jenkins
```

Check Jenkins' service:

```bash
sudo systemctl status jenkins
```

Print the initial admin password:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Exit the VM's SSH session, visit your localhost on port `8080` in your web browser and paste the password to get access to Jenkins' web interface. Chose to install the suggested plugins then configure your admin account. Let Jenkins URL be `localhost:8080` for now. Finally, you can start using Jenkins!

