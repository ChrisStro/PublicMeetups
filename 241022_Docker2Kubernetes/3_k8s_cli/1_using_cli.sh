# list namespaces
kubectl get namespaces

# list all resources in all namespaces
kubectl get all -A

# list all resources in specific namespace
kubectl get all -n kube-system

# list specific resources in specific namespace
kubectl get <RESOURCE> -n kube-system
kubectl get <RESOURCE> -n kube-system -o yaml # output current resource as yaml
kubectl get <RESOURCE> -n kube-system -o jsonpath="{.data.odoo-password}" | base64 -d # often used to output initial passwords
kubectl -n <NAMESPACENAME> get ingress -o jsonpath="{.items[0].spec.rules[0].host}" # output single propterty value of resource

# view logs
kubectl -n <NAMESPACENAME> logs deploy/<DEPLOYMENTNAME>
kubectl -n <NAMESPACENAME> logs pod/<PODNAME>

# show more info about resource
kubectl describe <RESOURCE>/<RESOURCENAME> -n <NAMESPACENAME>

# edit resource on the fly via vi-editor
kubectl -n <NAMESPACENAME> edit <RESOURCE>/<RESOURCENAME>

# drain node
kubectl drain <NODENAME> # pause node
kubectl uncordon <NODENAME> # resume node
