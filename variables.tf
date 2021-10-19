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