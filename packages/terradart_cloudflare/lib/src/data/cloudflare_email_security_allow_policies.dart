// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
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
           'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (isAcceptableSender != null)
             'is_acceptable_sender': isAcceptableSender,
           if (isExemptRecipient != null)
             'is_exempt_recipient': isExemptRecipient,
           if (isTrustedSender != null) 'is_trusted_sender': isTrustedSender,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (pattern != null) 'pattern': pattern,
           if (patternType != null) 'pattern_type': patternType,
           if (search != null) 'search': search,
           if (verifySender != null) 'verify_sender': verifySender,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityAllowPoliciesSensitive;
}
