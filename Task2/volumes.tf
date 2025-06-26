resource "docker_volume" "wordpress" {
  name = "wordpress"
}

resource "docker_volume" "db" {
  name = "db"
}

