# Microsoft DBP demo
Demo setup for the Microsoft Digital Business Platform talk

## Building the hello world container
```
docker build -t dbpdemo.azurecr.io/dbp-demo:v1.0 .
```
```
docker login dbpdemo.azurecr.io
```
```
docker push dbpdemo.azurecr.io/dbp-demo:v1.0
```
