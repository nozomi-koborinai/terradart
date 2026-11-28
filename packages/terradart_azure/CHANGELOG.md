# Changelog

## 0.38.0 - 2026-11-28

- **Breaking:** `AzureProvider.environment` takes `AzureEnvironment` and `AzureProvider.resourceProviderRegistrations` takes `AzureResourceProviderRegistrations` instead of a string, and `features` no longer takes `null`. The new `AzureProvider.unconfigured` emits no provider block, for a child-module Stack and for `addConfigurationAlias`, which threw for every `AzureProvider` before. See [MIGRATING.md](../../MIGRATING.md#azure-provider-enums-and-azureproviderunconfigured).
- **Breaking (provider 5.15.0):** adding `managed_rules.exception` to `azurerm_web_application_firewall_policy` splits three exclusion types. `WebApplicationFirewallPolicyRuleGroup` becomes `WebApplicationFirewallPolicyExcludedRuleSetRuleGroup`, `WebApplicationFirewallPolicyMatchVariable` becomes `WebApplicationFirewallPolicyExclusionMatchVariable`, and `WebApplicationFirewallPolicySelectorMatchOperator` becomes `WebApplicationFirewallPolicyExclusionSelectorMatchOperator`. Dot shorthands and Terraform JSON output are unchanged, and only explicit references to the old type names break. See [MIGRATING.md](../../MIGRATING.md#azure-provider-5150).
- **Breaking:** `catalog.dart` names its list `terradartAzureCatalog` instead of `terradartCatalog`, and re-exports `CatalogEntry` and `CatalogKind` from `package:terradart_core/catalog.dart`. See [MIGRATING.md](../../MIGRATING.md#provider-packages-export-each-public-name-once).
- Every data source takes `dependsOn`, which synth writes as `depends_on`.
- Follows `hashicorp/azurerm` 5.15.0 (was 5.14.0), and synth output pins that version. Adds `AzurermCdnFrontdoorEdgeAction`, `AzurermDataProtectionBackupVaultResourceGuardAssociation`, `AzurermHorizondbCluster`, `AzurermHorizondbFirewallRule`, and `AzurermSearchServiceDatasourceBlob` (1114 resources + 398 data sources). `AzurermHorizondbCluster` takes the required sealed `creation` argument (`.postgresqlVersion(...)` or `.pointInTimeRestore(...)`).

## 0.37.0 - 2026-11-23

- **Breaking:** requires Dart 3.12 (`sdk: ^3.12.0`, was `^3.10.0`). See [MIGRATING.md](../../MIGRATING.md#dart-312-is-the-minimum-sdk).
- **Breaking (provider 5.14.0):** local schema-map hint extraction types validated enums on `azurerm_consumption_budget_management_group`, `azurerm_sentinel_automation_rule`, and the five `azurerm_hdinsight_*_cluster` resources, and merges `AzurermStorageShareFile.source` and `sourceContent` into the sealed `StorageShareFileSource` choice. See [MIGRATING.md](../../MIGRATING.md#azure-provider-5140).
- Follows `hashicorp/azurerm` 5.14.0 (was 5.12.0), and synth output pins that version. Adds `AzurermDataProtectionBackupInstanceCosmosdbAccount` and `AzurermCognitiveAccountProjectConnectionEntraId` (1109 resources + 398 data sources).

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
