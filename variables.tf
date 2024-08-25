variable "digitalocean_token" {
  type        = string
  description = "The token used to access DigitalOcean API"
}

variable "ssh_fingerprint" {
  type        = string
  description = "The SSH key fingerprint for droplet access"
}
