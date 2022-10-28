# add portainer repo
helm repo add portainer https://portainer.github.io/k8s/
helm repo update portainer

helm show values "portainer"/"portainer" > ./values.yml

helm install "portainer" "portainer"/"portainer" \
    --create-namespace -n "my-portainer" \
    --values ./values.yml

# if you want to use ingress in portainer
kubectl apply -f ./IngressClass.yml