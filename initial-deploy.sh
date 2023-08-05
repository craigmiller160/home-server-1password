#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Must provide command"
  exit 1
fi

helm $1 \
  1password \
  ./deploy/chart \
  --kube-context=microk8s \
  --wait \
  --timeout 5m \
  --namespace infra-prod \
  --values ./deploy/chart/values.yml \
  --set connect.operator.token.value=$ONEPASSWORD_TOKEN \
  --set connect.connect.credentials_base64=$ONEPASSWORD_CREDS_BASE64