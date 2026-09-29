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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'environment': ?environment,
           'hostname': ?hostname,
           'max_items': ?maxItems,
           'service': ?service,
           'zone_id': ?zoneId,
           'zone_name': ?zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCustomDomainsSensitive;
}
