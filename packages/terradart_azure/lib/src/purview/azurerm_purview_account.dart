// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_purview_account`.
const Set<String> _azurermPurviewAccountSensitive = <String>{
  'atlas_kafka_endpoint_primary_connection_string',
  'atlas_kafka_endpoint_secondary_connection_string',
};

/// Typed helper for the `identity` block of
/// `azurerm_purview_account` (derived from provider schema).
@immutable
final class PurviewAccountIdentity {
  const PurviewAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_purview_account`.
final class AzurermPurviewAccount extends Resource {
  static const String tfType = 'azurerm_purview_account';

  AzurermPurviewAccount(
    super.localName, {
    required TfArg<String> location,
    TfArg<bool>? managedEventHubEnabled,
    TfArg<String>? managedResourceGroupName,
    required TfArg<String> name,
    TfArg<bool>? publicNetworkEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required PurviewAccountIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'managed_event_hub_enabled': ?managedEventHubEnabled,
           'managed_resource_group_name': ?managedResourceGroupName,
           'name': name,
           'public_network_enabled': ?publicNetworkEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPurviewAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPurviewAccount>`.
  RefTo<AzurermPurviewAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `atlas_kafka_endpoint_primary_connection_string` attribute.
  TfRef<String> get atlasKafkaEndpointPrimaryConnectionString =>
      TfRef.attribute<String>(
        this,
        'atlas_kafka_endpoint_primary_connection_string',
      );

  /// Reference to `atlas_kafka_endpoint_secondary_connection_string` attribute.
  TfRef<String> get atlasKafkaEndpointSecondaryConnectionString =>
      TfRef.attribute<String>(
        this,
        'atlas_kafka_endpoint_secondary_connection_string',
      );

  /// Reference to `aws_external_id` attribute.
  TfRef<String> get awsExternalId =>
      TfRef.attribute<String>(this, 'aws_external_id');

  /// Reference to `catalog_endpoint` attribute.
  TfRef<String> get catalogEndpoint =>
      TfRef.attribute<String>(this, 'catalog_endpoint');

  /// Reference to `guardian_endpoint` attribute.
  TfRef<String> get guardianEndpoint =>
      TfRef.attribute<String>(this, 'guardian_endpoint');

  /// Reference to `managed_resources` attribute.
  TfRef<List<Map<String, Object?>>> get managedResources =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'managed_resources');

  /// Reference to `scan_endpoint` attribute.
  TfRef<String> get scanEndpoint =>
      TfRef.attribute<String>(this, 'scan_endpoint');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `managed_event_hub_enabled` attribute.
  TfRef<bool> get managedEventHubEnabled =>
      TfRef.attribute<bool>(this, 'managed_event_hub_enabled');

  /// Reference to `managed_resource_group_name` attribute.
  TfRef<String> get managedResourceGroupName =>
      TfRef.attribute<String>(this, 'managed_resource_group_name');

  /// Reference to `public_network_enabled` attribute.
  TfRef<bool> get publicNetworkEnabled =>
      TfRef.attribute<bool>(this, 'public_network_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
