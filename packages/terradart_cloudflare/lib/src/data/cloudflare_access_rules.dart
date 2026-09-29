// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_access_rules`.
const Set<String> _cloudflareAccessRulesSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `cloudflare_access_rules` (derived from provider schema).
@immutable
final class DataAccessRulesConfiguration {
  const DataAccessRulesConfiguration({this.target, this.value});

  final TfArg<DataAccessRulesConfigurationTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum DataAccessRulesConfigurationTarget implements TerraformEnum {
  ip('ip'),
  ipRange('ip_range'),
  asn('asn'),
  country('country');

  const DataAccessRulesConfigurationTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_access_rules`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write`
final class DataCloudflareAccessRules extends Data {
  static const String tfType = 'cloudflare_access_rules';

  DataCloudflareAccessRules({
    required super.localName,
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? direction,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? mode,
    TfArg<String>? notes,
    TfArg<String>? order,
    RefTo<CloudflareZone>? zoneId,
    DataAccessRulesConfiguration? configuration,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'match': ?match,
           'max_items': ?maxItems,
           'mode': ?mode,
           'notes': ?notes,
           'order': ?order,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccessRulesSensitive;
}
