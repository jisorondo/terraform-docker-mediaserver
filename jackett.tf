resource "docker_image" "jackett" {
  name         = "binhex/arch-jackett:latest"
  keep_locally = true

}

resource "docker_container" "jackett" {
  name    = "jackett"
  image   = docker_image.jackett.latest
  restart = "always"

  ports {
    external = 9117
    internal = 9117
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
  ## Adjust the host_path to match your system
  volumes {
    container_path = "/data"
    host_path      = var.jackett_data
  }

  volumes {
    container_path = "/config"
    host_path      = var.jackett_config
  }
}