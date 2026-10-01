// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../access/cloudflare_access_rule.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_access_rule`.
const Set<String> _cloudflareAccessRuleSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class DataAccessRuleFilter {
  const DataAccessRuleFilter({
    this.direction,
    this.match,
    this.mode,
    this.notes,
    this.order,
    this.configuration,
  });

  final TfArg<DataAccessRuleDirection>? direction;

  final TfArg<DataAccessRuleMatch>? match;

  final TfArg<DataAccessRuleFilterMode>? mode;

  final TfArg<String>? notes;

  final TfArg<DataAccessRuleOrder>? order;

  final DataAccessRuleConfiguration? configuration;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'match': ?match?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'notes': ?notes?.toTfJson(),
    'order': ?order?.toTfJson(),
    'configuration': ?configuration?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataAccessRuleDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataAccessRuleDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match` — derived from the provider schema description.
enum DataAccessRuleMatch implements TerraformEnum {
  any('any'),
  all('all');

  const DataAccessRuleMatch(this.terraformValue);
  @override
  final String terraformValue;
}

/// `mode` — derived from the provider schema description.
enum DataAccessRuleFilterMode implements TerraformEnum {
  block('block'),
  challenge('challenge'),
  whitelist('whitelist'),
  jsChallenge('js_challenge'),
  managedChallenge('managed_challenge');

  const DataAccessRuleFilterMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataAccessRuleOrder implements TerraformEnum {
  configurationTarget('configuration.target'),
  configurationValue('configuration.value'),
  mode('mode');

  const DataAccessRuleOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `filter.configuration` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class DataAccessRuleConfiguration {
  const DataAccessRuleConfiguration({this.target, this.value});

  final TfArg<DataAccessRuleTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum DataAccessRuleTarget implements TerraformEnum {
  ip('ip'),
  ipRange('ip_range'),
  asn('asn'),
  country('country');

  const DataAccessRuleTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_access_rule`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write`
final class DataCloudflareAccessRule extends Data {
  static const String tfType = 'cloudflare_access_rule';

  DataCloudflareAccessRule(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? ruleId,
    RefTo<CloudflareZone>? zoneId,
    DataAccessRuleFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'rule_id': ?ruleId,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccessRuleSensitive;

  /// A reference to the `cloudflare_access_rule` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccessRule>`.
  RefTo<CloudflareAccessRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_modes` attribute.
  TfRef<List<String>> get allowedModes =>
      TfRef.attribute<List<String>>(this, 'allowed_modes');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `rule_id` attribute.
  TfRef<String> get ruleId => TfRef.attribute<String>(this, 'rule_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
