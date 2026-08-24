// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_magic_transit_connector`.
const Set<String> _cloudflareMagicTransitConnectorSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_magic_transit_connector` (derived from provider schema).
@immutable
final class DataMagicTransitConnectorFilter {
  const DataMagicTransitConnectorFilter({this.deviceType});

  final TfArg<String>? deviceType;

  Map<String, Object?> encode() => {
    if (deviceType != null) 'device_type': deviceType!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_connector`.
///
/// Accepted Permissions
///
/// - `Magic WAN Read` - `Magic WAN Write`
final class DataCloudflareMagicTransitConnector extends Data {
  static const String tfType = 'cloudflare_magic_transit_connector';

  DataCloudflareMagicTransitConnector({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? connectorId,
    DataMagicTransitConnectorFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (connectorId != null) 'connector_id': connectorId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated` attribute.
  TfRef<bool> get activated => TfRef.attribute<bool>(this, 'activated');

  /// Reference to `interrupt_window_days_of_week` attribute.
  TfRef<List<String>> get interruptWindowDaysOfWeek =>
      TfRef.attribute<List<String>>(this, 'interrupt_window_days_of_week');

  /// Reference to `interrupt_window_duration_hours` attribute.
  TfRef<num> get interruptWindowDurationHours =>
      TfRef.attribute<num>(this, 'interrupt_window_duration_hours');

  /// Reference to `interrupt_window_embargo_dates` attribute.
  TfRef<List<String>> get interruptWindowEmbargoDates =>
      TfRef.attribute<List<String>>(this, 'interrupt_window_embargo_dates');

  /// Reference to `interrupt_window_hour_of_day` attribute.
  TfRef<num> get interruptWindowHourOfDay =>
      TfRef.attribute<num>(this, 'interrupt_window_hour_of_day');

  /// Reference to `last_heartbeat` attribute.
  TfRef<String> get lastHeartbeat =>
      TfRef.attribute<String>(this, 'last_heartbeat');

  /// Reference to `last_seen_version` attribute.
  TfRef<String> get lastSeenVersion =>
      TfRef.attribute<String>(this, 'last_seen_version');

  /// Reference to `last_updated` attribute.
  TfRef<String> get lastUpdated =>
      TfRef.attribute<String>(this, 'last_updated');

  /// Reference to `license_key` attribute.
  TfRef<String> get licenseKey => TfRef.attribute<String>(this, 'license_key');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezone => TfRef.attribute<String>(this, 'timezone');
}
