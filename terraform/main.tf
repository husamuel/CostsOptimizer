terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3"
    }
  }
}

provider "local" {}

resource "local_file" "node" {
  count    = var.num_nodes
  filename = "node${count.index + 1}.txt"
  content  = "Simulate VM ${count.index + 1} to CostsOptimizer"
}
