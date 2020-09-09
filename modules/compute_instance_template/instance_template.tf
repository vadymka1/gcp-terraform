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
    }

    can_ip_forward = true
}