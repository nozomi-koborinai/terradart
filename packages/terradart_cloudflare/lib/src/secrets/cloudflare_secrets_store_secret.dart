// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_store_secret`.
const Set<String> _cloudflareSecretsStoreSecretSensitive = <String>{'value'};

/// Factory wrapper for `cloudflare_secrets_store_secret`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class CloudflareSecretsStoreSecret extends Resource {
  static const String tfType = 'cloudflare_secrets_store_secret';

  CloudflareSecretsStoreSecret(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? comment,
    required TfArg<String> name,
    required TfArg<List<String>> scopes,
    required TfArg<String> storeId,
    required Sensitive<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'comment': ?comment,
           'name': name,
           'scopes': scopes,
           'store_id': storeId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSecretSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSecretsStoreSecret>`.
  RefTo<CloudflareSecretsStoreSecret> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeId => TfRef.attribute<String>(this, 'store_id');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
