resource "docker_image" "radarr" {
  name         = "linuxserver/radarr:latest"
  keep_locally = true

}

resource "docker_container" "radarr" {
  name    = "radarr"
  image   = docker_image.radarr.image_id
  restart = "always"

  ports {
    external = 7878
    internal = 7878
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/config"
    host_path      = "${var.appdata_prefix}/radarr"
  }

  ## The container_path needs to match qbittorrentvpn for the automation to work in radarr. Change the host_path to match your system
  volumes {
    container_path = "/data"
    host_path      = "${var.media_prefix}/downloads"
  }

  volumes {
    container_path = "/movies"
    host_path      = "${var.media_prefix}/movies"
  }

}