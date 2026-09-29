// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../access/cloudflare_access_rule.dart';

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

  final TfArg<DataAccessRuleFilterDirection>? direction;

  final TfArg<DataAccessRuleFilterMatch>? match;

  final TfArg<DataAccessRuleFilterMode>? mode;

  final TfArg<String>? notes;

  final TfArg<DataAccessRuleFilterOrder>? order;

  final DataAccessRuleFilterConfiguration? configuration;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (match != null) 'match': match!.toTfJson(),
    if (mode != null) 'mode': mode!.toTfJson(),
    if (notes != null) 'notes': notes!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (configuration != null) 'configuration': configuration!.encode(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataAccessRuleFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataAccessRuleFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match` — derived from the provider schema description.
enum DataAccessRuleFilterMatch implements TerraformEnum {
  any('any'),
  all('all');

  const DataAccessRuleFilterMatch(this.terraformValue);
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
enum DataAccessRuleFilterOrder implements TerraformEnum {
  configurationTarget('configuration.target'),
  configurationValue('configuration.value'),
  mode('mode');

  const DataAccessRuleFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `filter.configuration` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class DataAccessRuleFilterConfiguration {
  const DataAccessRuleFilterConfiguration({this.target, this.value});

  final TfArg<DataAccessRuleFilterConfigurationTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum DataAccessRuleFilterConfigurationTarget implements TerraformEnum {
  ip('ip'),
  ipRange('ip_range'),
  asn('asn'),
  country('country');

  const DataAccessRuleFilterConfigurationTarget(this.terraformValue);
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

  DataCloudflareAccessRule({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? ruleId,
    TfArg<String>? zoneId,
    DataAccessRuleFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (ruleId != null) 'rule_id': ruleId,
           if (zoneId != null) 'zone_id': zoneId,
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
}
