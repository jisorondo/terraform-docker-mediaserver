resource "docker_image" "bazarr" {
  name         = "hotio/bazarr:latest"
  keep_locally = true

}

resource "docker_container" "bazarr" {
  name    = "bazarr"
  image   = docker_image.bazarr.image_id
  restart = "always"

  ports {
    external = 6767
    internal = 6767
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/config"
    host_path      = "${var.appdata_prefix}/bazarr"
  }

  volumes {
    container_path = "/shows"
    host_path      = "${var.media_prefix}/shows"
  }

  volumes {
    container_path = "/movies"
    host_path      = "${var.appdata_prefix}/movies"
  }

}    