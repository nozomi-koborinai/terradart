// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_lockdowns`.
const Set<String> _cloudflareZoneLockdownsSensitive = <String>{};

/// Factory wrapper for `cloudflare_zone_lockdowns`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class DataCloudflareZoneLockdowns extends Data {
  static const String tfType = 'cloudflare_zone_lockdowns';

  DataCloudflareZoneLockdowns({
    required super.localName,
    TfArg<String>? createdOn,
    TfArg<String>? description,
    TfArg<String>? descriptionSearch,
    TfArg<String>? ip,
    TfArg<String>? ipRangeSearch,
    TfArg<String>? ipSearch,
    TfArg<num>? maxItems,
    TfArg<String>? modifiedOn,
    TfArg<num>? priority,
    TfArg<String>? uriSearch,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'created_on': ?createdOn,
           'description': ?description,
           'description_search': ?descriptionSearch,
           'ip': ?ip,
           'ip_range_search': ?ipRangeSearch,
           'ip_search': ?ipSearch,
           'max_items': ?maxItems,
           'modified_on': ?modifiedOn,
           'priority': ?priority,
           'uri_search': ?uriSearch,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneLockdownsSensitive;

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOnRef => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `description_search` attribute.
  TfRef<String> get descriptionSearchRef =>
      TfRef.attribute<String>(this, 'description_search');

  /// Reference to `ip` attribute.
  TfRef<String> get ipRef => TfRef.attribute<String>(this, 'ip');

  /// Reference to `ip_range_search` attribute.
  TfRef<String> get ipRangeSearchRef =>
      TfRef.attribute<String>(this, 'ip_range_search');

  /// Reference to `ip_search` attribute.
  TfRef<String> get ipSearchRef => TfRef.attribute<String>(this, 'ip_search');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOnRef =>
      TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `uri_search` attribute.
  TfRef<String> get uriSearchRef => TfRef.attribute<String>(this, 'uri_search');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
