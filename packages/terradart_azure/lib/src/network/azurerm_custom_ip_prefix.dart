// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_custom_ip_prefix`.
const Set<String> _azurermCustomIpPrefixSensitive = <String>{};

/// Factory wrapper for `azurerm_custom_ip_prefix`.
final class AzurermCustomIpPrefix extends Resource {
  static const String tfType = 'azurerm_custom_ip_prefix';

  AzurermCustomIpPrefix(
    super.localName, {
    required TfArg<String> cidr,
    TfArg<bool>? commissioningEnabled,
    TfArg<bool>? internetAdvertisingDisabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? parentCustomIpPrefixId,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? roaValidityEndDate,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? wanValidationSignedMessage,
    TfArg<List<String>>? zones,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cidr': cidr,
           'commissioning_enabled': ?commissioningEnabled,
           'internet_advertising_disabled': ?internetAdvertisingDisabled,
           'location': location,
           'name': name,
           'parent_custom_ip_prefix_id': ?parentCustomIpPrefixId,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'roa_validity_end_date': ?roaValidityEndDate,
           'tags': ?tags,
           'wan_validation_signed_message': ?wanValidationSignedMessage,
           'zones': ?zones,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCustomIpPrefixSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCustomIpPrefix>`.
  RefTo<AzurermCustomIpPrefix> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `commissioning_enabled` attribute.
  TfRef<bool> get commissioningEnabled =>
      TfRef.attribute<bool>(this, 'commissioning_enabled');

  /// Reference to `internet_advertising_disabled` attribute.
  TfRef<bool> get internetAdvertisingDisabled =>
      TfRef.attribute<bool>(this, 'internet_advertising_disabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent_custom_ip_prefix_id` attribute.
  TfRef<String> get parentCustomIpPrefixId =>
      TfRef.attribute<String>(this, 'parent_custom_ip_prefix_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `roa_validity_end_date` attribute.
  TfRef<String> get roaValidityEndDate =>
      TfRef.attribute<String>(this, 'roa_validity_end_date');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `wan_validation_signed_message` attribute.
  TfRef<String> get wanValidationSignedMessage =>
      TfRef.attribute<String>(this, 'wan_validation_signed_message');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
