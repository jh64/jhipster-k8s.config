set -v
clear

kubectl create -f my-app-ws.deployment.prod.yml
kubectl create -f my-app-ws.load-balancer.prod.yaml
