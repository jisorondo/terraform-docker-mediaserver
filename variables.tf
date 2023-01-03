variable "bazarr_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/bazarr"

}

variable "jackett_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/binhex-jackett"

}

variable "jackett_data" {
  description = "Path to data"
  type        = string
  default     = "/opt/appdata/jackett-data"

}

variable "db_path" {
  description = "Path to mysql db"
  type        = string
  default     = "/opt/appdata/nginx/data/mysql"

}

variable "nginx_letsencrypt" {
  description = "Path to letsencrypt certificates and keys"
  type        = string
  default     = "/opt/appdata/nginx/letsencrypt"

}

variable "nginx_data" {
  description = "Path to nginx data"
  type        = string
  default     = "/opt/appdata/nginx/data"

}

variable "organizr_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/organizr"
}

variable "overseerr_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/overseerr"

}

variable "plex_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/plex"

}

variable "qbittorrentvpn_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/qbittorrentvpn"

}

variable "vpn_user" {
  description = "VPN user to use with qbittorrent,ex: VPN_USER=MyVPNUser"
  type        = string
  sensitive   = true

}

variable "vpn_pass" {
  description = "VPN password to use with qbittorrent,ex: VPN_PASS=MySecureVPNPassword"
  type        = string
  sensitive   = true
}

## Consult https://github.com/binhex/arch-qbittorrentvpn for available providers. ex. pia
variable "vpn_prov" {
  description = "VPN provider to use with qbittorrent,ex: VPN_PROV=pia"
  type        = string

}

## Replace with your LAN cidr ex. 192.168.0.0/24
variable "lan_network" {
  description = "LAN cidr for qbittorrent local access,ex: LAN_NETWORK=192.168.1.0/24"
  type        = string

}

variable "radarr_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/radarr"

}

variable "sonarr_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/sonarr"

}

variable "tautulli_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/tautulli"

}

variable "tautulli_logs" {
  description = "Path to tautulli logs"
  type        = string
  default     = "/opt/appdata/tautulli_logs"

}

variable "unpackerr_config" {
  description = "Path to config"
  type        = string
  default     = "/opt/appdata/unpackerr"

}

variable "media_path" {
  description = "Path to media (movies, shows, music, etc)"
  type        = string
  default     = "/opt/media"

}

variable "movies_path" {
  description = "Path to the movies folder"
  type        = string
  default     = "/opt/media/Movies"

}

variable "shows_path" {
  description = "Path to the movies folder"
  type        = string
  default     = "/opt/media/Shows"

}


variable "downloads_path" {
  description = "Path to the downloads folder"
  type        = string
  default     = "/opt/downloads"
}
