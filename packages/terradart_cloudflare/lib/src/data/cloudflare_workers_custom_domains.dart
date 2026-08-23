// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_workers_custom_domains`.
const Set<String> _cloudflareWorkersCustomDomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_workers_custom_domains`.
///
/// Accepted Permissions
///
/// - `Workers Scripts Read` - `Workers Scripts Write`
final class DataCloudflareWorkersCustomDomains extends Data {
  static const String tfType = 'cloudflare_workers_custom_domains';

  DataCloudflareWorkersCustomDomains({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? environment,
    TfArg<String>? hostname,
    TfArg<num>? maxItems,
    TfArg<String>? service,
    TfArg<String>? zoneId,
    TfArg<String>? zoneName,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (environment != null) 'environment': environment,
           if (hostname != null) 'hostname': hostname,
           if (maxItems != null) 'max_items': maxItems,
           if (service != null) 'service': service,
           if (zoneId != null) 'zone_id': zoneId,
           if (zoneName != null) 'zone_name': zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCustomDomainsSensitive;
}
