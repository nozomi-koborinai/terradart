// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_calls_turn_app`.
const Set<String> _cloudflareCallsTurnAppSensitive = <String>{};

/// Factory wrapper for `cloudflare_calls_turn_app`.
///
/// Accepted Permissions
///
/// - `Calls Read` - `Calls Write`
final class DataCloudflareCallsTurnApp extends Data {
  static const String tfType = 'cloudflare_calls_turn_app';

  DataCloudflareCallsTurnApp({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> keyId,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'key_id': keyId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCallsTurnAppSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');
}
