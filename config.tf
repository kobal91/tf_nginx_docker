provider "docker" {
  host = "tcp://0.0.0.0:2376"
}

resource "docker_image" "centos" {
  name = "centos:7"
}

resource "docker_container" "centos-server" {
  image = "${docker_image.centos.latest}"
  name = "centos-server"
}