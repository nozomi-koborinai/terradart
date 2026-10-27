# Changelog

## 0.35.0

- Initial catalog for `hashicorp/azurerm` at the pin recorded by
  `kAzureProviderVersionConstraint`. Every resource and data source at that
  pin has a factory. `AzureProvider` takes no credential parameters; apply
  authenticates through `ARM_*` environment variables.
