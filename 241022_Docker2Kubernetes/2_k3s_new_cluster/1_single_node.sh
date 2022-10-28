# watch posible architectures
https://docs.k3s.io/architecture

curl -sfL https://get.k3s.io | sh -
# Check for Ready node, takes ~30 seconds
sudo chmod 666 /etc/rancher/k3s/k3s.yaml
k3s kubectl get node

# One-Liner
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -

# remove group-readable & world-readable
sudo chmod o-r /etc/rancher/k3s/k3s.yaml
sudo chmod g-r /etc/rancher/k3s/k3s.yaml
