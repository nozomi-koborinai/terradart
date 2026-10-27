// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_workloads_sap_discovery_virtual_instance`.
const Set<String> _azurermWorkloadsSapDiscoveryVirtualInstanceSensitive =
    <String>{};

/// Workloads Sap Discovery Virtual Instance enum for `environment`.
extension type const WorkloadsSapDiscoveryVirtualInstanceEnvironment._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapDiscoveryVirtualInstanceEnvironment.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapDiscoveryVirtualInstanceEnvironment.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapDiscoveryVirtualInstanceEnvironment.arg(TfArg<String> arg)
    : this._(arg);

  static const nonprod = WorkloadsSapDiscoveryVirtualInstanceEnvironment._(
    TfArgLiteral('NonProd'),
  );
  static const prod = WorkloadsSapDiscoveryVirtualInstanceEnvironment._(
    TfArgLiteral('Prod'),
  );

  static const List<WorkloadsSapDiscoveryVirtualInstanceEnvironment> values = [
    nonprod,
    prod,
  ];
}

/// Workloads Sap Discovery Virtual Instance Managed Resources Network Access enum for `managed_resources_network_access_type`.
extension type const WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const private =
      WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType._(
        TfArgLiteral('Private'),
      );
  static const public =
      WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType._(
        TfArgLiteral('Public'),
      );

  static const List<
    WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType
  >
  values = [private, public];
}

/// Workloads Sap Discovery Virtual Instance Sap enum for `sap_product`.
extension type const WorkloadsSapDiscoveryVirtualInstanceSapProduct._(
  TfArg<String> _
) implements TfArg<String> {
  WorkloadsSapDiscoveryVirtualInstanceSapProduct.variable(String name)
    : this._(TfArg.variable(name));
  WorkloadsSapDiscoveryVirtualInstanceSapProduct.expression(String template)
    : this._(TfArg.expression(template));
  const WorkloadsSapDiscoveryVirtualInstanceSapProduct.arg(TfArg<String> arg)
    : this._(arg);

  static const ecc = WorkloadsSapDiscoveryVirtualInstanceSapProduct._(
    TfArgLiteral('ECC'),
  );
  static const other = WorkloadsSapDiscoveryVirtualInstanceSapProduct._(
    TfArgLiteral('Other'),
  );
  static const s4hana = WorkloadsSapDiscoveryVirtualInstanceSapProduct._(
    TfArgLiteral('S4HANA'),
  );

  static const List<WorkloadsSapDiscoveryVirtualInstanceSapProduct> values = [
    ecc,
    other,
    s4hana,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_workloads_sap_discovery_virtual_instance` (derived from provider schema).
@immutable
final class WorkloadsSapDiscoveryVirtualInstanceIdentity {
  const WorkloadsSapDiscoveryVirtualInstanceIdentity({
    required this.identityIds,
    required this.type,
  });

  final TfArg<List<String>> identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': identityIds.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_workloads_sap_discovery_virtual_instance`.
final class AzurermWorkloadsSapDiscoveryVirtualInstance extends Resource {
  static const String tfType =
      'azurerm_workloads_sap_discovery_virtual_instance';

  AzurermWorkloadsSapDiscoveryVirtualInstance(
    super.localName, {
    required TfArg<String> centralServerVirtualMachineId,
    required WorkloadsSapDiscoveryVirtualInstanceEnvironment environment,
    required TfArg<String> location,
    TfArg<String>? managedResourceGroupName,
    WorkloadsSapDiscoveryVirtualInstanceManagedResourcesNetworkAccessType?
    managedResourcesNetworkAccessType,
    TfArg<String>? managedStorageAccountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required WorkloadsSapDiscoveryVirtualInstanceSapProduct sapProduct,
    TfArg<Map<String, String>>? tags,
    WorkloadsSapDiscoveryVirtualInstanceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'central_server_virtual_machine_id': centralServerVirtualMachineId,
           'environment': environment,
           'location': location,
           'managed_resource_group_name': ?managedResourceGroupName,
           'managed_resources_network_access_type':
               ?managedResourcesNetworkAccessType,
           'managed_storage_account_name': ?managedStorageAccountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sap_product': sapProduct,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermWorkloadsSapDiscoveryVirtualInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWorkloadsSapDiscoveryVirtualInstance>`.
  RefTo<AzurermWorkloadsSapDiscoveryVirtualInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `central_server_virtual_machine_id` attribute.
  TfRef<String> get centralServerVirtualMachineId =>
      TfRef.attribute<String>(this, 'central_server_virtual_machine_id');

  /// Reference to `environment` attribute.
  TfRef<String> get environment => TfRef.attribute<String>(this, 'environment');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_resource_group_name` attribute.
  TfRef<String> get managedResourceGroupName =>
      TfRef.attribute<String>(this, 'managed_resource_group_name');

  /// Reference to `managed_resources_network_access_type` attribute.
  TfRef<String> get managedResourcesNetworkAccessType =>
      TfRef.attribute<String>(this, 'managed_resources_network_access_type');

  /// Reference to `managed_storage_account_name` attribute.
  TfRef<String> get managedStorageAccountName =>
      TfRef.attribute<String>(this, 'managed_storage_account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sap_product` attribute.
  TfRef<String> get sapProduct => TfRef.attribute<String>(this, 'sap_product');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
