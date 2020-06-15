variable "signalfx_api_token" {
  type = string
}

provider "signalfx" {
  auth_token     = var.signalfx_api_token
}
