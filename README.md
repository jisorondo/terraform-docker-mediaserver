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
├── terraform.tfstate
├── terraform.tfstate.backup
├── unpackerr.tf
└── variables.tf
```

## Use

1) Clone this repository to your local machine
  - `git clone https://github.com/jisorondo/terraform-docker-mediaserver.git`

2) Run `terraform init` to initialize the workspace and download the `docker` provider.

3) Modify the `variables.tf` file to your needs. Please see details regarding the containers and variables below.

4) Run `terraform validate` after modifying the `variables.tf` file to confirm configuration is valid.

5)  Run `terraform plan` and `terraform apply`. Once the containers have been deployed you can continue setting up the apps.
