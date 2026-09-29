// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_email_security_domains`.
const Set<String> _cloudflareEmailSecurityDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_security_domains`.
///
/// Accepted Permissions
///
/// - `Cloud Email Security: Read` - `Cloud Email Security: Write`
final class DataCloudflareEmailSecurityDomains extends Data {
  static const String tfType = 'cloudflare_email_security_domains';

  DataCloudflareEmailSecurityDomains({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? activeDeliveryMode,
    TfArg<String>? allowedDeliveryMode,
    TfArg<String>? direction,
    TfArg<List<String>>? domain,
    TfArg<String>? integrationId,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? search,
    TfArg<String>? status,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'active_delivery_mode': ?activeDeliveryMode,
           'allowed_delivery_mode': ?allowedDeliveryMode,
           'direction': ?direction,
           'domain': ?domain,
           'integration_id': ?integrationId,
           'max_items': ?maxItems,
           'order': ?order,
           'search': ?search,
           'status': ?status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainsSensitive;
}
