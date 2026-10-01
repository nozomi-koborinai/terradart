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

  final TfArg<DataAccessRulesTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum DataAccessRulesTarget implements TerraformEnum {
  ip('ip'),
  ipRange('ip_range'),
  asn('asn'),
  country('country');

  const DataAccessRulesTarget(this.terraformValue);
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

  DataCloudflareAccessRules(
    super.localName, {
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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
