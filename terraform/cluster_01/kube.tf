resource "google_container_cluster" "primary" {
  name     = "tr-mapping-cluster"
  location = "europe-west4-a"

  remove_default_node_pool = true
  initial_node_count       = 1

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  provisioner "local-exec" {
    command = join("",["gcloud container clusters get-credentials ", google_container_cluster.primary.name, " --region=", google_container_cluster.primary.location])
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes_n2d" {
  name       = "c2-node-pool"
  location   = "europe-west4-a"
  cluster    = google_container_cluster.primary.name
  node_count = 5

  node_config {
    preemptible  = true
    machine_type = "c2-standard-8"
    image_type = "ubuntu_containerd"

    metadata = {
      disable-legacy-endpoints = "true"
      ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes_n2" {
  name       = "n2-node-pool"
  location   = "europe-west4-a"
  cluster    = google_container_cluster.primary.name
  node_count = 5

  node_config {
    preemptible  = true
    machine_type = "n2-custom-8-32768"
    image_type = "ubuntu_containerd"

    metadata = {
      disable-legacy-endpoints = "true"
      ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes_n1" {
  name       = "n1-node-pool"
  location   = "europe-west4-a"
  cluster    = google_container_cluster.primary.name
  node_count = 5

  node_config {
    preemptible  = true
    machine_type = "n1-custom-8-32768"
    image_type = "ubuntu_containerd"

    metadata = {
      disable-legacy-endpoints = "true"
      ssh-keys = "${var.gce_ssh_user}:${file(var.gce_ssh_pub_key_file)}"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_filestore_instance" "instance" {
  name = "test-filestore"
  zone = "europe-west4-a"
  tier = "BASIC_HDD"

  file_shares {
    capacity_gb = 1024
    name        = "share1"
  }

  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}
