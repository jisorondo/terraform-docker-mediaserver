resource "docker_image" "radarr" {
  name         = "linuxserver/radarr:latest"
  keep_locally = true

}

resource "docker_container" "radarr" {
  name    = "radarr"
  image   = docker_image.radarr.latest
  restart = "always"

  ports {
    external = 7878
    internal = 7878
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/config"
    host_path      = var.radarr_config
  }

  ## The container_path needs to match qbittorrentvpn for the automation to work in radarr. Change the host_path to match your system
  volumes {
    container_path = "/data"
    host_path      = var.downloads_path
  }

  volumes {
    container_path = "/movies"
    host_path      = var.movies_path
  }

}