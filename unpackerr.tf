resource "docker_image" "unpackerr" {
  name         = "hotio/unpackerr:latest"
  keep_locally = true

}

resource "docker_container" "unpackerr" {
  name    = "unpackerr"
  image   = docker_image.unpackerr.latest
  restart = "always"

  env = ["UMASK=002"]

  volumes {
    container_path = "/downloads"
    host_path      = "/Users/jsorondo/appdata/downloads"
  }

}