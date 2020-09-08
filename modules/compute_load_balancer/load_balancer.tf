resource "google_compute_global_forwarding_rule" "global_forwarding_rule" {
  name       = "${var.name}-${var.app_environment}-global-forwarding-rule"
  project    = var.app_project
  target     = google_compute_target_http_proxy.target_http_proxy.self_link
  port_range = "80"
}
