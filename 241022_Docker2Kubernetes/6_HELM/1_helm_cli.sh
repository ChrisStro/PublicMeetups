# create env variable
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml # needed for helm

# Install helm 3 via webscript
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# check commands
helm --help

# list current repos
helm repo list