terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}


resource "docker_image" "app_image" {
  name = "static-html-app:latest"
  build {
    context = "../app"
  }
}

resource "docker_container" "app_container" {
  name  = "static-html-container"
  image = docker_image.app_image.name
  ports {
    internal = 80
    external = 8080
  }
}
