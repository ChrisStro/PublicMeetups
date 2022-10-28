# add repository
helm repo add "bootc" "https://charts.boo.tc"

# load updates from repo
helm repo update "bootc"

# list available charts
helm search repo "bootc"
helm search repo "bootc"/"netbox" --versions # list availabe versions

# show charts default values
helm show values "bootc"/"netbox"
helm show values "bootc"/"netbox" > values.yaml

# install chart using value.yml --> put value.yml into version control
helm install "netbox" "bootc"/"netbox" \
 -n "my-netbox" --create-namespace \
 --values ./values.yml

# uninstall app
helm uninstall "netbox" -n "my-netbox"

# create superuser
kubectl -n my-netbox get deploy -w
kubectl -n my-netbox exec -it deploy/netbox -- bash -c 'python3 /opt/netbox/netbox/manage.py createsuperuser'
