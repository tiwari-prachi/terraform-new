terraform {
  backend "gcs" {
    bucket = "drishya-stage-state-bucket-tf"
    prefix = "terraform/state/dev"
  }
}
