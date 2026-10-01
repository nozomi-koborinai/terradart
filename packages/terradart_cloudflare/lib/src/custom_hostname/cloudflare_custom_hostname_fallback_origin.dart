// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_custom_hostname_fallback_origin`.
const Set<String> _cloudflareCustomHostnameFallbackOriginSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_hostname_fallback_origin`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class CloudflareCustomHostnameFallbackOrigin extends Resource {
  static const String tfType = 'cloudflare_custom_hostname_fallback_origin';

  CloudflareCustomHostnameFallbackOrigin(
    super.localName, {
    required TfArg<String> origin,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'origin': origin, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCustomHostnameFallbackOriginSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCustomHostnameFallbackOrigin>`.
  RefTo<CloudflareCustomHostnameFallbackOrigin> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `errors` attribute.
  TfRef<List<String>> get errors =>
      TfRef.attribute<List<String>>(this, 'errors');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
