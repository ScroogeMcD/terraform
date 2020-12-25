terraform {
	required_providers {
		google = {
			source = "hashicorp/google"
			version = "3.5.0"
		}
	}
}

provider "google" {
	
	credentials = file("~/Desktop/GCP_Terraform_private_key/TerraformTest1-58a139b9b008.json")

	project = "terraformtest1-299709"
	region	= "us-central-1"
	zone		= "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
	name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
	name					= "terraform-instance"
	machine_type	= "f1-micro"
	tags					= ["web", "dev"]

	boot_disk {
		initialize_params {
			image = "debian-cloud/debian-9"
		}
	}

	network_interface {
		network = google_compute_network.vpc_network.name
		access_config {
		}
	}
}
