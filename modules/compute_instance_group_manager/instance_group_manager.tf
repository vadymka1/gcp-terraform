resource "google_compute_instance_group_manager" "dev-instance-group"{
    name = "${var.name}"
    instance_template  = "${var.instance_template}"
    base_instance_name = "${var.base_instance_name}"
    zone               = "${var.zone}"
    target_size        = "1"

    named_port {
        name = "http"
        port = "${var.http_port}"
    }

    named_port {
        name = "ssh"
        port = "${var.ssh_port}"
    }


    lifecycle {
        ignore_changes = []
        create_before_destroy = true
    }
}