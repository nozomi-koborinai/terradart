// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../logs/cloudflare_logpull_retention.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_logpull_retention`.
const Set<String> _cloudflareLogpullRetentionSensitive = <String>{};

/// Factory wrapper for `cloudflare_logpull_retention`.
///
/// Accepted Permissions
///
/// - `Logs Read` - `Logs Write`
final class DataCloudflareLogpullRetention extends Data {
  static const String tfType = 'cloudflare_logpull_retention';

  DataCloudflareLogpullRetention({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogpullRetentionSensitive;

  /// A reference to the `cloudflare_logpull_retention` this data source reads, for
  /// arguments typed `RefTo<CloudflareLogpullRetention>`.
  RefTo<CloudflareLogpullRetention> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `flag` attribute.
  TfRef<bool> get flag => TfRef.attribute<bool>(this, 'flag');
}
