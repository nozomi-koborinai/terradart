// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../calls/cloudflare_calls_turn_app.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> keyId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId.encodeAs('id'), 'key_id': keyId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCallsTurnAppSensitive;

  /// A reference to the `cloudflare_calls_turn_app` this data source reads, for
  /// arguments typed `RefTo<CloudflareCallsTurnApp>`.
  RefTo<CloudflareCallsTurnApp> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');
}
