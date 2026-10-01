// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_email_sending_subdomains`.
const Set<String> _cloudflareEmailSendingSubdomainsSensitive = <String>{};

/// Factory wrapper for `cloudflare_email_sending_subdomains`.
final class DataCloudflareEmailSendingSubdomains extends Data {
  static const String tfType = 'cloudflare_email_sending_subdomains';

  DataCloudflareEmailSendingSubdomains(
    super.localName, {
    TfArg<num>? maxItems,
    required RefTo<CloudflareZone> zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': zoneId.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareEmailSendingSubdomainsSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
