// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_secrets_stores`.
const Set<String> _cloudflareSecretsStoresSensitive = <String>{};

/// Factory wrapper for `cloudflare_secrets_stores`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStores extends Data {
  static const String tfType = 'cloudflare_secrets_stores';

  DataCloudflareSecretsStores(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoresSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');
}
