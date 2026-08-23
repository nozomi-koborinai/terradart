// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_key`.
const Set<String> _cloudflareStreamKeySensitive = <String>{'jwk', 'pem'};

/// Factory wrapper for `cloudflare_stream_key`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class CloudflareStreamKey extends Resource {
  static const String tfType = 'cloudflare_stream_key';

  CloudflareStreamKey({
    required super.localName,
    required TfArg<String> accountId,
    super.lifecycle,
    super.dependsOn,
  }) : super(terraformType: tfType, argMap: {'account_id': accountId});

  @override
  Set<String> get sensitiveFields => _cloudflareStreamKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `jwk` attribute.
  TfRef<String> get jwk => TfRef.attribute<String>(this, 'jwk');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `pem` attribute.
  TfRef<String> get pem => TfRef.attribute<String>(this, 'pem');
}
