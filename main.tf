terraform {
  required_version = ">= 0.15"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.25"
    }
  }
}

provider "docker" {
  host = var.docker_host
}
