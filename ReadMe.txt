kubectl create deployment my-app-ws --image=my-app-ws:0.0.1-SNAPSHOT
kubectl get deployments
kubectl expose deployment my-app-ws --type=NodePort                      --port=8080
kubectl expose deployment my-app-ws --type=LoadBalancer --name=my-app-ws --port=8080
kubectl get services

+++
kubectl get service kubernetes-bootcamp -o yaml>kubernetes-bootcamp.service.yml
kubectl get service my-app-ws           -o yaml>my-app-ws.service.yml

+++
kubectl apply -f ./my-app-ws.load-balancer.yaml
