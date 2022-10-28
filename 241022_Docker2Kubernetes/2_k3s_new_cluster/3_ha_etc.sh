# setup server node
# sudo cat /var/lib/rancher/k3s/server/node-token when using rnd token
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" K3S_TOKEN="WayToSimple" sh -s - server \
    --cluster-init

# join agents
curl -sfL https://get.k3s.io | K3S_URL=https://k3s1:6443 K3S_TOKEN="WayToSimple" sh -s - server


# with custom loadbalancer & ingress config
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" K3S_TOKEN="WayToSimple" sh -s - server \
    --cluster-init \
    --disable servicelb \
    --no-deploy traefik

curl -sfL https://get.k3s.io | K3S_URL=https://k3s1:6443 K3S_TOKEN="WayToSimple" sh -s - server \
    --disable servicelb \
    --no-deploy traefik