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
final class CloudflareDnsZoneTransfersTsig extends Resource {
  static const String tfType = 'cloudflare_dns_zone_transfers_tsig';

  CloudflareDnsZoneTransfersTsig({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> algo,
    required TfArg<String> name,
    required TfArg<String> secret,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'algo': algo,
           'name': name,
           'secret': secret,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsZoneTransfersTsigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
