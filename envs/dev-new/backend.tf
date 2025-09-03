terraform {
  backend "gcs" {
    bucket = "drishya-stage-state-bucket-1"
    prefix = "terraform/state/dev-new"
  }
}

