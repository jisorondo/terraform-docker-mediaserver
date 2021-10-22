terraform {
  required_version = ">= 0.15"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15"
    }
  }
}

// To deploy on a remote server uncomment the host below and replace IPAddress with host IP and port if needed. 
provider "docker" {
  host = "ssh://root@node1:22"

}