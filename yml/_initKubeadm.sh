set -v
#clear

#++++++++++
sudo kubeadm reset
sudo swapoff -a 

#++++++++++
 sudo kubeadm init --apiserver-advertise-address=192.168.2.40 --pod-network-cidr=192.168.0.0/16
#sudo kubeadm init --pod-network-cidr=10.240.0.0/16
#sudo kubeadm init --apiserver-advertise-address=192.168.2.40 --pod-network-cidr=10.240.0.0/16

read -p 'Press any key to continue...'

#++++++++++
sudo rm -rf $HOME/.kube
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

read -p 'Press any key to continue...'

#++++++++++
#sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
 sudo kubectl --kubeconfig=/etc/kubernetes/admin.conf create -f https://docs.projectcalico.org/v3.14/manifests/calico.yaml

read -p 'Press any key to continue...'

#++++++++++ please remove the line of 'port 0'
sudo nano /etc/kubernetes/manifests/kube-scheduler.yaml
sudo nano /etc/kubernetes/manifests/kube-controller-manager.yaml

#++++++++++
sudo systemctl enable docker.service
sudo service kubelet restart

kubectl get cs
kubectl get nodes

#++++++++++
kubeadm token create --print-join-command
