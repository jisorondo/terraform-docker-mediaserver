# Full dockerized mediaserver

## Introduction

This repository contains `terraform` configuration files to deploy a mediaserver`(Plex)` and other required apps. 

## Requirements

You will need [terraform](https://www.terraform.io/downloads.html) installed and a `host` with [docker](https://docs.docker.com/engine/install/) installed.

## Directory structure

Before running `terraform init` , your directory tree should match the following:

```
├── LICENSE
├── README.md
├── bazarr.tf
├── flaresolverr.tf
├── jackett.tf
├── main.tf
├── nginxproxymanager.tf
├── organizr.tf
├── outputs.tf
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

3) Modify the `variables.tf` file to your needs.
  - Please see details regarding the containers and variables below.

4) After modifying the `variables.tf` file verify the syntax is valid
  - `terraform validate`

5) Check the plan output and when ready perform an apply to create the resources
  - `terraform plan`
  - `terraform apply -auto-approve`

## Container list

1. `Bazarr` - Searches and downloads subtitles.

2. `Jackett` - Torrent indexer.

3. `NginxProxyManager` - Reverse HTTP proxy with LetsEncrypt integration.

4. `Organizr` - Your one stop shop for your Servers Frontend.

5. `Overseerr` - Request management and media discovery system for Plex ecosystem.

6. `Plex` - MediaServer.

7. `QbittorrentVpn` - Torrent download client with VPN integration https://github.com/binhex/arch-qbittorrentvpn .
   - `var.vpn_prov` - VPN provider.
   - `var.vpn_user` - VPN user.
   - `var.vpn_pass` - VPN password.
   - `var.lan_network` - LAN cidr ex. 192.168.1.0/24. Allows access from LAN after the VPN connection has been established.

8. `Radarr` - Fork of Sonarr to automatically download Movies via Bittorrent or Usenet.

9. `Sonarr` - Automatically downloads TV Shows via Bittorrent or Usenet.

10. `Tautulli` - Tool to use alongside Plex to monitor activity and track statistics

11. `Unpackerr` - Unpacks compressed completed downloads to be processed by Sonarr, Radarr, Lidarr

12. `Flaresolverr` - Proxy server to bypass Cloudflare protection. Useful as a companion for indexer proxies such as Prowlarr and Jackett 
    - `var.tz` - Container Timezone

## Shared variables

* `var.appdata_prefix` - Path to Docker containers static configuration.
* `var.media_prefix` - Path to the media folder on the host.