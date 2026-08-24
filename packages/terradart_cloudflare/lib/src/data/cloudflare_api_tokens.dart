// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_api_tokens`.
const Set<String> _cloudflareApiTokensSensitive = <String>{};

/// Factory wrapper for `cloudflare_api_tokens`.
///
/// Accepted Permissions
///
/// - `API Tokens Read` - `API Tokens Write`
final class DataCloudflareApiTokens extends Data {
  static const String tfType = 'cloudflare_api_tokens';

  DataCloudflareApiTokens({
    required super.localName,
    TfArg<String>? direction,
    TfArg<bool>? includeExpired,
    TfArg<num>? maxItems,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (direction != null) 'direction': direction,
           if (includeExpired != null) 'include_expired': includeExpired,
           if (maxItems != null) 'max_items': maxItems,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareApiTokensSensitive;
}
