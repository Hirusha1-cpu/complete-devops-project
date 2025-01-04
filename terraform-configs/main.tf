terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.4.4"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }
}


provider "minikube" {
  kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_docker" {
  driver = "docker"
  cluster_name = "complete-devops-project"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}