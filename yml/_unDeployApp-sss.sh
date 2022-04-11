set -v
clear

kubectl delete svc        my-app-ws-prod
kubectl delete deployment my-app-ws-prod
