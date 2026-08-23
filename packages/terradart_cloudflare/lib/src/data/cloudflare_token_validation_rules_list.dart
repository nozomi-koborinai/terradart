// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_token_validation_rules_list`.
const Set<String> _cloudflareTokenValidationRulesListSensitive = <String>{};

/// Factory wrapper for `cloudflare_token_validation_rules_list`.
///
/// Accepted Permissions
///
/// - `Account API Gateway` - `Account API Gateway Read` - `Domain API Gateway`
/// - `Domain API Gateway Read`
final class DataCloudflareTokenValidationRulesList extends Data {
  static const String tfType = 'cloudflare_token_validation_rules_list';

  DataCloudflareTokenValidationRulesList({
    required super.localName,
    TfArg<String>? action,
    TfArg<bool>? enabled,
    TfArg<String>? host,
    TfArg<String>? hostname,
    TfArg<num>? maxItems,
    TfArg<String>? ruleId,
    TfArg<List<String>>? tokenConfiguration,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (action != null) 'action': action,
           if (enabled != null) 'enabled': enabled,
           if (host != null) 'host': host,
           if (hostname != null) 'hostname': hostname,
           if (maxItems != null) 'max_items': maxItems,
           if (ruleId != null) 'rule_id': ruleId,
           if (tokenConfiguration != null)
             'token_configuration': tokenConfiguration,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareTokenValidationRulesListSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
