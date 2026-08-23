// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_zone_transfers_peer`.
const Set<String> _cloudflareDnsZoneTransfersPeerSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_peer`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class DataCloudflareDnsZoneTransfersPeer extends Data {
  static const String tfType = 'cloudflare_dns_zone_transfers_peer';

  DataCloudflareDnsZoneTransfersPeer({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> peerId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'peer_id': peerId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersPeerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ip` attribute.
  TfRef<String> get ip => TfRef.attribute<String>(this, 'ip');

  /// Reference to `ixfr_enable` attribute.
  TfRef<bool> get ixfrEnable => TfRef.attribute<bool>(this, 'ixfr_enable');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `tsig_id` attribute.
  TfRef<String> get tsigId => TfRef.attribute<String>(this, 'tsig_id');
}
