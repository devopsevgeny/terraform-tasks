resource "docker_container" "db" {
  name  = "wp-db"
  image = docker_image.mysql.image_id

  env = [
    "MYSQL_DATABASE=${var.db_name}",
    "MYSQL_USER=${var.db_user}",
    "MYSQL_PASSWORD=${var.db_password}",
    "MYSQL_RANDOM_ROOT_PASSWORD=${var.mysql_random_root_password}"
  ]

  mounts {
    target = "/var/lib/mysql"
    source = docker_volume.db.name
    type   = "volume"
  }

  networks_advanced {
    name    = docker_network.wp.name
    aliases = ["db"]
  }

  restart = "always"
}

resource "docker_container" "wordpress" {
  name  = "wp-site"
  image = docker_image.wordpress.image_id
  env = [
    "WORDPRESS_DB_HOST=${var.db_host}",
    "WORDPRESS_DB_USER=${var.db_user}",
    "WORDPRESS_DB_PASSWORD=${var.db_password}",
    "WORDPRESS_DB_NAME=${var.db_name}"
  ]

  mounts {
    target = "/var/www/html"
    source = docker_volume.wordpress.name
    type   = "volume"
  }

  ports {
    internal = var.wordpress_port_int
    external = var.wordpress_port_ext
  }

  networks_advanced {
    name = docker_network.wp.name
  }

  restart    = "always"
  depends_on = [docker_container.db]
}

