terraform {
  required_providers {
    epilot-notificationtemplate = {
      source  = "epilot-dev/epilot-notificationtemplate"
      version = "0.10.0"
    }
  }
}

provider "epilot-notificationtemplate" {
  server_url = "..." # Optional
}