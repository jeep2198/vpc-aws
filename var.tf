# variable project {
#     type        = string
#     default     = "desarrollo-gcp"
#     description = "ID del proyecto en GCP"
# }
variable name-vpc {
    type        = string
    default     = "vpc"
    description = "nombre de la vpc"

  
}
variable cidr-block-vpc {
    type        = string
    default     = "10.0.0.0/16"
    description = "CIRT de la vpc"

  
}
variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Subredes publicas CIDR (list)"
 default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Subredes Privadas CIDR (list)"
 default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable name-gateway{
    type        = string
    default     = "gw"
    description = "Nombre del internet Gateway"

  
}