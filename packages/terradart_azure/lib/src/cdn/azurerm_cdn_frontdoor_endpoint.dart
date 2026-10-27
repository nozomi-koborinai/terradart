// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cdn_frontdoor_endpoint`.
const Set<String> _azurermCdnFrontdoorEndpointSensitive = <String>{};

/// Factory wrapper for `azurerm_cdn_frontdoor_endpoint`.
final class AzurermCdnFrontdoorEndpoint extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_endpoint';

  AzurermCdnFrontdoorEndpoint(
    super.localName, {
    required TfArg<String> cdnFrontdoorProfileId,
    TfArg<bool>? enabled,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cdn_frontdoor_profile_id': cdnFrontdoorProfileId,
           'enabled': ?enabled,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCdnFrontdoorEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorEndpoint>`.
  RefTo<AzurermCdnFrontdoorEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `host_name` attribute.
  TfRef<String> get hostName => TfRef.attribute<String>(this, 'host_name');

  /// Reference to `cdn_frontdoor_profile_id` attribute.
  TfRef<String> get cdnFrontdoorProfileId =>
      TfRef.attribute<String>(this, 'cdn_frontdoor_profile_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
