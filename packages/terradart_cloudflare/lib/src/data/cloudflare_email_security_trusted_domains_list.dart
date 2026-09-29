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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'direction': ?direction,
           'is_recent': ?isRecent,
           'is_similarity': ?isSimilarity,
           'max_items': ?maxItems,
           'order': ?order,
           'pattern': ?pattern,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareEmailSecurityTrustedDomainsListSensitive;
}
