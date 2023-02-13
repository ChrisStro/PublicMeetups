# run once
#docker run -it --rm --name pwsh mcr.microsoft.com/powershell:latest pwsh # that is easy
kubectl run -it --rm pwsh --image=mcr.microsoft.com/powershell:latest --restart=Never
kubectl run -it --rm pwsh --image=mcr.microsoft.com/powershell:latest --restart=Never -- pwsh

# create simple pod
kubectl run whoami --image=traefik/whoami --port=80 #--expose=true
kubectl exec -it whoami -- sh

# create service
kubectl expose pod/whoami --port=80 --target-port=80 --name=whoami-svc
 # test service
 kubectl port-forward --address 0.0.0.0 service/whoami-svc 8888:80

# create ingress
kubectl create ingress whoami-1 --rule="whoami.x.x.x.x.sslip.io/*=whoami-svc:80"
