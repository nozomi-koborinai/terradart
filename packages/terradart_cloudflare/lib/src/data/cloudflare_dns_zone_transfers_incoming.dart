// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_zone_transfers_incoming`.
const Set<String> _cloudflareDnsZoneTransfersIncomingSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_incoming`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write` - `Zone Settings Read` - `Zone Settings Write` -
/// `Zone Write`
final class DataCloudflareDnsZoneTransfersIncoming extends Data {
  static const String tfType = 'cloudflare_dns_zone_transfers_incoming';

  DataCloudflareDnsZoneTransfersIncoming({
    required super.localName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareDnsZoneTransfersIncomingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `auto_refresh_seconds` attribute.
  TfRef<num> get autoRefreshSeconds =>
      TfRef.attribute<num>(this, 'auto_refresh_seconds');

  /// Reference to `checked_time` attribute.
  TfRef<String> get checkedTime =>
      TfRef.attribute<String>(this, 'checked_time');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `modified_time` attribute.
  TfRef<String> get modifiedTime =>
      TfRef.attribute<String>(this, 'modified_time');

  /// Reference to `peers` attribute.
  TfRef<List<String>> get peers => TfRef.attribute<List<String>>(this, 'peers');

  /// Reference to `soa_serial` attribute.
  TfRef<num> get soaSerial => TfRef.attribute<num>(this, 'soa_serial');
}
