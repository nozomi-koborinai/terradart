// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls_settings`.
const Set<String> _cloudflareAuthenticatedOriginPullsSettingsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls_settings`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareAuthenticatedOriginPullsSettings extends Resource {
  static const String tfType = 'cloudflare_authenticated_origin_pulls_settings';

  CloudflareAuthenticatedOriginPullsSettings({
    required super.localName,
    required TfArg<bool> enabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'enabled': enabled, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
