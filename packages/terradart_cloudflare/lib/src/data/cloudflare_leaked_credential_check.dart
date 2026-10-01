// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../security/cloudflare_leaked_credential_check.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_leaked_credential_check`.
const Set<String> _cloudflareLeakedCredentialCheckSensitive = <String>{};

/// Factory wrapper for `cloudflare_leaked_credential_check`.
///
/// Accepted Permissions
///
/// - `Account WAF Read` - `Account WAF Write` - `Zone WAF Read` - `Zone WAF
/// Write`
final class DataCloudflareLeakedCredentialCheck extends Data {
  static const String tfType = 'cloudflare_leaked_credential_check';

  DataCloudflareLeakedCredentialCheck({
    required super.localName,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLeakedCredentialCheckSensitive;

  /// A reference to the `cloudflare_leaked_credential_check` this data source reads, for
  /// arguments typed `RefTo<CloudflareLeakedCredentialCheck>`.
  RefTo<CloudflareLeakedCredentialCheck> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
