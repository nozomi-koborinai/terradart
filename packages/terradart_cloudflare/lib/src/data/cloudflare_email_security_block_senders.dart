// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? direction,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? pattern,
    TfArg<String>? patternType,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'max_items': ?maxItems,
           'order': ?order,
           'pattern': ?pattern,
           'pattern_type': ?patternType,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityBlockSendersSensitive;
}
