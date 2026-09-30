// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? environment,
    TfArg<String>? hostname,
    TfArg<num>? maxItems,
    TfArg<String>? service,
    RefTo<CloudflareZone>? zoneId,
    TfArg<String>? zoneName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'environment': ?environment,
           'hostname': ?hostname,
           'max_items': ?maxItems,
           'service': ?service,
           'zone_id': ?zoneId?.encodeAs('id'),
           'zone_name': ?zoneName,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWorkersCustomDomainsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `environment` attribute.
  TfRef<String> get environmentRef =>
      TfRef.attribute<String>(this, 'environment');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `service` attribute.
  TfRef<String> get serviceRef => TfRef.attribute<String>(this, 'service');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneNameRef => TfRef.attribute<String>(this, 'zone_name');
}
