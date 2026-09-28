// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> accountId,
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
           'account_id': accountId,
           if (activeDeliveryMode != null)
             'active_delivery_mode': activeDeliveryMode,
           if (allowedDeliveryMode != null)
             'allowed_delivery_mode': allowedDeliveryMode,
           if (direction != null) 'direction': direction,
           if (domain != null) 'domain': domain,
           if (integrationId != null) 'integration_id': integrationId,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (search != null) 'search': search,
           if (status != null) 'status': status,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSecurityDomainsSensitive;
}
