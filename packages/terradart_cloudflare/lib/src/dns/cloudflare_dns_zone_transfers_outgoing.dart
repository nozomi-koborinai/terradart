// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_dns_zone_transfers_outgoing`.
const Set<String> _cloudflareDnsZoneTransfersOutgoingSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_outgoing`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write` - `Zone Settings Read` - `Zone Settings Write` -
/// `Zone Write`
final class CloudflareDnsZoneTransfersOutgoing extends Resource {
  static const String tfType = 'cloudflare_dns_zone_transfers_outgoing';

  CloudflareDnsZoneTransfersOutgoing({
    required super.localName,
    required TfArg<String> name,
    required TfArg<List<String>> peers,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'peers': peers,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareDnsZoneTransfersOutgoingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareDnsZoneTransfersOutgoing>`.
  RefTo<CloudflareDnsZoneTransfersOutgoing> get ref => RefTo.of(this);

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

  /// Reference to `soa_serial` attribute.
  TfRef<num> get soaSerial => TfRef.attribute<num>(this, 'soa_serial');

  /// Reference to `peers` attribute.
  TfRef<List<String>> get peers => TfRef.attribute<List<String>>(this, 'peers');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
