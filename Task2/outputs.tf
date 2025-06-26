output "wordpress_url" {
  description = "URL to access the WordPress site"
  value       = "http://localhost:${var.wordpress_port_ext}"
}

output "mysql_connection" {
  description = "MySQL connection string (user:pass@host/db)"
  value       = "${var.db_user}:${var.db_password}@tcp(${var.db_host}:3306)/${var.db_name}"
  sensitive   = true
}

output "wordpress_container" {
  value = docker_container.wordpress.name
}

output "mysql_container" {
  value = docker_container.db.name
}

