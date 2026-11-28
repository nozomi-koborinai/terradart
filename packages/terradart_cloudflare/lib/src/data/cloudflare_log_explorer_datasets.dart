// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_log_explorer_datasets`.
const Set<String> _cloudflareLogExplorerDatasetsSensitive = <String>{};

/// Factory wrapper for `cloudflare_log_explorer_datasets`.
///
/// Accepted Permissions
///
/// - `Logs Read` - `Logs Write`
final class DataCloudflareLogExplorerDatasets extends Data {
  static const String tfType = 'cloudflare_log_explorer_datasets';

  DataCloudflareLogExplorerDatasets(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<bool>? includeZones,
    TfArg<num>? maxItems,
    RefTo<CloudflareZone>? zoneId,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'include_zones': ?includeZones,
           'max_items': ?maxItems,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLogExplorerDatasetsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `include_zones` attribute.
  TfRef<bool> get includeZones => TfRef.attribute<bool>(this, 'include_zones');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
