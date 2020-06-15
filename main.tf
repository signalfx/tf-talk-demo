terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "splunkdemo2"

    workspaces {
      prefix = "tk-talk-"
    }
  }
}

variable "signalfx_api_token" {
  type = string
}

provider "signalfx" {
  auth_token     = var.signalfx_api_token
}
