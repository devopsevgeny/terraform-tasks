variable "wordpress_port_int" {
  description = "External port to access the WordPress site"
  type        = number
  default     = 80
}

variable "wordpress_port_ext" {
  description = "External port to access the WordPress site"
  type        = number
  default     = 8080
}


variable "wordpress_image" {
  description = "Docker image to use for WordPress"
  type        = string
  default     = "wordpress:latest"
}

variable "wordpress_db_host" {
  description = "Database host for WordPress to connect to"
  type        = string
  default     = "db"
}

variable "wordpress_db_name" {
  description = "Database name used by WordPress"
  type        = string
  default     = "exampledb"
}

variable "wordpress_db_user" {
  description = "Database username used by WordPress"
  type        = string
  default     = "exampleuser"
}

variable "wordpress_db_password" {
  description = "Database password used by WordPress"
  type        = string
  default     = "examplepass"
  sensitive   = true
}
variable "mysql_image" {
  description = "Docker image to use for MySQL"
  type        = string
  default     = "mysql:8.0"
}

variable "db_host" {
  description = "Hostname or alias of the MySQL container"
  type        = string
  default     = "db"
}

variable "db_name" {
  description = "Database name for WordPress"
  type        = string
  default     = "exampledb"
}

variable "db_user" {
  description = "Database username"
  type        = string
  default     = "exampleuser"
}

variable "db_password" {
  description = "Database user password"
  type        = string
  default     = "examplepass"
  sensitive   = true
}

variable "mysql_random_root_password" {
  description = "Enable random root password for MySQL (1 = yes, 0 = no)"
  type        = string
  default     = "1"
}

