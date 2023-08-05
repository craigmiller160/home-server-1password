#!/bin/sh

#!/bin/sh

helm install \
  cert-manager \
  ./deploy/chart \
  --kube-context=microk8s \
  --wait \
  --timeout 5m \
  --namespace infra-prod \
  --values ./deploy/chart/values.yml \
  --set connect.operator.token.value=$ONEPASSWORD_TOKEN \
  --set connect.connect.credentials_base64=$ONEPASSWORD_CREDS_BASE64