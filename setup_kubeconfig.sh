# !/bin/bash

mkdir -p $HOME/.kube/
echo "Moving kubeconfg file to your local folder..."
cp -f ansible/centos/playbooks/kubeconfig $HOME/.kube/config
echo "Congrats! You can now interact with the kubernetes cluster from your laptop!"
kubectl cluster-info
