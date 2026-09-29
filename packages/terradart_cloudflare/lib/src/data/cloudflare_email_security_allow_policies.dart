// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_allow_policies`.
const Set<String> _cloudflareEmailSecurityAllowPoliciesSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_allow_policies`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityAllowPolicies extends Data {
  static const String tfType = 'cloudflare_email_security_allow_policies';

  DataCloudflareEmailSecurityAllowPolicies({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? direction,
    TfArg<bool>? isAcceptableSender,
    TfArg<bool>? isExemptRecipient,
    TfArg<bool>? isTrustedSender,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? pattern,
    TfArg<String>? patternType,
    TfArg<String>? search,
    TfArg<bool>? verifySender,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'direction': ?direction,
           'is_acceptable_sender': ?isAcceptableSender,
           'is_exempt_recipient': ?isExemptRecipient,
           'is_trusted_sender': ?isTrustedSender,
           'max_items': ?maxItems,
           'order': ?order,
           'pattern': ?pattern,
           'pattern_type': ?patternType,
           'search': ?search,
           'verify_sender': ?verifySender,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityAllowPoliciesSensitive;
}
