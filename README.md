# Setup

- Download Raspi OS Lite (64-bit) and write it to the SD card
- Run `./setup.sh`
- `ssh admin@192.168.2.XXX`
- `sudo apt update`
- `sudo apt upgrade`
- `sudo reboot`
- `ssh admin@192.168.2.XXX`
- Expand filesystem in raspi-config and reboot

## Docker and Portainer
- [Install Docker](https://docs.docker.com/engine/install/debian/)
- Enable Docker Swarm mode `sudo docker swarm init`
- [Install Portainer with Docker Swarm](https://docs.portainer.io/start/install-ce/server/swarm/linux)