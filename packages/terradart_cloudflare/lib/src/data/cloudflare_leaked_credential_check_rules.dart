// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_leaked_credential_check_rules`.
const Set<String> _cloudflareLeakedCredentialCheckRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_leaked_credential_check_rules`.
///
/// Accepted Permissions
///
/// - `Account WAF Read` - `Account WAF Write` - `Zone WAF Read` - `Zone WAF
/// Write`
final class DataCloudflareLeakedCredentialCheckRules extends Data {
  static const String tfType = 'cloudflare_leaked_credential_check_rules';

  DataCloudflareLeakedCredentialCheckRules({
    required super.localName,
    TfArg<num>? maxItems,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'max_items': ?maxItems, 'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareLeakedCredentialCheckRulesSensitive;
}
