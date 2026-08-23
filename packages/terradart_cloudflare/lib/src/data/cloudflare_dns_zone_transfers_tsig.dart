// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'tsig_id': tsigId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersTsigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `algo` attribute.
  TfRef<String> get algo => TfRef.attribute<String>(this, 'algo');

  /// Reference to `secret` attribute.
  TfRef<String> get secret => TfRef.attribute<String>(this, 'secret');
}
