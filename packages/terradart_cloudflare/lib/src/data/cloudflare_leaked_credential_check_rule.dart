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
final class DataCloudflareLeakedCredentialCheckRule extends Data {
  static const String tfType = 'cloudflare_leaked_credential_check_rule';

  DataCloudflareLeakedCredentialCheckRule({
    required super.localName,
    required TfArg<String> detectionId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detection_id': detectionId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLeakedCredentialCheckRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
