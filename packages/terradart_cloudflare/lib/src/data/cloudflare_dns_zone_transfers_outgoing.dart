// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dns/cloudflare_dns_zone_transfers_outgoing.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_dns_zone_transfers_outgoing`.
const Set<String> _cloudflareDnsZoneTransfersOutgoingSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_outgoing`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write` - `Zone Settings Read` - `Zone Settings Write` -
/// `Zone Write`
final class DataCloudflareDnsZoneTransfersOutgoing extends Data {
  static const String tfType = 'cloudflare_dns_zone_transfers_outgoing';

  DataCloudflareDnsZoneTransfersOutgoing({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareDnsZoneTransfersOutgoingSensitive;

  /// A reference to the `cloudflare_dns_zone_transfers_outgoing` this data source reads, for
  /// arguments typed `RefTo<CloudflareDnsZoneTransfersOutgoing>`.
  RefTo<CloudflareDnsZoneTransfersOutgoing> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `checked_time` attribute.
  TfRef<String> get checkedTime =>
      TfRef.attribute<String>(this, 'checked_time');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_transferred_time` attribute.
  TfRef<String> get lastTransferredTime =>
      TfRef.attribute<String>(this, 'last_transferred_time');

  /// Reference to `peers` attribute.
  TfRef<List<String>> get peers => TfRef.attribute<List<String>>(this, 'peers');

  /// Reference to `soa_serial` attribute.
  TfRef<num> get soaSerial => TfRef.attribute<num>(this, 'soa_serial');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
