kubectl create deployment my-app-ws --image=my-app-ws:0.0.1-SNAPSHOT
kubectl get deployments
kubectl expose deployment my-app-ws --type=NodePort                      --port=8080
kubectl expose deployment my-app-ws --type=LoadBalancer --name=my-app-ws --port=8080
kubectl get services

+++
kubectl get service kubernetes-bootcamp -o yaml>kubernetes-bootcamp.service.yml
kubectl get service my-app-ws           -o yaml>my-app-ws.service.yml

---
kubectl get deployment kubernetes-bootcamp -o yaml>kubernetes-bootcamp.deployment.yml
kubectl get deployment my-app-ws           -o yaml>my-app-ws.deployment.yml

+++
below both are working ok, but make sure delete the service before running:

kubectl apply  -f ./my-app-ws.load-balancer.yaml
kubectl create -f ./my-app-ws.load-balancer.yaml

kubectl apply  -f ./kubernetes-bootcamp.load-balancer.yaml

---
after delete the deployment, the cluster will take some minutes to terminate the pods.
kubectl delete deployment my-app-ws
kubectl delete deployment kubernetes-bootcamp

-
kubectl get po -o wide

-
kubectl apply  -f ./my-app-ws.deployment.yml
kubectl apply  -f ./kubernetes-bootcamp.deployment.yml
It will take some minutes for the pods to be created - to become "Running" status.

+++
curl localhost:32224
curl localhost:30825

+++
kubectl create deployment postgres --image=postgres:12.3
kubectl expose deployment postgres --type=NodePort                      --port=8080

+++
kubectl apply  -f ./postgres.deployment.yml
kubectl apply  -f ./postgres.service.yml
