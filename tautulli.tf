resource "docker_image" "tautulli" {
  name         = "linuxserver/tautulli:latest"
  keep_locally = true

}

resource "docker_container" "tautulli" {
  name    = "tautulli"
  image   = docker_image.tautulli.image_id
  restart = "always"

  ports {
    external = 8181
    internal = 8181
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
  ## Container configuration. Change the host_path to match your system
  volumes {
    container_path = "/config"
    host_path      = var.tautulli_config
  }

  volumes {
    container_path = "/logs"
    host_path      = var.tautulli_logs
  }

}