// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_stack_hci_cluster`.
const Set<String> _azurermStackHciClusterSensitive = <String>{};

/// Typed helper for the `identity` block of
/// `azurerm_stack_hci_cluster` (derived from provider schema).
@immutable
final class StackHciClusterIdentity {
  const StackHciClusterIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_stack_hci_cluster`.
final class AzurermStackHciCluster extends Resource {
  static const String tfType = 'azurerm_stack_hci_cluster';

  AzurermStackHciCluster(
    super.localName, {
    TfArg<String>? automanageConfigurationId,
    TfArg<String>? clientId,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tenantId,
    StackHciClusterIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'automanage_configuration_id': ?automanageConfigurationId,
           'client_id': ?clientId,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'tenant_id': ?tenantId,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStackHciClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStackHciCluster>`.
  RefTo<AzurermStackHciCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_id` attribute.
  TfRef<String> get cloudId => TfRef.attribute<String>(this, 'cloud_id');

  /// Reference to `resource_provider_object_id` attribute.
  TfRef<String> get resourceProviderObjectId =>
      TfRef.attribute<String>(this, 'resource_provider_object_id');

  /// Reference to `service_endpoint` attribute.
  TfRef<String> get serviceEndpoint =>
      TfRef.attribute<String>(this, 'service_endpoint');

  /// Reference to `automanage_configuration_id` attribute.
  TfRef<String> get automanageConfigurationId =>
      TfRef.attribute<String>(this, 'automanage_configuration_id');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
