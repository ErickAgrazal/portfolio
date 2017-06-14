# Install updates
sudo apt-get update

# Install GIT
sudo apt-get install git -y
git config --global user.name "Erick Agrazal"
git config --global user.email "erick.agrazal@gmail.com"

# Generate keys if not created and add it to the ssh client
ssh-keygen -t rsa -b 4096 -C "erick.agrazal@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
