# nodejs + Install Jenkins on Ubuntu instruction(Using snap)

1.Switch to the Root User or a Sudoer

su -

2.apt update

3.make sure Snap is installed on your system
apt install snapd

4.Enable Snap socket service

sudo systemctl enable --now snapd.socket

5.Install Jenkins using snap

snap install jenkins --classic

6.Start and Enable Jenkins

snap start jenkins

snap enable jenkins

7.Open a browser and go to
http://localhost:8080

8.Get the initial admin password, use the 'cat' command

cat /var/snap/jenkins/common/jenkins/secrets/initialAdminPassword

9.Continue the setup of plugins

10.Basic Pipeline


pipeline {
    agent any

    stages {
        stage('First Stage') {
            steps {
                echo 'hello world'
            }
        }
    }
}
