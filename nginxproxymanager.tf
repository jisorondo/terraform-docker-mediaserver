resource "docker_image" "npm" {
  name         = "jc21/nginx-proxy-manager:latest"
  keep_locally = true

}

resource "docker_image" "db" {
  name         = "jc21/mariadb-aria:latest"
  keep_locally = true

}

resource "docker_container" "nginx_proxy_manager_db" {
  name    = "npm-db"
  image   = docker_image.db.image_id
  restart = "always"

  hostname = "db"

  env = ["MYSQL_ROOT_PASSWORD=npm", "MYSQL_DATABASE=npm", "MYSQL_USER=npm", "MYSQL_PASSWORD=npm"]

  ### Path to the mysql DB. Change the host_path to match your system
  volumes {
    container_path = "/var/lib/mysql"
    host_path      = var.db_path
  }

}

### Default username/password admin@example.com/changeme admin_url http://$HOST:81

resource "docker_container" "nginx_proxy_manager_app" {
  name    = "npm-app"
  image   = docker_image.npm.image_id
  restart = "always"

  ## Makes nginx aware of the db container created previously

  host {
    host = "db"
    ip   = docker_container.nginx_proxy_manager_db.ipv4_address
  }

  ports {
    external = 1880
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 81
    internal = 81
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  ports {
    external = 18443
    internal = 443
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  env = ["DB_MYSQL_HOST=db", "DB_MYSQL_PORT=3306", "DB_MYSQL_USER=npm", "DB_MYSQL_PASSWORD=npm", "DB_MYSQL_NAME=npm"]

  volumes {
    container_path = "/etc/letsencrypt"
    host_path      = var.nginx_letsencrypt
  }

  volumes {
    container_path = "/data"
    host_path      = var.nginx_data
  }

  depends_on = [
    docker_container.nginx_proxy_manager_db
  ]

}



