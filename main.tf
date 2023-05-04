
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
provider "docker" {
       
}


resource "docker_image" "my_img" {
  name = "my_img"
  build {
    path = "../my-web-page-master"
    dockerfile = "my_img.Dockerfile"
  }
}

resource "docker_container" "my_application" {
  image = docker_image.my_img.latest
  name  = "my_application"
  ports {
    internal = 80
    external = 8010
  }
}

