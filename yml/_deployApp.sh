set -v
clear

kubectl create -f my-app-ws.deployment.prod.yml
kubectl create -f my-app-ws.load-balancer.prod.yaml

#e.g. started MyAppWsApp in 30.242 seconds (JVM running for 31.662)
sleep 40

./_getAll.sh
