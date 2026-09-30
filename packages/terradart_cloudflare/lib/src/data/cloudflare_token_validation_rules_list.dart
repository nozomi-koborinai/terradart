// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': ?action,
           'enabled': ?enabled,
           'host': ?host,
           'hostname': ?hostname,
           'max_items': ?maxItems,
           'rule_id': ?ruleId,
           'token_configuration': ?tokenConfiguration,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareTokenValidationRulesListSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleIdRef => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `token_configuration` attribute.
  TfRef<List<String>> get tokenConfigurationRef =>
      TfRef.attribute<List<String>>(this, 'token_configuration');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
