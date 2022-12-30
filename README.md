# Home Server 1Password

Integrates the 1Password Connect Service & Operator into the Kubernetes cluster.

## Repository

helm repo add 1password https://1password.github.io/connect-helm-charts

## Environment Variables

The following shell environment variables must be present on the machine in order to properly deploy this chart:

```
# The operator access token for communicating with 1Password
ONEPASSWORD_TOKEN=XXXXXXX

# The connect service credentials for communicating with 1Password, Base64 encoded
ONEPASSWORD_CREDS_BASE64=XXXXXXXXX
```