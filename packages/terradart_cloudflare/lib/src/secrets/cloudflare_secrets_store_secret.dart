// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_secrets_store_secret`.
const Set<String> _cloudflareSecretsStoreSecretSensitive = <String>{'value'};

/// Factory wrapper for `cloudflare_secrets_store_secret`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class CloudflareSecretsStoreSecret extends Resource {
  static const String tfType = 'cloudflare_secrets_store_secret';

  CloudflareSecretsStoreSecret({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? comment,
    required TfArg<String> name,
    required TfArg<List<String>> scopes,
    required TfArg<String> storeId,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (comment != null) 'comment': comment,
           'name': name,
           'scopes': scopes,
           'store_id': storeId,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSecretSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `modified` attribute.
  TfRef<String> get modified => TfRef.attribute<String>(this, 'modified');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
