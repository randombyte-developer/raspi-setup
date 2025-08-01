#!/bash/sh

curl -s https://kopia.io/signing-key | sudo gpg --no-tty --dearmor -o /etc/apt/keyrings/kopia-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kopia-keyring.gpg] http://packages.kopia.io/apt/ stable main" | sudo tee /etc/apt/sources.list.d/kopia.list
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install kopia -y
