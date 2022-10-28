# add portainer repo
helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
helm repo update rancher-latest

helm show values "rancher-latest"/"rancher" > ./values.yml

helm install "rancher" "rancher-latest"/"rancher" \
    --create-namespace -n "cattle-system" \
    --values values.yml

# if you want to use ingress in portainer
kubectl apply -f Docker2K8s/7_Management/portainer/IngressClass.yml