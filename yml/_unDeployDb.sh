set -v
clear

kubectl delete svc        postgres
kubectl delete deployment postgres
kubectl delete configmap  postgres-config

kubectl delete pvc postgres-pv-claim
kubectl delete pv  postgres-pv-volume
