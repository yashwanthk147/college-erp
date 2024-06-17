
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker root  # Replace with your system's username, e.g., 'ubuntu'
newgrp docker
sudo chmod 777 /var/run/docker.sock