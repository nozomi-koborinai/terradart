import 'dart:convert';
import 'dart:io';

import 'package:terradart_azure/catalog.dart';
import 'package:terradart_azure/compute.dart';
import 'package:terradart_azure/data.dart';
import 'package:terradart_azure/provider.dart';
import 'package:terradart_azure/resource.dart';
import 'package:terradart_azure/site_recovery.dart';
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

final class _LookupStack extends Stack {
  _LookupStack() : super(providers: const [AzureProvider()]) {
    add(
      DataAzurermRoleDefinition(
        'reader',
        lookup: const .name(.literal('Reader')),
      ),
    );
    add(
      DataAzurermManagementGroup(
        'root',
        identifier: const .displayName(.literal('Tenant Root Group')),
      ),
    );
    add(
      DataAzurermOracleDatabaseSystemVersions(
        'exadata',
        location: const .literal('eastus'),
        shape: const .shapeFamily(.exadata),
      ),
    );
    add(
      DataAzurermOracleDatabaseSystemVersions(
        'any',
        location: const .literal('eastus'),
      ),
    );
  }
}

final class _OneResourceStack extends Stack {
  _OneResourceStack(Resource resource)
    : super(providers: const [AzureProvider()]) {
    add(resource);
  }
}

Map<String, dynamic> _synthedArgs(Resource resource, Set<String> keys) {
  final resources =
      _OneResourceStack(resource).synth().tfJson['resource']
          as Map<String, dynamic>;
  final body =
      (resources[resource.terraformType]
              as Map<String, dynamic>)[resource.localName]
          as Map<String, dynamic>;
  return {
    for (final MapEntry(:key, :value) in body.entries)
      if (keys.contains(key)) key: value,
  };
}

const _osSourceKeys = {
  'admin_username',
  'os_managed_disk_id',
  'source_image_id',
  'source_image_reference',
};

const _diskReplicationKeys = {
  'default_log_storage_account_id',
  'default_recovery_disk_type',
  'managed_disk',
};

AzurermLinuxVirtualMachine _linuxVm(LinuxVirtualMachineOsSource osSource) =>
    AzurermLinuxVirtualMachine(
      'vm',
      osSource: osSource,
      location: const .literal('eastus'),
      name: const .literal('vm'),
      networkInterfaceIds: const .literal(['nic']),
      resourceGroupName: .literal('app'),
      size: const .literal('Standard_B1s'),
      osDisk: const LinuxVirtualMachineOsDisk(caching: .readwrite),
    );

AzurermWindowsVirtualMachine _windowsVm(
  WindowsVirtualMachineOsSource osSource,
) => AzurermWindowsVirtualMachine(
  'vm',
  osSource: osSource,
  location: const .literal('eastus'),
  name: const .literal('vm'),
  networkInterfaceIds: const .literal(['nic']),
  resourceGroupName: .literal('app'),
  size: const .literal('Standard_B1s'),
  osDisk: const WindowsVirtualMachineOsDisk(caching: .readwrite),
);

AzurermSiteRecoveryVmwareReplicatedVm _vmwareVm(
  SiteRecoveryVmwareReplicatedVmDiskReplication diskReplication,
) => AzurermSiteRecoveryVmwareReplicatedVm(
  'replica',
  applianceName: const .literal('appliance'),
  diskReplication: diskReplication,
  name: const .literal('replica'),
  physicalServerCredentialName: const .literal('credential'),
  recoveryReplicationPolicyId: const .literal('policy'),
  recoveryVaultId: const .literal('vault'),
  sourceVmName: const .literal('source'),
  targetResourceGroupId: const .literal('rg'),
  targetVmName: const .literal('target'),
);

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

  test('a data source sets only the argument its sealed lookup names', () {
    final data = _LookupStack().synth().tfJson['data'] as Map<String, dynamic>;
    expect(data['azurerm_role_definition'], {
      'reader': {'name': 'Reader'},
    });
    expect(data['azurerm_management_group'], {
      'root': {'display_name': 'Tenant Root Group'},
    });
    expect(data['azurerm_oracle_database_system_versions'], {
      'exadata': {'location': 'eastus', 'shape_family': 'EXADATA'},
      'any': {'location': 'eastus'},
    });
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

  test('a Linux VM image source sets the admin user and an image id', () {
    final vm = _linuxVm(
      const .image(
        adminUsername: .literal('azureuser'),
        sourceImage: .sourceImageId(.literal('image')),
      ),
    );
    expect(_synthedArgs(vm, _osSourceKeys), {
      'admin_username': 'azureuser',
      'source_image_id': 'image',
    });
  });

  test('a Linux VM image source can name a marketplace image', () {
    final vm = _linuxVm(
      const .image(
        adminUsername: .literal('azureuser'),
        sourceImage: .sourceImageReference(
          LinuxVirtualMachineSourceImageReference(
            offer: .literal('ubuntu-24_04-lts'),
            publisher: .literal('Canonical'),
            sku: .literal('server'),
            version: .literal('latest'),
          ),
        ),
      ),
    );
    expect(_synthedArgs(vm, _osSourceKeys), {
      'admin_username': 'azureuser',
      'source_image_reference': {
        'offer': 'ubuntu-24_04-lts',
        'publisher': 'Canonical',
        'sku': 'server',
        'version': 'latest',
      },
    });
  });

  test('a Linux VM on a managed OS disk sets only that disk', () {
    final vm = _linuxVm(const .osManagedDiskId(.literal('disk')));
    expect(_synthedArgs(vm, _osSourceKeys), {'os_managed_disk_id': 'disk'});
  });

  test('a Windows VM image source sets the admin user and an image id', () {
    final vm = _windowsVm(
      const .image(
        adminUsername: .literal('azureuser'),
        sourceImage: .sourceImageId(.literal('image')),
      ),
    );
    expect(_synthedArgs(vm, _osSourceKeys), {
      'admin_username': 'azureuser',
      'source_image_id': 'image',
    });
  });

  test('a VMware replicated VM with disk defaults sets both defaults', () {
    final vm = _vmwareVm(
      const .defaults(
        defaultLogStorageAccountId: .literal('logs'),
        defaultRecoveryDiskType: .premiumLrs,
      ),
    );
    expect(_synthedArgs(vm, _diskReplicationKeys), {
      'default_log_storage_account_id': 'logs',
      'default_recovery_disk_type': 'Premium_LRS',
    });
  });

  test('a VMware replicated VM with managed disks sets only those', () {
    final vm = _vmwareVm(
      const .managedDisk([
        SiteRecoveryVmwareReplicatedVmManagedDisk(
          diskId: .literal('disk'),
          targetDiskType: .literal('Premium_LRS'),
        ),
      ]),
    );
    expect(_synthedArgs(vm, _diskReplicationKeys), {
      'managed_disk': [
        {'disk_id': 'disk', 'target_disk_type': 'Premium_LRS'},
      ],
    });
  });
}
