// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
    if (id != null) 'id': id!.toTfJson(),
    if (provisionLicense != null)
      'provision_license': provisionLicense!.toTfJson(),
    if (serialNumber != null) 'serial_number': serialNumber!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_magic_transit_connector`.
final class CloudflareMagicTransitConnector extends Resource {
  static const String tfType = 'cloudflare_magic_transit_connector';

  CloudflareMagicTransitConnector({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? activated,
    TfArg<num>? interruptWindowDurationHours,
    TfArg<num>? interruptWindowHourOfDay,
    TfArg<String>? notes,
    TfArg<String>? timezone,
    required MagicTransitConnectorDevice device,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (activated != null) 'activated': activated,
           if (interruptWindowDurationHours != null)
             'interrupt_window_duration_hours': interruptWindowDurationHours,
           if (interruptWindowHourOfDay != null)
             'interrupt_window_hour_of_day': interruptWindowHourOfDay,
           if (notes != null) 'notes': notes,
           if (timezone != null) 'timezone': timezone,
           'device': TfArg.literal(device.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMagicTransitConnectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `license_key` attribute.
  TfRef<String> get licenseKey => TfRef.attribute<String>(this, 'license_key');
}
