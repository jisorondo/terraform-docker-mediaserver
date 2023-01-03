resource "docker_image" "organizr" {
  name         = "organizr/organizr:latest"
  keep_locally = true
}

resource "docker_container" "organizr" {
  name    = "organizr"
  image   = docker_image.organizr.image_id
  restart = "always"

  ports {
    external = 5000
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/config"
    host_path      = var.organizr_config
  }
}
