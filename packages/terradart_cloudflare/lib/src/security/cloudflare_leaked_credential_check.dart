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
final class CloudflareLeakedCredentialCheck extends Resource {
  static const String tfType = 'cloudflare_leaked_credential_check';

  CloudflareLeakedCredentialCheck({
    required super.localName,
    TfArg<bool>? enabled,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {if (enabled != null) 'enabled': enabled, 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareLeakedCredentialCheckSensitive;
}
