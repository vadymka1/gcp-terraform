resource "google_compute_instance_template" "dev_instance_template" {
    name = "${var.name}"
    machine_type = "${var.machine_type}"

    disk {
        source_image = "${var.source_image}"
        auto_delete = false
        disk_size_gb = 20
        boot = true
    }

    network_interface {
        network = "${var.network_name}"
        subnetwork = "${var.subnet_name}"
        access_config {
          nat_ip = google_compute_address.static.address
        }

    }

    can_ip_forward = true
}

resource "google_compute_address" "static" {
  name = "ipv4-address"
}