provider "docker" {
  #host = "tcp://10.0.75.1:2375"
  #host = "tcp://10.0.75.2:2375"
  #host = "tcp://localhost:2375"
  host = "tcp://docker:2375"
  }

resource "docker_image" "centos" {
  name = "centos:7"
}

resource "docker_container" "centos-server" {
  image = "${docker_image.centos.latest}"
  name = "centos-server"
}
