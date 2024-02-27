# Examples to spin a HA Kubernetes cluster

## Develop in a Dev Container

This allows you to develop in a isolated container with all the required applications like terraform, ansible, linter, etc. 

1. Ensure Docker is installed and running
2. Install [vscode](https://code.visualstudio.com/) and `Dev Containers` extension
3. Open this project in vscode
4. Launch `Command Palette` from the UI or run `⌘ + Shift + P` if you are on Mac
5. Select either `Reopen in Container` or `Rebuild Container` to start the Devcontainer
6. Start terminal in vscode before you run the subsequent steps

## Create VMs on the cloud

| **Name**              | **Role**      | **Cloud Provider** |
|-----------------------|---------------|--------------------|
| **master1 (primary)** | control plane | DigitalOcean       |
| **master2**           | control plane | DigitalOcean       |
| **master3**           | control plane | Linode             |
| **worker1**           | worker node   | DigitalOcean       |
| **worker2**           | worker node   | Linode             |


Create API token from both linode and digitalocean, and configure the environment variables

```
export TF_VAR_do_token=<your do token>
export TF_VAR_linode_token=<your liode token>
```

Run terraform

```
cd terraform/
terraform init
terraform apply
```

This outputs the IPs of all the created VMs and a ssh key pair, you will need them in the ansible provisioning step


## Provision HA cluster using ansible

1. Update the ips in `ansible/centos/playbooks/env_variables` and `hosts` using the terraform output
1. Run the follow command to provision the nodes

    ```
    cd ansible/centos/
    ansible-playbook --private-key /path/to/private/key setup_masters.yml
    ansible-playbook --private-key /path/to/private/key setup_workers.yml
    ```

## Configure kubeconfig on your local machine

This copies the downloaded kubeconfig to your `~/.kube` folder so you can interact with the kube api server

```
./setup_kubeconfig.sh
```

## Deploy n8n application to the cluster

```
kubectl create namespace n8n
kubectl apply -f n8n/
```

## Open the application UI

1. Run `kubectl get svc -n n8n` to get the NodePort
1. Open URL `https://<worker-node-ip>:<node-port>`

