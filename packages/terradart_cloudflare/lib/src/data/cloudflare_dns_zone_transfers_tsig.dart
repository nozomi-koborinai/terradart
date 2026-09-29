// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dns/cloudflare_dns_zone_transfers_tsig.dart';

/// Sensitive field paths for `cloudflare_dns_zone_transfers_tsig`.
const Set<String> _cloudflareDnsZoneTransfersTsigSensitive = <String>{'secret'};

/// Factory wrapper for `cloudflare_dns_zone_transfers_tsig`.
///
/// Accepted Permissions
///
/// - `Account Settings Read` - `Account Settings Write`
final class DataCloudflareDnsZoneTransfersTsig extends Data {
  static const String tfType = 'cloudflare_dns_zone_transfers_tsig';

  DataCloudflareDnsZoneTransfersTsig({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> tsigId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': ?accountId, 'tsig_id': tsigId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersTsigSensitive;

  /// A reference to the `cloudflare_dns_zone_transfers_tsig` this data source reads, for
  /// arguments typed `RefTo<CloudflareDnsZoneTransfersTsig>`.
  RefTo<CloudflareDnsZoneTransfersTsig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `algo` attribute.
  TfRef<String> get algo => TfRef.attribute<String>(this, 'algo');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');
}
