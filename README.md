# GoMyCode training workshop : CI/CD

Install Vagrant and VirtualBox in your Vagrant Host machine.

Clone repository:

```bash
git clone https://github.com/mdnfiras/gmc-workshop3.git
```

Launch & SSH into the workshop's Vagrant VM.

```bash
cd gmc-workshop3/vm-env
vagrant up
vagrant ssh
```

Install Open JDK 11:

```bash
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

Start Jenkins:

```bash
sudo systemctl start jenkins
```

Check Jenkins' service:

```bash
sudo systemctl status jenkins
```

Print the initial admin password:

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

Exit the VM's SSH session, visit the VM's IP address http://192.168.20.2:8080 in your web browser and paste the password to get access to Jenkins' web interface.

