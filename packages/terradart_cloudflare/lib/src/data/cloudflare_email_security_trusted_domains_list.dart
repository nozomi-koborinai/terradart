// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_security_trusted_domains_list`.
const Set<String> _cloudflareEmailSecurityTrustedDomainsListSensitive =
    <String>{};

/// Factory wrapper for `cloudflare_email_security_trusted_domains_list`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityTrustedDomainsList extends Data {
  static const String tfType = 'cloudflare_email_security_trusted_domains_list';

  DataCloudflareEmailSecurityTrustedDomainsList({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<bool>? isRecent,
    TfArg<bool>? isSimilarity,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? pattern,
    TfArg<String>? search,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (direction != null) 'direction': direction,
           if (isRecent != null) 'is_recent': isRecent,
           if (isSimilarity != null) 'is_similarity': isSimilarity,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (pattern != null) 'pattern': pattern,
           if (search != null) 'search': search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityTrustedDomainsListSensitive;
}
