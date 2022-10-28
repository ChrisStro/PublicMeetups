
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC=”server --node-ip 10.11.11.1 --node-external-ip 10.11.11.1 --flannel-iface nm-k3s” sh -

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC=”agent --server https://10.11.11.MASTER:6443 --token < TOKEN VAL > --node-ip 10.11.11.X --node-external-ip 10.11.11.X --flannel-iface nm-k3s” sh -
