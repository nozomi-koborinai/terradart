// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_secrets_stores`.
const Set<String> _cloudflareSecretsStoresSensitive = <String>{};

/// Factory wrapper for `cloudflare_secrets_stores`.
///
/// Accepted Permissions
///
/// - `Secrets Store Read` - `Secrets Store Write`
final class DataCloudflareSecretsStores extends Data {
  static const String tfType = 'cloudflare_secrets_stores';

  DataCloudflareSecretsStores({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSecretsStoresSensitive;
}
