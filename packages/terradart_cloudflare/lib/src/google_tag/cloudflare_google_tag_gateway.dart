// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'enabled': enabled,
           'endpoint': endpoint,
           'hide_original_ip': hideOriginalIp,
           'measurement_id': measurementId,
           if (setUpTag != null) 'set_up_tag': setUpTag,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareGoogleTagGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
