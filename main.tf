resource "google_compute_instance" "default" {
  name         = "terraform-source-vm"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["abbas", "mohd", "http-server", "https-server", ]
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
      // Ephemeral public IP
    }
  }
  metadata = {
    boo = "bar"
  }

}