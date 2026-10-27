// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_shared_access_policy`.
const Set<String> _azurermIothubSharedAccessPolicySensitive = <String>{
  'primary_connection_string',
  'primary_key',
  'secondary_connection_string',
  'secondary_key',
};

/// Factory wrapper for `azurerm_iothub_shared_access_policy`.
final class AzurermIothubSharedAccessPolicy extends Resource {
  static const String tfType = 'azurerm_iothub_shared_access_policy';

  AzurermIothubSharedAccessPolicy(
    super.localName, {
    TfArg<bool>? deviceConnect,
    required TfArg<String> iothubName,
    required TfArg<String> name,
    TfArg<bool>? registryRead,
    TfArg<bool>? registryWrite,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? serviceConnect,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'device_connect': ?deviceConnect,
           'iothub_name': iothubName,
           'name': name,
           'registry_read': ?registryRead,
           'registry_write': ?registryWrite,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_connect': ?serviceConnect,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubSharedAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubSharedAccessPolicy>`.
  RefTo<AzurermIothubSharedAccessPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `primary_key` attribute.
  TfRef<String> get primaryKey => TfRef.attribute<String>(this, 'primary_key');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `secondary_key` attribute.
  TfRef<String> get secondaryKey =>
      TfRef.attribute<String>(this, 'secondary_key');

  /// Reference to `device_connect` attribute.
  TfRef<bool> get deviceConnect =>
      TfRef.attribute<bool>(this, 'device_connect');

  /// Reference to `iothub_name` attribute.
  TfRef<String> get iothubName => TfRef.attribute<String>(this, 'iothub_name');

  /// Reference to `registry_read` attribute.
  TfRef<bool> get registryRead => TfRef.attribute<bool>(this, 'registry_read');

  /// Reference to `registry_write` attribute.
  TfRef<bool> get registryWrite =>
      TfRef.attribute<bool>(this, 'registry_write');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_connect` attribute.
  TfRef<bool> get serviceConnect =>
      TfRef.attribute<bool>(this, 'service_connect');
}
