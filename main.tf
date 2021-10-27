terraform {
  required_version = ">= 0.15"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15"
    }
  }
}

provider "docker" {
  host = "tcp://192.168.78.119:2376"
}
