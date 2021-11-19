# Full dockerized mediaserver

## Introduction

This repository contains `terraform` configuration files to deploy a mediaserver`(Plex)` and other required apps. 

## Requirements

You will need [terraform](https://www.terraform.io/downloads.html) installed and a `host` with [docker](https://docs.docker.com/engine/install/) installed.

## Directory structure

Before running `terraform init` , your directory tree should match the following:

```
├── README.md
├── bazarr.tf
├── jackett.tf
├── main.tf
├── nginxproxymanager.tf
├── overseer.tf
├── plex.tf
├── qbittorrentvpn.tf
├── radarr.tf
├── sonarr.tf
├── tautulli.tf
├── unpackerr.tf
└── variables.tf
```

## Use

1) Clone this repository to your local machine
  - `git clone https://github.com/jisorondo/terraform-docker-mediaserver.git`

2) Change into the project directory and initialize `terraform`
  - `cd ./terraform-docker-mediaserver`
  - `terraform init`

3) Modify the `variables.tf` file to your needs. Edit `main.tf` and modify line #12 or remove it if not needed.
  - Please see details regarding the containers and variables below.

4) After modifying the `variables.tf` file verify the syntax is valid
  - `terraform validate`

5) Check the plan output and when ready perform an apply to create the resources
  - `terraform plan`
  - `terraform apply -auto-approve`

## Container list

1. `Bazarr` - Searches and downloads subtitles.
   - `var.bazarr_config` - Path to container configuration on the host ex. `/home/$user/appdata/bazarr`.

2. `Jackett` - Bittorrent indexer.
   - `var.jackett_config` - Path to container configuration on the host ex. `/home/$user/appdata/jackett`.
   - `var.jackett_data` - Path to Jackett `/data` on your host.

3. `NginxProxyManager` - Reverse HTTP proxy with LetsEncrypt integration.
   - `var.db_path` - Path to the MYSQL database on the host.
   - `var.nginx_letsencrypt` - Path to your SSL certificates and private keys on the host.
   - `var.nginx_data` - Path to Nginx /data on the host.

4. `Overseerr` - Request management and media discovery system for Plex ecosystem.
   - `var.overseerr_config` - Path to container configuration on the host ex. `/home/$user/appdata/overseer`.

5. `Plex` - MediaServer.
   - `var.plex_config` - Path to container configuration on the host ex. `/home/$user/appdata/plex`.

6. `QbittorrentVpn` - Torrent download client with VPN integration https://github.com/binhex/arch-qbittorrentvpn .
   - `var.vpn_prov` - VPN provider.
   - `var.vpn_user` - VPN user.
   - `var.vpn_pass` - VPN password.
   - `var.lan_network` - LAN cidr ex. 192.168.0.0/24 This is to allow access from your LAN after the VPN connection has been established.
   - `var.qbittorrentvpn_config` - Path to container configuration on the host ex. `/home/$user/appdata/qbittorrentvpn`.

7. `Radarr` - Fork of Sonarr to automatically download Movies via Bittorrent or Usenet.
   - `var.radarr_config` - Path to container configuration on the host ex. `/home/$user/appdata/radarr`.

8. `Sonarr` - Automatically downloads TV Shows via Bittorrent or Usenet.
   - `var.sonarr_config` - Path to container configuration on the host ex. `/home/$user/appdata/sonarr`.

9. `Tautulli` - Tool to use alongside Plex to monitor activity and track statistics
   - `var.tautulli_config` - Path to container configuration on the host ex. `/home/$user/appdata/tautulli`.
   - `var.tautulli_logs` - Path to tautulli logs on the host

10. `Unpackerr` - Unpacks compressed completed downloads to be processed by Sonarr, Radarr, Lidarr
    - `var.unpackerr_config` - Path to the container configuration on the host ex. `/home/$user/appdata/unpackerr`

## Shared variables

* `var.media_path` - Path to all your media on the host.
* `var.downloads_path` - Path to the downloads folder on the host.
* `var.movies_path` - Path to your media library for Movies.
* `var.shows_path` - Path to your media library for TV Shows.
