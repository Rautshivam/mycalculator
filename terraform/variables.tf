# variables.tf

variable "minikube_driver" {
  description = "Driver to use for Minikube"
  type        = string
  default     = "docker"
}

variable "minikube_cpus" {
  description = "Number of CPUs for Minikube"
  type        = number
  default     = 2
}

variable "minikube_memory" {
  description = "Memory for Minikube in MB"
  type        = number
  default     = 4096
}

variable "k8s_version" {
  description = "Kubernetes version"
  type        = string
  default     = "v1.28.0"
}