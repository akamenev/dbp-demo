# Microsoft DBP demo
Demo setup for the Microsoft Digital Business Platform talk

## Building the hello world container
```
docker build -t dbpdemo.azurecr.io/dbp-demo:v1.0 .
```
```
docker login dbpdemo.azurecr.io
az acr login --name dbp-demo
```
```
docker push dbpdemo.azurecr.io/dbp-demo:v1.0
```

## Kubernetes on Azure demo

```
az login
```
```
az acs kubernetes get-credentials --name dbp-demo-kube --resource-group dbp-demo-kube
```
```
az acs kubernetes browse --name dbp-demo-kube --resource-group dbp-demo-kube
```

## Deploy to Kubernetes

```
kubectl apply -f services/dbp-demo.yaml
```
```
kubectl apply -f deployments/dbp-demo.yaml
```

## Add ACI Connector to Kuberenetes and deploy app on it

```
kubectl apply -f aci-connector/aci.yaml
```
```
kubectl apply -f deployments/dbp-demo-aci.yaml
```