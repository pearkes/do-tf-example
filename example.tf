variable "do_token" {
  description = "Your access token for DigitalOcean"
}

variable "droplet_name" {
  description = "The name of the droplet you are creating"
  default = "testing-tf"
}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "main" {
    name = "${var.droplet_name}"
    size = "512mb"
    image = "ubuntu-14-04-x64"
    region = "nyc3"
}
