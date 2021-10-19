variable "bazarr_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/bazarr"

}

variable "jackett_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/binhex-jackett"

}

variable "jackett_data" {
  description = "Path to data"
  type        = string
  default     = "/Users/jsorondo/appdata/jackett-data"

}

variable "db_path" {
  description = "Path to mysql db"
  type        = string
  default     = "/Users/jsorondo/appdata/nginx/data/mysql"

}

variable "nginx_letsencrypt" {
  description = "Path to letsencrypt certificates and keys"
  type        = string
  default     = "/Users/jsorondo/appdata/nginx/letsencrypt"

}

variable "nginx_data" {
  description = "Path to nginx data"
  type        = string
  default     = "/Users/jsorondo/appdata/nginx/data"

}

variable "overseerr_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/overseerr"

}

variable "plex_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/plex"

}

variable "qbittorrentvpn_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/qbittorrentvpn"

}

variable "vpn_user" {
  description = "VPN user to use with qbittorrent"
  type        = string
  default     = "VPN_USER=$vpnuser"
  sensitive   = true

}

variable "vpn_pass" {
  description = "VPN password to use with qbittorrent"
  type        = string
  default     = "VPN_PASS=$vpnpassword"
  sensitive   = true
}

## Consult https://github.com/binhex/arch-qbittorrentvpn for available providers. ex. pia
variable "vpn_prov" {
  description = "VPN provider to use with qbittorrent"
  type        = string
  default     = "VPN_PROV=$provider"

}

## Replace with your LAN cidr ex. 192.168.0.0/24
variable "lan_network" {
  description = "LAN cidr for qbittorrent local access"
  type        = string
  default     = "LAN_NETWORK=$cidr"

}

variable "radarr_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/radarr"

}

variable "sonarr_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/sonarr"

}

variable "tautulli_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/tautulli"

}

variable "tautulli_logs" {
  description = "Path to tautulli logs"
  type        = string
  default     = "/Users/jsorondo/appdata/tautulli_logs"

}

variable "unpackerr_config" {
  description = "Path to config"
  type        = string
  default     = "/Users/jsorondo/appdata/unpackerr"

}

variable "media_path" {
  description = "Path to media (movies, shows, music, etc)"
  type        = string
  default     = "/Users/jsorondo/appdata"

}

variable "movies_path" {
  description = "Path to the movies folder"
  type        = string
  default     = "/Users/jsorondo/appdata/Movies"

}

variable "shows_path" {
  description = "Path to the movies folder"
  type        = string
  default     = "/Users/jsorondo/appdata/Shows"

}


variable "downloads_path" {
  description = "Path to the downloads folder"
  type        = string
  default     = "/Users/jsorondo/appdata/downloads"
}