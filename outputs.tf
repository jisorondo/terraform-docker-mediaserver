output "bazarr_id" {
  description = "Bazarr Container ID"
  value       = docker_container.bazarr.id
}

output "bazarr_privileged" {
  description = "Bazarr Container Privileged"
  value       = docker_container.bazarr.privileged
}

output "bazarr_volumes" {
  description = "Bazarr Container Volumes"
  value       = docker_container.bazarr.volumes
}

output "bazarr_ip" {
  description = "Bazarr Container IP Address"
  value       = docker_container.bazarr.ip_address
}

output "bazarr_ports" {
  description = "Bazarr Container Published Ports"
  value       = docker_container.bazarr.ports
}

output "jackett_id" {
  description = "Jackett Container ID"
  value       = docker_container.jackett.id
}

output "jackett_privileged" {
  description = "Jackett Container Privileged"
  value       = docker_container.jackett.privileged
}

output "jackett_volumes" {
  description = "Jackett Container Volumes"
  value       = docker_container.jackett.volumes
}

output "jackett_ip" {
  description = "Jackett Container IP Address"
  value       = docker_container.jackett.ip_address
}

output "jackett_ports" {
  description = "Jackett Container Published Ports"
  value       = docker_container.jackett.ports
}

output "npm_id" {
  description = "NPM Container ID"
  value       = docker_container.nginx_proxy_manager_app.id
}

output "npm_privileged" {
  description = "NPM Container Privileged"
  value       = docker_container.nginx_proxy_manager_app.privileged
}

output "npm_volumes" {
  description = "NPM Container Volumes"
  value       = docker_container.nginx_proxy_manager_app.volumes
}

output "npm_ip" {
  description = "NPM Container IP Address"
  value       = docker_container.nginx_proxy_manager_app.ip_address
}

output "npm_ports" {
  description = "NPM Container Published Ports"
  value       = docker_container.nginx_proxy_manager_app.ports
}

output "organizr_id" {
  description = "Organizr Container ID"
  value       = docker_container.organizr.id
}

output "organizr_privileged" {
  description = "Organizr Container Privileged"
  value       = docker_container.organizr.privileged
}

output "organizr_volumes" {
  description = "Organizr Container Volumes"
  value       = docker_container.organizr.volumes
}

output "organizr_ip" {
  description = "Organizr Container IP Address"
  value       = docker_container.organizr.ip_address
}

output "organizr_ports" {
  description = "Organizr Container Published Ports"
  value       = docker_container.organizr.ports
}

output "overseer_id" {
  description = "Overseer Container ID"
  value       = docker_container.overseerr.id
}

output "overseer_privileged" {
  description = "Overseer Container Privileged"
  value       = docker_container.overseerr.privileged
}

output "overseer_volumes" {
  description = "Overseer Container Volumes"
  value       = docker_container.overseerr.volumes
}

output "overseer_ip" {
  description = "Overseer Container IP Address"
  value       = docker_container.overseerr.ip_address
}

output "overseer_ports" {
  description = "Overseer Container Published Ports"
  value       = docker_container.overseerr.ports
}

output "plex_id" {
  description = "Plex Container ID"
  value       = docker_container.plex.id
}

output "plex_privileged" {
  description = "Plex Container Privileged"
  value       = docker_container.plex.privileged
}

output "plex_volumes" {
  description = "Plex Container Volumes"
  value       = docker_container.plex.volumes
}

output "plex_ip" {
  description = "Plex Container IP Address"
  value       = docker_container.plex.ip_address
}

output "plex_ports" {
  description = "Plex Container Published Ports"
  value       = docker_container.plex.ports
}

output "qbittorrentvpn_id" {
  description = "QbittorrentVpn Container ID"
  value       = docker_container.qbittorrentvpn.id
}

output "qbittorrentvpn_privileged" {
  description = "QbittorrentVpn Container Privileged"
  value       = docker_container.qbittorrentvpn.privileged
}

output "qbittorrentvpn_volumes" {
  description = "QbittorrentVpn Container Volumes"
  value       = docker_container.qbittorrentvpn.volumes
}

output "qbittorrentvpn_ip" {
  description = "QbittorrentVpn Container IP Address"
  value       = docker_container.qbittorrentvpn.ip_address
}

output "qbittorrentvpn_ports" {
  description = "QbittorrentVpn Container Published Ports"
  value       = docker_container.qbittorrentvpn.ports
}

output "qbittorrentvpn_env" {
  description = "QbittorrentVpn Container Environment"
  value       = docker_container.qbittorrentvpn.env
  sensitive   = true
}

output "radarr_id" {
  description = "Radarr Container ID"
  value       = docker_container.radarr.id
}

output "radarr_privileged" {
  description = "Radarr Container Privileged"
  value       = docker_container.radarr.privileged
}

output "radarr_volumes" {
  description = "Radarr Container Volumes"
  value       = docker_container.radarr.volumes
}

output "radarr_ip" {
  description = "Radarr Container IP Address"
  value       = docker_container.radarr.ip_address
}

output "radarr_ports" {
  description = "Radarr Container Published Ports"
  value       = docker_container.radarr.ports
}

output "sonarr_id" {
  description = "Sonarr Container ID"
  value       = docker_container.sonarr.id
}

output "sonarr_privileged" {
  description = "Sonarr Container Privileged"
  value       = docker_container.sonarr.privileged
}

output "sonarr_volumes" {
  description = "Sonarr Container Volumes"
  value       = docker_container.sonarr.volumes
}

output "sonarr_ip" {
  description = "Sonarr Container IP Address"
  value       = docker_container.sonarr.ip_address
}

output "sonarr_ports" {
  description = "Sonarr Container Published Ports"
  value       = docker_container.sonarr.ports
}

output "tautulli_id" {
  description = "Tautulli Container ID"
  value       = docker_container.tautulli.id
}

output "tautulli_privileged" {
  description = "Tautulli Container Privileged"
  value       = docker_container.tautulli.privileged
}

output "tautulli_volumes" {
  description = "Tautulli Container Volumes"
  value       = docker_container.tautulli.volumes
}

output "tautulli_ip" {
  description = "Tautulli Container IP Address"
  value       = docker_container.tautulli.ip_address
}

output "tautulli_ports" {
  description = "Tautulli Container Published Ports"
  value       = docker_container.tautulli.ports
}

output "unpackerr_id" {
  description = "Unpackerr Container ID"
  value       = docker_container.unpackerr.id
}

output "unpackerr_privileged" {
  description = "Unpackerr Container Privileged"
  value       = docker_container.unpackerr.privileged
}

output "unpackerr_volumes" {
  description = "Unpackerr Container Volumes"
  value       = docker_container.unpackerr.volumes
}

output "unpackerr_ip" {
  description = "Unpackerr Container IP Address"
  value       = docker_container.unpackerr.ip_address
}
