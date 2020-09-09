resource "google_compute_global_forwarding_rule" "global_forwarding_rule" {
  name       = "${var.name}-global-forwarding-rule"
  project    = var.project_name
  target     = google_compute_target_http_proxy.target_http_proxy.self_link
  port_range = "80"
}

resource "google_compute_target_http_proxy" "target_http_proxy" {
  name    = "${var.name}-proxy"
  project = var.project_name
  url_map = google_compute_url_map.url_map.self_link
}

resource "google_compute_backend_service" "dev-backendservice" {
  # region = "us-central1"
  name = "${var.backend_name}"
  health_checks         = [google_compute_health_check.healthcheck_name.id]
  
  port_name               = "http"
  protocol                = "HTTP"

  backend {
      # group = "${var.group}"
      group = "${var.group_id}"
  }
}

resource "google_compute_health_check" "healthcheck_name" {
  
  name = "${var.healthcheck_name}"
  http_health_check {
    port = 80
  }
}

resource "google_compute_url_map" "url_map" {
  name            = "${var.name}"
  project         = var.project_name
  default_service = google_compute_backend_service.dev-backendservice.self_link
}