terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_droplet" "example" {
  image  = "ubuntu-22-04-x64"
  name   = "example-droplet"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    "12:6d:d5:26:94:1d:de:06:57:ff:5d:b2:61:04:b6:66"
  ]
}
