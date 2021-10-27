## Terraform repo to deploy docker containers for media server using Plex as the media server. VPN account is required for the qbittorrent container.

### Modify the variables.tf file to meet your requirements or add this variables to your environment or to your workspace on TFE/TFC. Some changes might be required on your docker host.

## Container List

### Bazarr - Searches and downloads subtitles.
### var.bazarr_config - Path to container configuration on the host ex. /home/$user/appdata/bazarr.

### Jackett - Bittorrent indexer.
### var.jackett_config - Path to container configuration on the host ex. /home/$user/appdata/jackett.
### var.jackett_data - Path to Jackett /data on your host.

### NginxProxyManager - Reverse HTTP proxy with LetsEncrypt integration.
### var.db_path - Path to the MYSQL database on the host.
### var.nginx_letsencrypt - Path to your SSL certificates and private keys on the host.
### var.nginx_data - Path to Nginx /data on the host.

### Overseerr - Request management and media discovery system for Plex ecosystem.
### var.overseerr_config - Path to container configuration on the host ex. /home/$user/appdata/overseer.

### Plex - MediaServer.
### var.plex_config - Path to container configuration on the host ex. /home/$user/appdata/plex.

### QbittorrentVpn - Torrent download client with VPN integration https://github.com/binhex/arch-qbittorrentvpn .
### var.vpn_prov - VPN provider.
### var.vpn_user - VPN user.
### var.vpn_pass - VPN password.
### var.lan_network - LAN cidr ex. 192.168.0.0/24 This is to allow access from your LAN after the VPN connection has been established.
### var.qbittorrentvpn_config - Path to container configuration on the host ex. /home/$user/appdata/qbittorrentvpn.

### Radarr - Fork of Sonarr to automatically download Movies via Bittorrent or Usenet.
### var.radarr_config - Path to container configuration on the host ex. /home/$user/appdata/radarr.

### Sonarr - Automatically downloads TV Shows via Bittorrent or Usenet.
### var.sonarr_config - Path to container configuration on the host ex. /home/$user/appdata/sonarr.

### Tautulli - Tool to use alongside Plex to monitor activity and track statistics
### var.tautulli_config - Path to container configuration on the host ex. /home/$user/appdata/tautulli.
### var.tautulli_logs - Path to tautulli logs on the host

### Unpackerr - Unpacks compressed completed downloads to be processed by Sonarr, Radarr, Lidarr
### var.unpackerr_config

### Shared variables - These will be used by several containers
### var.media_path - Path to all your media on the host.
### var.downloads_path - Path to the downloads folder on the host.
### var.movies_path - Path to your media library for Movies.
### var.shows_path - Path to your media library for TV Shows.

### Next is to add outputs.
