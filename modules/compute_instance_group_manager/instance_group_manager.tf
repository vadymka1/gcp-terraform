resource "google_compute_autoscaler" "default" {

  name   = "${var.autoscaler}"
  zone   = "${var.zone}"
  target = google_compute_instance_group_manager.dev-instance-group.id

  autoscaling_policy {
    max_replicas    = 2
    min_replicas    = 1
    cooldown_period = 60

  }
}

resource "google_compute_instance_group_manager" "dev-instance-group"{
    name = "${var.name}"
    # instance_template  = "${var.instance_template}"
    base_instance_name = "${var.base_instance_name}"
    zone               = "${var.zone}"
    target_size        = "1"

    version {
        instance_template  = "${var.instance_template}"
    }


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