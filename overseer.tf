resource "docker_image" "overseerr" {
  name         = "hotio/overseerr:release"
  keep_locally = true

}

resource "docker_container" "overseerr" {
  name    = "overseerr"
  image   = docker_image.overseerr.latest
  restart = "always"

  ports {
    external = 5055
    internal = 5055
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
  ## Adjust the host_path to match your system
  volumes {
    container_path = "/config"
    host_path      = var.overseerr_config
  }
}