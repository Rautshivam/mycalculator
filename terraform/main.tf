# main.tf

provider "null" {}

# Create Minikube cluster
resource "null_resource" "minikube_cluster" {
  provisioner "local-exec" {
    command = <<EOT
      minikube start --driver=${var.minikube_driver} --cpus=${var.minikube_cpus} --memory=${var.minikube_memory} --kubernetes-version=${var.k8s_version}
    EOT
  }
}