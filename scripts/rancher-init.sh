#!/bin/bash
#atualização e instalação de ferramentas
apt-get update
apt-get upgrade -y
# chave ssh
 echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCReTMb6l44iRxY8q6c1EcPQih9SuwRLYgenJMSUHtvrn73wuf5Qm8l6ZCtdD3fN7ECdgNL5TLc1Bxev6CaAmAuiSukWCSFW61xiGEfZQ/dpRrZwuKr6buKoQNs+38DgJdsywlfTnFog1tmZXmm0pzlyOQaPGLGYyHX58c8dYrFJDKojNxqhTjFzCs5NTq4aU4qUKyDCINeLc0z1ZiUT6kyuFLh9zEHKNefcAFzLgHl1biOlG6fXaPc8J1Y2iPUma7eCkBausUyuW6A0EMTk4fX5jbFgoltHxY/O+AN5gyUhDGEq7EGos86yhFXg2aDhKHn41sPZ6iutFAUlTGINQ5szzte4xzPpzWVeNJ70dDCzfUXBS52AutRpnCTZi6fCNwY+abEwGf63X2Lzt1r7fN+icBBY1ld7gMf/+6idquXGgFND4FGxBZQZez3IMWPpWFvbmXgesfR+wIWtOCRPJbnokRbDGTnjLV/TZ/gpzoCyvNGB6gS067jxcEHCKBmegs=" >> home/ubuntu/.ssh/authorized_keys
# 
#instalação do docker
# 
sudo su
curl https://releases.rancher.com/install-docker/19.03.sh | sh
usermod -aG docker ubuntu
# Instalação do Rancher - docker
docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  --privileged \
  rancher/rancher:latest
# # 
# # 
# sudo su
# apt-get install git -y
# curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose
# ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# # 
# # 