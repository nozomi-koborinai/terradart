# terradart_azure

Curated factory wrappers for **Azure** resources (the official [`hashicorp/azurerm`](https://registry.terraform.io/providers/hashicorp/azurerm) Terraform provider) for Dart-first Terraform stacks.

The catalog at the current provider pin (`kAzureProviderVersionConstraint`) is filled: every resource and data source in that schema has a factory. Entra ID (`azuread`) is a separate provider and is not in this package.

## Security and credentials

**Credentials never appear in synth output.** `AzureProvider` has no client id, client secret, client certificate, or OIDC token parameters. Apply authenticates through `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_CLIENT_CERTIFICATE`, `ARM_USE_OIDC`, `ARM_USE_MSI`, `ARM_USE_CLI`, and the other `ARM_*` variables the provider reads.

The provider requires a `features` block. `AzureProvider()` emits an empty one, which is enough for `terraform validate`.

## Installation

```yaml
dependencies:
  terradart_core: ^0.35.0
  terradart_azure: ^0.35.0
```

## Usage

```dart
// lib/group_stack.dart
import 'package:terradart_azure/provider.dart';
import 'package:terradart_azure/resource.dart';

final class GroupStack extends Stack {
  GroupStack()
    : super(
        providers: [const AzureProvider()],
        appExports: AppExports('lib/generated/group_stack.app.dart'),
      ) {
    final group = add(AzurermResourceGroup(
      'app',
      location: .literal('eastus'),
      name: .literal('app'),
    ));
    addConstant('resourceGroupName', .ref(group.name));
    addOutput('resource_group_id', group.id);
  }
}
```

Apply authenticates through `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, and the other `ARM_*` variables. `const AzureProvider()` emits an empty `features` block.
