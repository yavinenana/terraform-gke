// DEFINITION OF THE MASTER
resource "google_container_cluster" "default" {
  name        = var.name
  project     = var.project
  description = var.description
  location    = var.regiongcp

//to remove the default node pool , because we're launch a separatly a new node pool - down 
  remove_default_node_pool = true
  initial_node_count = var.initial_node_count
  
  master_auth {
    username = ""
    password = ""
  
    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

// DEFINITION OF THE NODES - (aparte de la d default)
resource "google_container_node_pool" "default" {
  name        = "${var.name}-node-pool"
  project     = var.project
  location    = var.regiongcp
  cluster     = google_container_cluster.default.name
  node_count  = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }  
}

