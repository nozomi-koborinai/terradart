// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_custom_hostname_fallback_origin`.
const Set<String> _cloudflareCustomHostnameFallbackOriginSensitive = <String>{};

/// Factory wrapper for `cloudflare_custom_hostname_fallback_origin`.
///
/// Accepted Permissions
///
/// - `SSL and Certificates Read` - `SSL and Certificates Write`
final class DataCloudflareCustomHostnameFallbackOrigin extends Data {
  static const String tfType = 'cloudflare_custom_hostname_fallback_origin';

  DataCloudflareCustomHostnameFallbackOrigin({
    required super.localName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareCustomHostnameFallbackOriginSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `errors` attribute.
  TfRef<List<String>> get errors =>
      TfRef.attribute<List<String>>(this, 'errors');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
