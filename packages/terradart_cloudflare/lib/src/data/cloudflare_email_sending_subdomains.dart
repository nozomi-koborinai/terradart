// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_email_sending_subdomains`.
const Set<String> _cloudflareEmailSendingSubdomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_sending_subdomains`.
final class DataCloudflareEmailSendingSubdomains extends Data {
  static const String tfType = 'cloudflare_email_sending_subdomains';

  DataCloudflareEmailSendingSubdomains({
    required super.localName,
    TfArg<num>? maxItems,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (maxItems != null) 'max_items': maxItems,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSendingSubdomainsSensitive;
}
