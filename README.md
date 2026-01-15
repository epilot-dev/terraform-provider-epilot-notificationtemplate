# epilot-notificationtemplate

<!-- Start Summary [summary] -->
## Summary

Notification Template API: Notification Template API - enables the management of notification templates for the epilot platform.

Notification templates define the content and structure of notifications sent to users.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [epilot-notificationtemplate](#epilot-notificationtemplate)
  * [Installation](#installation)
  * [Authentication](#authentication)
  * [Available Resources and Data Sources](#available-resources-and-data-sources)
  * [Testing the provider locally](#testing-the-provider-locally)

<!-- End Table of Contents [toc] -->

<!-- Start Installation [installation] -->
## Installation

To install this provider, copy and paste this code into your Terraform configuration. Then, run `terraform init`.

```hcl
terraform {
  required_providers {
    epilot-notificationtemplate = {
      source  = "epilot-dev/epilot-notificationtemplate"
      version = "0.11.0"
    }
  }
}

provider "epilot-notificationtemplate" {
  server_url = "..." # Optional
}
```
<!-- End Installation [installation] -->

<!-- Start Authentication [security] -->
## Authentication

This provider supports authentication configuration via provider configuration.

Available configuration:

| Provider Attribute | Description |
|---|---|
| `epilot_auth` | Epilot Bearer token. |
| `epilot_org` | Epilot Organization ID. |
<!-- End Authentication [security] -->

<!-- Start Available Resources and Data Sources [operations] -->
## Available Resources and Data Sources

### Resources

* [epilot-notificationtemplate_notification_template](docs/resources/notification_template.md)
### Data Sources

* [epilot-notificationtemplate_notification_template](docs/data-sources/notification_template.md)
<!-- End Available Resources and Data Sources [operations] -->

<!-- Start Testing the provider locally [usage] -->
## Testing the provider locally

#### Local Provider

Should you want to validate a change locally, the `--debug` flag allows you to execute the provider against a terraform instance locally.

This also allows for debuggers (e.g. delve) to be attached to the provider.

```sh
go run main.go --debug
# Copy the TF_REATTACH_PROVIDERS env var
# In a new terminal
cd examples/your-example
TF_REATTACH_PROVIDERS=... terraform init
TF_REATTACH_PROVIDERS=... terraform apply
```

#### Compiled Provider

Terraform allows you to use local provider builds by setting a `dev_overrides` block in a configuration file called `.terraformrc`. This block overrides all other configured installation methods.

1. Execute `go build` to construct a binary called `terraform-provider-epilot-notificationtemplate`
2. Ensure that the `.terraformrc` file is configured with a `dev_overrides` section such that your local copy of terraform can see the provider binary

Terraform searches for the `.terraformrc` file in your home directory and applies any configuration settings you set.

```
provider_installation {

  dev_overrides {
      "registry.terraform.io/epilot-dev/epilot-notificationtemplate" = "<PATH>"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {}
}
```
<!-- End Testing the provider locally [usage] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->
