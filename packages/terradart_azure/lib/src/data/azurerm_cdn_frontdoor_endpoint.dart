// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cdn/azurerm_cdn_frontdoor_endpoint.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_endpoint`.
const Set<String> _azurermCdnFrontdoorEndpointSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_endpoint`.
final class DataAzurermCdnFrontdoorEndpoint extends Data {
  static const String tfType = 'azurerm_cdn_frontdoor_endpoint';

  DataAzurermCdnFrontdoorEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> profileName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'profile_name': profileName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorEndpointSensitive;

  /// A reference to the `azurerm_cdn_frontdoor_endpoint` this data source reads, for
  /// arguments typed `RefTo<AzurermCdnFrontdoorEndpoint>`.
  RefTo<AzurermCdnFrontdoorEndpoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `profile_name` attribute.
  TfRef<String> get profileName =>
      TfRef.attribute<String>(this, 'profile_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
