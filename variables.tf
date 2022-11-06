variable "region" {
  description = "Defina qual região que a instancia será lançada"
  default     = "us-west-1"
}

variable "name" {
  description = "nome da aplicação"
  default     = "master-node"
}

variable "env" {
  description = "ambiente da aplicação"
  default     = "dev"
}

variable "instance_type" {
  description = "tipo de hardware da aplicação"
  default     = "t3.medium"
}


# variable "repo" {
#   description = "repositorio da aplicação"
#   default     = "https://www.github.com/thiagorolive/vps-reseller"
# }
