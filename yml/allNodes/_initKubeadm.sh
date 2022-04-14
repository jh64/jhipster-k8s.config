sudo kubeadm reset

scp jd@192.168.2.40:~/.kube/config $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

sudo kubeadm join 192.168.2.40:6443 --token 7pl0mp.bikb2w473u80woy5 \
    --discovery-token-ca-cert-hash sha256:56c03598084b11d2ffb37a8e4f9ea659551b2501b44acf7f8c9e220dce639143

kubectl get cs
kubectl get nodes
