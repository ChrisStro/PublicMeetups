# add repository
helm repo add "invoiceninja" "https://invoiceninja.github.io/dockerfiles"

# load updates from repo
helm repo update "invoiceninja"

# list available charts
helm search repo "invoiceninja"
helm search repo "invoiceninja"/"invoiceninja" --versions # list availabe versions

# show charts default values
helm show values "invoiceninja"/"invoiceninja"
helm show values "invoiceninja"/"invoiceninja" > values.yaml

# install chart using override --> Only for dev
helm install "invoiceninja" "invoiceninja"/"invoiceninja" \
 -n "my-invoiceninja" --create-namespace \
 --set appKey="base64:JOhRbzcMHMcWldwffnF0CbSO4H3VwmHLG+CABn+Mnvg=" \
 --set userEmail="admin@example.com" \
 --set userPassword="changeme!" \
 --set ingress.hostname="invoiceninja.x.x.x.x.sslip.io" \
 --set ingress.tls="true"

# install chart using value.yml --> put value.yml into version control
helm install "invoiceninja" "invoiceninja"/"invoiceninja" \
 -n "my-invoiceninja" --create-namespace \
 --values ./my-values.yml

# uninstall app
helm uninstall "invoiceninja" -n "my-invoiceninja"