// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLeakedCredentialCheckSensitive;

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');
}
