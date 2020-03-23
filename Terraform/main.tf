# Configuration for project in GCP
provider "google" {
  credentials = "teak-gamma-272017-e8ea785e5e61.json"
  project     = "${var.project_id}"
  region      = "${var.region}"
}


# Creating VM with Google Compute Engine
resource "google_compute_instance" "webserver" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  # Install apache sever
  metadata_startup_script = "sudo apt-get update; sudo apt-get install apache2 -y;"

  # Allow network for VM and your public IP
  network_interface {
    network = "default"
    access_config {

    }
  }
}

# Create Firewall for VM
resource "google_compute_firewall" "webserver" {
  name = "${var.name_firewall}"
  network = "default"

  allow{
      protocol = "tcp"
      ports = "${var.firewall_port}"
  }
}




