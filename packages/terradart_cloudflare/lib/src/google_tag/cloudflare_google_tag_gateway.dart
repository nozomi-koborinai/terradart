// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_google_tag_gateway`.
const Set<String> _cloudflareGoogleTagGatewaySensitive = <String>{};

/// Factory wrapper for `cloudflare_google_tag_gateway`.
///
/// Accepted Permissions
///
/// - `Zaraz Admin` - `Zaraz Edit` - `Zaraz Read`
final class CloudflareGoogleTagGateway extends Resource {
  static const String tfType = 'cloudflare_google_tag_gateway';

  CloudflareGoogleTagGateway({
    required super.localName,
    required TfArg<bool> enabled,
    required TfArg<String> endpoint,
    required TfArg<bool> hideOriginalIp,
    required TfArg<String> measurementId,
    TfArg<bool>? setUpTag,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           'endpoint': endpoint,
           'hide_original_ip': hideOriginalIp,
           'measurement_id': measurementId,
           'set_up_tag': ?setUpTag,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareGoogleTagGatewaySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareGoogleTagGateway>`.
  RefTo<CloudflareGoogleTagGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `hide_original_ip` attribute.
  TfRef<bool> get hideOriginalIp =>
      TfRef.attribute<bool>(this, 'hide_original_ip');

  /// Reference to `measurement_id` attribute.
  TfRef<String> get measurementId =>
      TfRef.attribute<String>(this, 'measurement_id');

  /// Reference to `set_up_tag` attribute.
  TfRef<bool> get setUpTag => TfRef.attribute<bool>(this, 'set_up_tag');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
