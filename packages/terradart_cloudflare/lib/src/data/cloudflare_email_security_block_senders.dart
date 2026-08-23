// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_block_senders`.
const Set<String> _cloudflareEmailSecurityBlockSendersSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_block_senders`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityBlockSenders extends Data {
  static const String tfType = 'cloudflare_email_security_block_senders';

  DataCloudflareEmailSecurityBlockSenders({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? pattern,
    TfArg<String>? patternType,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (pattern != null) 'pattern': pattern,
           if (patternType != null) 'pattern_type': patternType,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSendersSensitive;
}
