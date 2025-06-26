resource "docker_container" "task1" {
  image = docker_image.nginx.image_id
  name  = "task1"

  mounts {
    type      = "bind"
    source    = abspath("${path.module}/nginx-content")
    target    = "/usr/share/nginx/html"
    read_only = false
  }

  ports {
    internal = 80
    external = 8000
  }
}
