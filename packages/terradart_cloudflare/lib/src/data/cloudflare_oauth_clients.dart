// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_oauth_clients`.
const Set<String> _cloudflareOauthClientsSensitive = <String>{};

/// Factory wrapper for `cloudflare_oauth_clients`.
///
/// Accepted Permissions
///
/// - `OAuth Client Read`
final class DataCloudflareOauthClients extends Data {
  static const String tfType = 'cloudflare_oauth_clients';

  DataCloudflareOauthClients({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareOauthClientsSensitive;
}
