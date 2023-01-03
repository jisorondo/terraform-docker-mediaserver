resource "docker_image" "qbittorrentvpn" {
  name         = "binhex/arch-qbittorrentvpn:latest"
  keep_locally = true
}

resource "docker_container" "qbittorrentvpn" {
  name    = "qbittorrentvpn"
  image   = docker_image.qbittorrentvpn.image_id
  restart = "always"

  ports {
    external = 6881
    internal = 6881
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
  ports {
    external = 6881
    internal = 6881
    ip       = "0.0.0.0"
    protocol = "udp"
  }
  ports {
    external = 8080
    internal = 8080
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
  ports {
    external = 8118
    internal = 8118
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ## Environment variables https://github.com/binhex/arch-qbittorrentvpn
  env = ["VPN_ENABLED=yes", var.vpn_user, var.vpn_pass, var.vpn_prov, "VPN_CLIENT=wireguard", "STRICT_PORT_FORWARD=yes", "ENABLE_PRIVOXY=no", "WEBUI_PORT=8080", var.lan_network, "NAME_SERVERS=84.200.69.80,37.235.1.174,1.1.1.1,37.235.1.177,84.200.70.40,1.0.0.1", "DEBUG=false", "UMASK=000", "PUID=0", "PGID=0"]


  volumes {
    container_path = "/config"
    host_path      = var.qbittorrentvpn_config
  }

  ## Path to downloads folder
  volumes {
    container_path = "/data"
    host_path      = var.downloads_path
  }

  volumes {
    container_path = "/etc/localtime"
    host_path      = "/etc/localtime"
    read_only      = true
  }

  capabilities {
    add = ["NET_ADMIN"]
  }

  sysctls = ({
    "net.ipv4.conf.all.src_valid_mark" = "1"
  })

  privileged = true
}
