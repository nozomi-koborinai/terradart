// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_calls_turn_app`.
const Set<String> _cloudflareCallsTurnAppSensitive = <String>{'key'};

/// Factory wrapper for `cloudflare_calls_turn_app`.
///
/// Accepted Permissions
///
/// - `Calls Read` - `Calls Write`
final class CloudflareCallsTurnApp extends Resource {
  static const String tfType = 'cloudflare_calls_turn_app';

  CloudflareCallsTurnApp(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? keyId,
    TfArg<String>? name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'key_id': ?keyId,
           'name': ?name,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCallsTurnAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCallsTurnApp>`.
  RefTo<CloudflareCallsTurnApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');
}
