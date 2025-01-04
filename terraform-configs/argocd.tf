resource "helm_release" "argocd" {
  depends_on = [minikube_cluster.minikube_docker]
  
  name             = "argocd"
  chart            = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  namespace        = "argocd"
  create_namespace = true
  version         = "7.7.13"

  values = [
    <<EOF
    server:
        service:
            type: ClusterIP
    EOF
  ]  
}