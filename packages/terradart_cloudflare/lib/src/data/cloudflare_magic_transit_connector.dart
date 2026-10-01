// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../magic/cloudflare_magic_transit_connector.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_connector`.
const Set<String> _cloudflareMagicTransitConnectorSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_magic_transit_connector` (derived from provider schema).
@immutable
final class DataMagicTransitConnectorFilter {
  const DataMagicTransitConnectorFilter({this.deviceType});

  final TfArg<DataMagicTransitConnectorDeviceType>? deviceType;

  Map<String, Object?> encode() => {'device_type': ?deviceType?.toTfJson()};
}

/// `device_type` — derived from the provider schema description.
enum DataMagicTransitConnectorDeviceType implements TerraformEnum {
  managed('MANAGED'),
  licensed('LICENSED');

  const DataMagicTransitConnectorDeviceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_magic_transit_connector`.
///
/// Accepted Permissions
///
/// - `Magic WAN Read` - `Magic WAN Write`
final class DataCloudflareMagicTransitConnector extends Data {
  static const String tfType = 'cloudflare_magic_transit_connector';

  DataCloudflareMagicTransitConnector(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? connectorId,
    DataMagicTransitConnectorFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'connector_id': ?connectorId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorSensitive;

  /// A reference to the `cloudflare_magic_transit_connector` this data source reads, for
  /// arguments typed `RefTo<CloudflareMagicTransitConnector>`.
  RefTo<CloudflareMagicTransitConnector> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `connector_id` attribute.
  TfRef<String> get connectorId =>
      TfRef.attribute<String>(this, 'connector_id');
}
