# !/bin/bash

helm repo add external-secrets https://charts.external-secrets.io
helm install external-secrets \
   external-secrets/external-secrets \
    -n external-secrets \
    --create-namespace

kubectl apply -f n8n/external-secrets/secret-store.yaml 
kubectl apply -f n8n/external-secrets/n8n-secrets.yaml
kubectl apply -f n8n/external-secrets/postgres-secrets.yaml