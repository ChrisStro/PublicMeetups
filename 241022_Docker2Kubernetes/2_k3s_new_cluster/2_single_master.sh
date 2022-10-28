# setup server node
# sudo cat /var/lib/rancher/k3s/server/node-token when using rnd token
curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" K3S_TOKEN="WayToSimple" sh -s - \
    --node-taint node-role.kubernetes.io/master=true:NoSchedule # if no pds should run on this node


# join agents
curl -sfL https://get.k3s.io | K3S_URL=https://k3s1:6443 K3S_TOKEN="WayToSimple" sh -
