// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_magic_transit_connector`.
const Set<String> _cloudflareMagicTransitConnectorSensitive = <String>{
  'license_key',
};

/// Typed helper for the `device` block of
/// `cloudflare_magic_transit_connector` (derived from provider schema).
@immutable
final class MagicTransitConnectorDevice {
  const MagicTransitConnectorDevice({
    this.id,
    this.provisionLicense,
    this.serialNumber,
  });

  final TfArg<String>? id;

  final TfArg<bool>? provisionLicense;

  final TfArg<String>? serialNumber;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'provision_license': ?provisionLicense?.toTfJson(),
    'serial_number': ?serialNumber?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_connector`.
final class CloudflareMagicTransitConnector extends Resource {
  static const String tfType = 'cloudflare_magic_transit_connector';

  CloudflareMagicTransitConnector({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? activated,
    TfArg<num>? interruptWindowDurationHours,
    TfArg<num>? interruptWindowHourOfDay,
    TfArg<String>? notes,
    TfArg<String>? timezone,
    required MagicTransitConnectorDevice device,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'activated': ?activated,
           'interrupt_window_duration_hours': ?interruptWindowDurationHours,
           'interrupt_window_hour_of_day': ?interruptWindowHourOfDay,
           'notes': ?notes,
           'timezone': ?timezone,
           'device': TfArg.literal(device.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareMagicTransitConnector>`.
  RefTo<CloudflareMagicTransitConnector> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `license_key` attribute.
  TfRef<String> get licenseKey => TfRef.attribute<String>(this, 'license_key');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `activated` attribute.
  TfRef<bool> get activatedRef => TfRef.attribute<bool>(this, 'activated');

  /// Reference to `interrupt_window_duration_hours` attribute.
  TfRef<num> get interruptWindowDurationHoursRef =>
      TfRef.attribute<num>(this, 'interrupt_window_duration_hours');

  /// Reference to `interrupt_window_hour_of_day` attribute.
  TfRef<num> get interruptWindowHourOfDayRef =>
      TfRef.attribute<num>(this, 'interrupt_window_hour_of_day');

  /// Reference to `notes` attribute.
  TfRef<String> get notesRef => TfRef.attribute<String>(this, 'notes');

  /// Reference to `timezone` attribute.
  TfRef<String> get timezoneRef => TfRef.attribute<String>(this, 'timezone');
}
