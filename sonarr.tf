resource "docker_image" "sonarr" {
  name         = "hotio/sonarr:latest"
  keep_locally = true

}

resource "docker_container" "sonarr" {
  name    = "sonarr"
  image   = docker_image.sonarr.latest
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
    host_path      = "/Users/jsorondo/appdata/sonarr"
  }
  ## Path to your media. Adjust to match your system
  volumes {
    container_path = "/Users/jsorondo/appdata"
    host_path      = "/Users/jsorondo/appdata"
  }
  ## Container path needs to match qbittorentvpn
  volumes {
    container_path = "/data"
    host_path      = "/Users/jsorondo/appdata/downloads"
  }

}