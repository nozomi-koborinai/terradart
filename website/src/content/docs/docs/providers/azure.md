---
title: Azure
description: terradart_azure wraps every hashicorp/azurerm resource and data source as typed Dart.
---

[`terradart_azure`](https://pub.dev/packages/terradart_azure) wraps the official `hashicorp/azurerm` provider. Every resource and data source at the current pin (`kAzureProviderVersionConstraint`) has a factory. Entra ID (`azuread`) is a separate provider and is not in this package.

## Install

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.35.0
  terradart_azure: ^0.35.0
```

## Credentials

`AzureProvider` has no client id, client secret, client certificate, or OIDC token parameter. Credentials never enter the synthesized JSON, and synth needs none. `terradart plan` and `terradart apply` authenticate through `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_CLIENT_CERTIFICATE`, `ARM_USE_OIDC`, `ARM_USE_MSI`, `ARM_USE_CLI`, and the other `ARM_*` variables the provider reads. An omitted subscription falls back to `ARM_SUBSCRIPTION_ID`. An omitted tenant falls back to `ARM_TENANT_ID`. With those variables set, [`terradart apply`](/docs/cli/) synthesizes the Stack and applies it.

The provider requires a `features` block. `const AzureProvider()` emits an empty one, which is enough for `terraform validate`.

## A resource group

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

The app reads the group name as `GroupStackConstants.resourceGroupName`. After apply, `GroupStackOutputs.resourceGroupId` is the group id. The Stack can sit next to a Google, AWS, Cloudflare, or Appwrite Stack in the same package. It can also share one Stack with any of them.

## Examples

- [`examples/azure_leftover_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/azure_leftover_quickstart) covers every factory with placeholder values. It synthesizes and validates. Never apply it.

## Reference

- [`terradart_azure` API docs](https://pub.dev/documentation/terradart_azure/latest/)
- [Azure coverage](/docs/coverage/azure/) lists every factory, its barrel, and its example
- [`lib/src/_catalog.g.dart`](https://github.com/nozomi-koborinai/terradart/blob/main/packages/terradart_azure/lib/src/_catalog.g.dart) maps each Terraform type to its Dart class and import
