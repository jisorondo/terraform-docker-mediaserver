resource "docker_image" "sonarr" {
  name         = "hotio/sonarr:latest"
  keep_locally = true

}

resource "docker_container" "sonarr" {
  name    = "sonarr"
  image   = docker_image.sonarr.image_id
  restart = "always"

  ports {
    external = 8989
    internal = 8989
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  env = ["UMASK=002"]

  volumes {
    container_path = "/config"
    host_path      = "${var.appdata_prefix}/sonarr"
  }
  ## Path to your media. Adjust to match your system
  volumes {
    container_path = "/shows"
    host_path      = "${var.media_prefix}/shows"
  }
  ## Container path needs to match qbittorentvpn
  volumes {
    container_path = "/data"
    host_path      = "${var.media_prefix}/downloads"
  }

}