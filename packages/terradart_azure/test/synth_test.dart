import 'dart:convert';
import 'dart:io';

import 'package:terradart_azure/catalog.dart';
import 'package:terradart_azure/provider.dart';
import 'package:terradart_azure/resource.dart';
import 'package:test/test.dart';

const _credentialArgs = {
  'client_id',
  'client_id_file_path',
  'client_certificate',
  'client_certificate_path',
  'client_certificate_password',
  'client_secret',
  'client_secret_file_path',
  'oidc_request_token',
  'oidc_request_url',
  'oidc_token',
  'oidc_token_file_path',
  'ado_pipeline_service_connection_id',
};

const _everySetting = AzureProvider(
  subscriptionId: '00000000-0000-0000-0000-000000000000',
  tenantId: '11111111-1111-1111-1111-111111111111',
  auxiliaryTenantIds: ['22222222-2222-2222-2222-222222222222'],
  environment: 'public',
  metadataHost: 'https://management.azure.com',
  useOidc: true,
  useMsi: false,
  msiEndpoint: 'http://127.0.0.1:8080',
  msiApiVersion: '2018-02-01',
  useCli: false,
  useAksWorkloadIdentity: true,
  partnerId: 'partner',
  disableCorrelationRequestId: true,
  disableTerraformPartnerId: true,
  resourceProviderRegistrations: 'none',
  resourceProvidersToRegister: ['Microsoft.Compute'],
  storageUseAzuread: true,
  features: AzureFeatures(
    keyVault: AzureKeyVaultFeatures(purgeSoftDeleteOnDestroy: false),
    resourceGroup: AzureResourceGroupFeatures(
      preventDeletionIfContainsResources: true,
    ),
  ),
);

final class _BareStack extends Stack {
  _BareStack() : super(providers: const [AzureProvider()]);
}

final class _TestStack extends Stack {
  _TestStack() : super(providers: [_everySetting]) {
    add(
      AzurermResourceGroup(
        'app',
        location: const .literal('eastus'),
        name: const .literal('app'),
      ),
    );
  }
}

Map<String, dynamic> _providerBlock() =>
    (_TestStack().synth().tfJson['provider'] as Map<String, dynamic>)['azurerm']
        as Map<String, dynamic>;

Iterable<String> _keysDeep(Object? value) sync* {
  if (value is Map) {
    for (final e in value.entries) {
      yield e.key as String;
      yield* _keysDeep(e.value);
    }
  } else if (value is List) {
    for (final v in value) {
      yield* _keysDeep(v);
    }
  }
}

const _fixtureDir = '../terradart_codegen/test/fixtures/wrap/source_azure';

Map<String, dynamic> _fixtureSchema() {
  final root =
      jsonDecode(File('$_fixtureDir/schema.json').readAsStringSync())
          as Map<String, dynamic>;
  return (root['provider_schemas'] as Map<String, dynamic>).values.single
      as Map<String, dynamic>;
}

Set<String> _catalogTypes(CatalogKind kind) => {
  for (final e in terradartCatalog.where((e) => e.kind == kind)) e.tfType,
};

void main() {
  test('synths the azurerm provider with the exact fixture pin', () {
    final json = _TestStack().synth().tfJson;
    final required =
        ((json['terraform'] as Map<String, dynamic>)['required_providers']
                as Map<String, dynamic>)['azurerm']
            as Map<String, dynamic>;
    expect(required['source'], 'hashicorp/azurerm');
    expect(required['version'], kAzureProviderVersionConstraint);
    expect(
      kAzureProviderVersionConstraint,
      File('$_fixtureDir/provider_version.txt').readAsStringSync().trim(),
    );
    expect(
      kAzureProviderVersionConstraint,
      matches(RegExp(r'^\d+\.\d+\.\d+$')),
    );
  });

  test('catalog lists every resource and data source at the pin', () {
    final schema = _fixtureSchema();
    expect(
      _catalogTypes(CatalogKind.resource),
      (schema['resource_schemas'] as Map).keys.toSet(),
    );
    expect(
      _catalogTypes(CatalogKind.dataSource),
      (schema['data_source_schemas'] as Map).keys.toSet(),
    );
  });

  test('credentials cannot appear in synth output by construction', () {
    final keys = _keysDeep(_TestStack().synth().tfJson).toSet();
    expect(keys.intersection(_credentialArgs), isEmpty);
    final source = File('lib/src/azure_provider.dart').readAsStringSync();
    for (final key in _credentialArgs) {
      expect(source, isNot(contains("'$key'")), reason: key);
    }
  });

  test('features is always emitted, including when omitted', () {
    expect(_providerBlock()['features'], [
      {
        'key_vault': [
          {'purge_soft_delete_on_destroy': false},
        ],
        'resource_group': [
          {'prevent_deletion_if_contains_resources': true},
        ],
      },
    ]);
    final bare =
        (_BareStack().synth().tfJson['provider']
                as Map<String, dynamic>)['azurerm']
            as Map<String, dynamic>;
    expect(bare['features'], [<String, Object?>{}]);
  });
}
