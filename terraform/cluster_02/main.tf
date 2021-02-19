provider "google" {
  project = "mappingtasks"
  region  = "europe-west3"
  zone    = "europe-west3-b"
}

variable "gce_ssh_user" {
  type    = string
  default = "joba"
}

variable "gce_ssh_pub_key_file" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}
