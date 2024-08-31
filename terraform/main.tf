resource "google_compute_instance" "new_vm" {
  name         = "terraform-vm2024"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // No nat_ip specified, GCP will assign an ephemeral public IP automatically
    }
  }

  metadata_startup_script = "echo hi > /test.txt"
  #allow_stopping_for_update = true
}