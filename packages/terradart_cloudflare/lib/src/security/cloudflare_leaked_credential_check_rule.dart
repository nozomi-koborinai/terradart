// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_leaked_credential_check_rule`.
const Set<String> _cloudflareLeakedCredentialCheckRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_leaked_credential_check_rule`.
///
/// Accepted Permissions
///
/// - `Account WAF Read` - `Account WAF Write` - `Zone WAF Read` - `Zone WAF
/// Write`
final class CloudflareLeakedCredentialCheckRule extends Resource {
  static const String tfType = 'cloudflare_leaked_credential_check_rule';

  CloudflareLeakedCredentialCheckRule({
    required super.localName,
    TfArg<String>? password,
    TfArg<String>? username,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (password != null) 'password': password,
           if (username != null) 'username': username,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLeakedCredentialCheckRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
