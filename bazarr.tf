resource "docker_image" "bazarr" {
  name         = "hotio/bazarr:latest"
  keep_locally = true

}

resource "docker_container" "bazarr" {
  name    = "bazarr"
  image   = docker_image.bazarr.latest
  restart = "always"

  ports {
    external = 6767
    internal = 6767
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/config"
    host_path      = "/Users/jsorondo/appdata/bazarr"
  }

  volumes {
    container_path = "/Shows"
    host_path      = "/Users/jsorondo/appdata/Shows"
  }

  volumes {
    container_path = "/Movies"
    host_path      = "/Users/jsorondo/appdata/Movies"
  }

}