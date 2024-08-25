provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_droplet" "example" {
  image  = "ubuntu-22-04-x64"
  name   = "example-droplet"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [var.ssh_fingerprint]
}
