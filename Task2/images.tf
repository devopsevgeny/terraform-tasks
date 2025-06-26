resource "docker_image" "mysql" {
  name = var.mysql_image
}

resource "docker_image" "wordpress" {
  name = var.wordpress_image
}

