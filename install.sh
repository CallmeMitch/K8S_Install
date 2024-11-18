echo "ADD VERSION OF KUBE TOOLS"
VERSION="1.31.0-1.1"
BASE_URL="https://dl.k8s.io/release/v1.31.0/bin/linux/amd64"


echo "INSTALLATION OF BINARIES"
curl -LO ${BASE_URL}/kubectl
curl -LO ${BASE_URL}/kubeadm
curl -LO ${BASE_URL}/kubelet


echo "ADD EXECUTIVE PERMISSIONS"
chmod +x kubectl kubeadm kubelet


echo "MOVE PACKAGE TO /usr/local/bin"
sudo mv kubectl kubeadm kubelet /usr/local/bin/

echo "LOCK THE VERSION"
sudo apt-mark hold kubelet kubeadm kubectl
