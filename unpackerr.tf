resource "docker_image" "unpackerr" {
  name         = "hotio/unpackerr:latest"
  keep_locally = true

}

resource "docker_container" "unpackerr" {
  name    = "unpackerr"
  image   = docker_image.unpackerr.image_id
  restart = "always"

  env = ["UMASK=002"]

  volumes {
    container_path = "/data"
    host_path      = "${var.media_prefix}/downloads"
  }

  volumes {
    container_path = "/config"
    host_path      = "${var.appdata_prefix}/unpackerr"
  }

}