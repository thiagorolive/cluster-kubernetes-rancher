variable "region" {
  description = "Defina qual região que a instancia será lançada"
  default     = "us-west-1"
}

variable "name" {
  description = "nome da aplicação"
  default     = "Rancher-Server"
}

variable "name2" {
  description = "nome da aplicação"
  default     = "Master-Node"
}

variable "name3" {
  description = "nome da aplicação"
  default     = "Node-1"
}

variable "name4" {
  description = "nome da aplicação"
  default     = "Node-2"
}

variable "env" {
  description = "ambiente da aplicação"
  default     = "dev"
}

variable "instance_type" {
  description = "tipo de hardware da aplicação"
  default     = "t3.medium"
}


variable "repo" {
  description = "repositorio da aplicação"
  default     = "https://www.github.com/thiagorolive/cluster-kubernetes-rancher"
}
