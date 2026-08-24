// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_stream_key`.
const Set<String> _cloudflareStreamKeySensitive = <String>{};

/// Factory wrapper for `cloudflare_stream_key`.
///
/// Accepted Permissions
///
/// - `Stream Read` - `Stream Write`
final class DataCloudflareStreamKey extends Data {
  static const String tfType = 'cloudflare_stream_key';

  DataCloudflareStreamKey({required super.localName, TfArg<String>? accountId})
    : super(
        terraformType: tfType,
        argMap: {if (accountId != null) 'account_id': accountId},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareStreamKeySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');
}
