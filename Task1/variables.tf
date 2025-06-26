variable "env" {
  description = "Environment: dev or prod"
  type        = string
  default     = "dev"
}

variable "image_name" {
  type = map(string)
  default = {
    dev  = "ghost:latest"
    prod = "ghost:alpine"
  }
}

variable "container_name" {
  type = map(string)
  default = {
    dev  = "blog_dev"
    prod = "blog_prod"
  }
}

variable "int_port" {
  type    = string
  default = "80"
}

variable "ext_port" {
  type = map(string)
  default = {
    dev  = "8080"
    prod = "8081"
  }
}

