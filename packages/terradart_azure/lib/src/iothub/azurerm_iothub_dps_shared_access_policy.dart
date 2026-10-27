// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_dps_shared_access_policy`.
const Set<String> _azurermIothubDpsSharedAccessPolicySensitive = <String>{
  'primary_connection_string',
  'primary_key',
  'secondary_connection_string',
  'secondary_key',
};

/// Factory wrapper for `azurerm_iothub_dps_shared_access_policy`.
final class AzurermIothubDpsSharedAccessPolicy extends Resource {
  static const String tfType = 'azurerm_iothub_dps_shared_access_policy';

  AzurermIothubDpsSharedAccessPolicy(
    super.localName, {
    TfArg<bool>? enrollmentRead,
    TfArg<bool>? enrollmentWrite,
    required TfArg<String> iothubDpsName,
    required TfArg<String> name,
    TfArg<bool>? registrationRead,
    TfArg<bool>? registrationWrite,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? serviceConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enrollment_read': ?enrollmentRead,
           'enrollment_write': ?enrollmentWrite,
           'iothub_dps_name': iothubDpsName,
           'name': name,
           'registration_read': ?registrationRead,
           'registration_write': ?registrationWrite,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_config': ?serviceConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermIothubDpsSharedAccessPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermIothubDpsSharedAccessPolicy>`.
  RefTo<AzurermIothubDpsSharedAccessPolicy> get ref => RefTo.of(this);

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

  /// Reference to `enrollment_read` attribute.
  TfRef<bool> get enrollmentRead =>
      TfRef.attribute<bool>(this, 'enrollment_read');

  /// Reference to `enrollment_write` attribute.
  TfRef<bool> get enrollmentWrite =>
      TfRef.attribute<bool>(this, 'enrollment_write');

  /// Reference to `iothub_dps_name` attribute.
  TfRef<String> get iothubDpsName =>
      TfRef.attribute<String>(this, 'iothub_dps_name');

  /// Reference to `registration_read` attribute.
  TfRef<bool> get registrationRead =>
      TfRef.attribute<bool>(this, 'registration_read');

  /// Reference to `registration_write` attribute.
  TfRef<bool> get registrationWrite =>
      TfRef.attribute<bool>(this, 'registration_write');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_config` attribute.
  TfRef<bool> get serviceConfig =>
      TfRef.attribute<bool>(this, 'service_config');
}
