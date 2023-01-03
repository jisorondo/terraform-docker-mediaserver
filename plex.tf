resource "docker_image" "plex" {
  name         = "linuxserver/plex:latest"
  keep_locally = true

}

resource "docker_container" "plex" {
  name    = "plex"
  image   = docker_image.plex.image_id
  restart = "always"

  ## Uncomment below if you have a compatible nvidia card and provide the device_uuid . Need to confirm the RUNTIME will work inside env
  //  env = ["NVIDIA_VISIBLE_DEVICES=$nvidia_device_uuid", "RUNTIME=nvidia"]

  /*
  Also docker must have this setup if not automatically added like in unraid
  /etc/docker/daemon.json
{
    "runtimes": {
        "nvidia": {
            "path": "/usr/bin/nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
*/

  ports {
    external = 32400
    internal = 32400
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 3005
    internal = 3005
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 8324
    internal = 8324
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 32469
    internal = 32469
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 1900
    internal = 1900
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 32410
    internal = 32410
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 32412
    internal = 32412
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 32413
    internal = 32413
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 32414
    internal = 32414
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ## Change the host_path to match your system
  volumes {
    container_path = "/media"
    host_path      = var.media_path
  }

  ## Change host_path to match your system
  volumes {
    container_path = "/config"
    host_path      = var.plex_config
  }

}