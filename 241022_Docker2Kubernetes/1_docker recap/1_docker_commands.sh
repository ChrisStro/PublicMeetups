# install docker
"https://docs.docker.com/engine/install/ubuntu/"

# run containers easy
docker run -d -P --rm --name whoami -p 80:80 traefik/whoami # that is easy

# using docker to run installed binary like powershell/terraform/ansible/bicep on linux
docker run -it --rm --name pwsh mcr.microsoft.com/powershell:latest pwsh # that is easy

docker run -d --name vaultwarden \
    -v /vw-data/:/data/ \ # add persistent volumes or folders
    -p 80:80 \ # expose host:container
    vaultwarden/server:latest

# get a little bit complex
docker run -d \
  --name=wg-easy \
  -e WG_HOST=10.70.231.5 \
  -e PASSWORD=WayToSimple \
  -v ~/.wg-easy:/etc/wireguard \ # store persistent data
  -p 51820:51820/udp \ # expose ports from container to host
  -p 61821:51821/tcp \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --sysctl="net.ipv4.ip_forward=1" \
  --restart unless-stopped \
  weejewel/wg-easy

# prune images
docker images
docker image prune -a
docker images

# get more complex --> install compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version