# Changelog

## 0.36.0 - 2026-11-01

First release on pub.dev, in lockstep with the other packages.

- Initial catalog for `hashicorp/azurerm` at the pin recorded by
  `kAzureProviderVersionConstraint`. Every resource and data source at that
  pin has a factory. `AzureProvider` takes no credential parameters; apply
  authenticates through `ARM_*` environment variables. The package synth test
  fails if a credential argument is emitted.
- Inputs with a fixed value set take an enum. The sets come from the
  provider's `validation.StringInSlice` calls and its vendored
  `PossibleValuesFor*` helpers, and a list of them takes `EnumList<E>`.
- Exclusive groups are one sealed argument named for the concept. An
  exactly-one group is required, and a group the provider rejects more than
  one member of is nullable. Linux and Windows virtual machines take
  `osSource: .image(adminUsername: ..., sourceImage: ...)` or
  `.osManagedDiskId(...)`, AKS node pool upgrade settings take
  `upgradeCapacity: .maxSurge(...)` or `.maxUnavailable(...)`, and
  `AzurermMssqlManagedDatabase` takes
  `recovery: .pointInTimeRestore(...)` or `.recoverDatabaseId(...)`.
- Inputs that name another resource take a `RefTo`
  (`resourceGroupName: group.ref`), and every resource has its output getters.
- Data sources read their own hint files, so seventeen of them take an enum
  or a sealed argument (`DataAzurermPolicyDefinition` takes
  `identifier: .displayName(...)` or `.name(...)`).
- `azurerm_netapp_volume` takes `AzurermNetappVolumeSecurityStyle` and
  `AzurermNetappVolumeTieringPolicy`, so a Stack that imports the
  `netapp.dart` barrels of both this package and `terradart_google` compiles.
- `AzurermBackend` in `terradart_core` keeps state in an Azure storage
  container, and `terradart init --provider azure` in `terradart_cli`
  scaffolds a project on this package. `terradart migrate` translates
  `azurerm` resources, the provider and the backend into it.
- [`examples/azure_dns_quickstart`](../../examples/azure_dns_quickstart/)
  points a Cloudflare A record at an Azure public IP, and
  `examples/azure_leftover_quickstart` builds the catalog's factories with
  placeholder values. Both are synth and `terraform validate` only.
- A weekly schema bump moves the pin on Thursdays.
