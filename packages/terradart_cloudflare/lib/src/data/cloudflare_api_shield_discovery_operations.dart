// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_api_shield_discovery_operations`.
const Set<String> _cloudflareApiShieldDiscoveryOperationsSensitive = <String>{};

/// Data Api Shield Discovery Operations enum for `direction`.
extension type const DataApiShieldDiscoveryOperationsDirection._(
  TfArg<String> _
) implements TfArg<String> {
  DataApiShieldDiscoveryOperationsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldDiscoveryOperationsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldDiscoveryOperationsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataApiShieldDiscoveryOperationsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataApiShieldDiscoveryOperationsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataApiShieldDiscoveryOperationsDirection> values = [
    asc,
    desc,
  ];
}

/// Data Api Shield Discovery Operations enum for `order`.
extension type const DataApiShieldDiscoveryOperationsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldDiscoveryOperationsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldDiscoveryOperationsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldDiscoveryOperationsOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const host = DataApiShieldDiscoveryOperationsOrder._(
    TfArgLiteral('host'),
  );
  static const method = DataApiShieldDiscoveryOperationsOrder._(
    TfArgLiteral('method'),
  );
  static const endpoint = DataApiShieldDiscoveryOperationsOrder._(
    TfArgLiteral('endpoint'),
  );
  static const trafficStatsRequests = DataApiShieldDiscoveryOperationsOrder._(
    TfArgLiteral('traffic_stats.requests'),
  );
  static const trafficStatsLastUpdated =
      DataApiShieldDiscoveryOperationsOrder._(
        TfArgLiteral('traffic_stats.last_updated'),
      );

  static const List<DataApiShieldDiscoveryOperationsOrder> values = [
    host,
    method,
    endpoint,
    trafficStatsRequests,
    trafficStatsLastUpdated,
  ];
}

/// Data Api Shield Discovery Operations enum for `origin`.
extension type const DataApiShieldDiscoveryOperationsOrigin._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldDiscoveryOperationsOrigin.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldDiscoveryOperationsOrigin.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldDiscoveryOperationsOrigin.arg(TfArg<String> arg)
    : this._(arg);

  static const ml = DataApiShieldDiscoveryOperationsOrigin._(
    TfArgLiteral('ML'),
  );
  static const sessionidentifier = DataApiShieldDiscoveryOperationsOrigin._(
    TfArgLiteral('SessionIdentifier'),
  );
  static const labeldiscovery = DataApiShieldDiscoveryOperationsOrigin._(
    TfArgLiteral('LabelDiscovery'),
  );

  static const List<DataApiShieldDiscoveryOperationsOrigin> values = [
    ml,
    sessionidentifier,
    labeldiscovery,
  ];
}

/// Data Api Shield Discovery Operations enum for `state`.
extension type const DataApiShieldDiscoveryOperationsState._(TfArg<String> _)
    implements TfArg<String> {
  DataApiShieldDiscoveryOperationsState.variable(String name)
    : this._(TfArg.variable(name));
  DataApiShieldDiscoveryOperationsState.expression(String template)
    : this._(TfArg.expression(template));
  const DataApiShieldDiscoveryOperationsState.arg(TfArg<String> arg)
    : this._(arg);

  static const review = DataApiShieldDiscoveryOperationsState._(
    TfArgLiteral('review'),
  );
  static const saved = DataApiShieldDiscoveryOperationsState._(
    TfArgLiteral('saved'),
  );
  static const ignored = DataApiShieldDiscoveryOperationsState._(
    TfArgLiteral('ignored'),
  );

  static const List<DataApiShieldDiscoveryOperationsState> values = [
    review,
    saved,
    ignored,
  ];
}

/// Factory wrapper for `cloudflare_api_shield_discovery_operations`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareApiShieldDiscoveryOperations extends Data {
  static const String tfType = 'cloudflare_api_shield_discovery_operations';

  DataCloudflareApiShieldDiscoveryOperations(
    super.localName, {
    TfArg<bool>? diff,
    DataApiShieldDiscoveryOperationsDirection? direction,
    TfArg<String>? endpoint,
    TfArg<List<String>>? host,
    TfArg<num>? maxItems,
    TfArg<List<String>>? method,
    DataApiShieldDiscoveryOperationsOrder? order,
    DataApiShieldDiscoveryOperationsOrigin? origin,
    DataApiShieldDiscoveryOperationsState? state,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'diff': ?diff,
           'direction': ?direction,
           'endpoint': ?endpoint,
           'host': ?host,
           'max_items': ?maxItems,
           'method': ?method,
           'order': ?order,
           'origin': ?origin,
           'state': ?state,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareApiShieldDiscoveryOperationsSensitive;

  /// Reference to `diff` attribute.
  TfRef<bool> get diff => TfRef.attribute<bool>(this, 'diff');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `host` attribute.
  TfRef<List<String>> get host => TfRef.attribute<List<String>>(this, 'host');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `method` attribute.
  TfRef<List<String>> get method =>
      TfRef.attribute<List<String>>(this, 'method');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `origin` attribute.
  TfRef<String> get origin => TfRef.attribute<String>(this, 'origin');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
