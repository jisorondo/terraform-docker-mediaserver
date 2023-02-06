variable "appdata_prefix" {
  description = "Appdata Path Prefix,ex: /mnt/appdata"
  type        = string
}

variable "media_prefix" {
  description = "Media Path Prefix, ex: /mnt/media"
  type        = string
}

variable "vpn_user" {
  description = "VPN user to use with qbittorrent"
  type        = string
  sensitive   = true

}

variable "vpn_pass" {
  description = "VPN password to use with qbittorrent"
  type        = string
  sensitive   = true
}

## Consult https://github.com/binhex/arch-qbittorrentvpn for available providers. ex. pia
variable "vpn_prov" {
  description = "VPN provider to use with qbittorrent, ex: pia"
  type        = string

}

variable "lan_network" {
  description = "LAN cidr for qbittorrent local access,ex: 192.168.1.0/24"
  type        = string
}

variable "port_forward" {
  description = "Enable/Disable Strict Port Forwarding: yes|no"
  type        = string
}

variable "tz" {
  description = "Flaresolverr Timezone, defaults to UTC"
  type        = string
}

variable "docker_host" {
  description = "Docker Host"
  type        = string
  default     = "unix:///var/run/docker.sock"
}
