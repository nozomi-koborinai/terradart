// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ssl/cloudflare_authenticated_origin_pulls_settings.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_authenticated_origin_pulls_settings`.
const Set<String> _cloudflareAuthenticatedOriginPullsSettingsSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_authenticated_origin_pulls_settings`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareAuthenticatedOriginPullsSettings extends Data {
  static const String tfType = 'cloudflare_authenticated_origin_pulls_settings';

  DataCloudflareAuthenticatedOriginPullsSettings({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAuthenticatedOriginPullsSettingsSensitive;

  /// A reference to the `cloudflare_authenticated_origin_pulls_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareAuthenticatedOriginPullsSettings>`.
  RefTo<CloudflareAuthenticatedOriginPullsSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
