import 'dart:convert';

import 'package:terradart_azure/terradart_azure.dart';

/// Minimal example: a resource group and a static public IP in it,
/// synthesized to Terraform JSON. Credentials never appear in synth output;
/// authenticate at apply time via the `ARM_*` environment variables
/// (`ARM_SUBSCRIPTION_ID`, `ARM_TENANT_ID`, and a client secret, OIDC token
/// or Azure CLI login).
final class HelloStack extends Stack {
  HelloStack() : super(providers: const [AzureProvider()]) {
    final group = AzurermResourceGroup(
      'hello',
      location: const .literal('eastus'),
      name: const .literal('hello-dart'),
    );
    add(group);
    add(
      AzurermPublicIp(
        'hello',
        allocationMethod: .static,
        location: const .literal('eastus'),
        name: const .literal('hello-dart'),
        resourceGroupName: group.ref,
        sku: .standard,
      ),
    );
  }
}

void main() {
  final result = HelloStack().synth();
  // ignore: avoid_print
  print(const JsonEncoder.withIndent('  ').convert(result.tfJson));
}
