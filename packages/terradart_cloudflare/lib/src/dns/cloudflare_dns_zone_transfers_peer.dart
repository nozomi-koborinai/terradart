// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_dns_zone_transfers_peer`.
const Set<String> _cloudflareDnsZoneTransfersPeerSensitive = <String>{};

/// Factory wrapper for `cloudflare_dns_zone_transfers_peer`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class CloudflareDnsZoneTransfersPeer extends Resource {
  static const String tfType = 'cloudflare_dns_zone_transfers_peer';

  CloudflareDnsZoneTransfersPeer({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? ip,
    TfArg<bool>? ixfrEnable,
    required TfArg<String> name,
    TfArg<num>? port,
    TfArg<String>? tsigId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'ip': ?ip,
           'ixfr_enable': ?ixfrEnable,
           'name': name,
           'port': ?port,
           'tsig_id': ?tsigId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersPeerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareDnsZoneTransfersPeer>`.
  RefTo<CloudflareDnsZoneTransfersPeer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
