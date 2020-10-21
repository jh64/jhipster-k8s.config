set -v
clear

kubectl create -f my-app-ws.deployment.prod.yml
kubectl create -f my-app-ws.load-balancer.prod.yaml

#e.g. started MyAppWsApp in 30.242 seconds (JVM running for 31.662)
#e.g. Started MyAppWsApp in 117.721 seconds (JVM running for 132.297)
sleep 140

./_getAll.sh
