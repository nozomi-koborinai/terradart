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
final class DataCloudflareGoogleTagGateway extends Data {
  static const String tfType = 'cloudflare_google_tag_gateway';

  DataCloudflareGoogleTagGateway({
    required super.localName,
    required TfArg<String> zoneId,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareGoogleTagGatewaySensitive;

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
}
