// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_endpoint_cosmosdb_account`.
const Set<String> _azurermIothubEndpointCosmosdbAccountSensitive = <String>{
  'primary_key',
  'secondary_key',
};

/// Factory wrapper for `azurerm_iothub_endpoint_cosmosdb_account`.
final class AzurermIothubEndpointCosmosdbAccount extends Resource {
  static const String tfType = 'azurerm_iothub_endpoint_cosmosdb_account';

  AzurermIothubEndpointCosmosdbAccount(
    super.localName, {
    TfArg<String>? authenticationType,
    required TfArg<String> containerName,
    required TfArg<String> databaseName,
    required TfArg<String> endpointUri,
    TfArg<String>? identityId,
    required TfArg<String> iothubId,
    required TfArg<String> name,
    TfArg<String>? partitionKeyName,
    TfArg<String>? partitionKeyTemplate,
    Sensitive<String>? primaryKey,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    Sensitive<String>? secondaryKey,
    TfArg<String>? subscriptionId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_type': ?authenticationType,
           'container_name': containerName,
           'database_name': databaseName,
           'endpoint_uri': endpointUri,
           'identity_id': ?identityId,
           'iothub_id': iothubId,
           'name': name,
           'partition_key_name': ?partitionKeyName,
           'partition_key_template': ?partitionKeyTemplate,
           'primary_key': ?primaryKey,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'secondary_key': ?secondaryKey,
           'subscription_id': ?subscriptionId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIothubEndpointCosmosdbAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubEndpointCosmosdbAccount>`.
  RefTo<AzurermIothubEndpointCosmosdbAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `endpoint_uri` attribute.
  TfRef<String> get endpointUri =>
      TfRef.attribute<String>(this, 'endpoint_uri');

  /// Reference to `identity_id` attribute.
  TfRef<String> get identityId => TfRef.attribute<String>(this, 'identity_id');

  /// Reference to `iothub_id` attribute.
  TfRef<String> get iothubId => TfRef.attribute<String>(this, 'iothub_id');

  /// Reference to `partition_key_name` attribute.
  TfRef<String> get partitionKeyName =>
      TfRef.attribute<String>(this, 'partition_key_name');

  /// Reference to `partition_key_template` attribute.
  TfRef<String> get partitionKeyTemplate =>
      TfRef.attribute<String>(this, 'partition_key_template');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `subscription_id` attribute.
  TfRef<String> get subscriptionId =>
      TfRef.attribute<String>(this, 'subscription_id');
}
