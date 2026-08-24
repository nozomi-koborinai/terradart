// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_secrets_store_secrets`.
const Set<String> _cloudflareSecretsStoreSecretsSensitive = <String>{};

/// Factory wrapper for `cloudflare_secrets_store_secrets`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStoreSecrets extends Data {
  static const String tfType = 'cloudflare_secrets_store_secrets';

  DataCloudflareSecretsStoreSecrets({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<List<String>>? scopes,
    TfArg<String>? search,
    required TfArg<String> storeId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (scopes != null) 'scopes': scopes,
           if (search != null) 'search': search,
           'store_id': storeId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoreSecretsSensitive;
}
