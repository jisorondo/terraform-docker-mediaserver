resource "docker_image" "flaresolverr" {
  name         = "flaresolverr/flaresolverr:latest"
  keep_locally = true
}

resource "docker_container" "flaresolverr" {
  name    = "flaresolverr"
  image   = docker_image.flaresolverr.image_id
  restart = "always"

  ports {
    external = 8191
    internal = 8191
  }

  env = ["LOG_LEVEL=info", "TZ=${var.tz}"]
}