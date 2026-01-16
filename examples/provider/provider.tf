terraform {
  required_providers {
    epilot-notificationtemplate = {
      source  = "epilot-dev/epilot-notificationtemplate"
      version = "0.12.1"
    }
  }
}

provider "epilot-notificationtemplate" {
  epilot_auth = "<YOUR_EPILOT_AUTH>" # Required
  server_url  = "..."                # Optional
}