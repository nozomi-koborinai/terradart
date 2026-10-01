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

  final DataAccessRuleDirection? direction;

  final DataAccessRuleMatch? match;

  final DataAccessRuleFilterMode? mode;

  final TfArg<String>? notes;

  final DataAccessRuleOrder? order;

  final DataAccessRuleConfiguration? configuration;

  @internal
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
extension type const DataAccessRuleDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRuleDirection.variable(String name) : this._(TfArg.variable(name));
  DataAccessRuleDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRuleDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataAccessRuleDirection._(TfArgLiteral('asc'));
  static const desc = DataAccessRuleDirection._(TfArgLiteral('desc'));

  static const List<DataAccessRuleDirection> values = [asc, desc];
}

/// `match` — derived from the provider schema description.
extension type const DataAccessRuleMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRuleMatch.variable(String name) : this._(TfArg.variable(name));
  DataAccessRuleMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRuleMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataAccessRuleMatch._(TfArgLiteral('any'));
  static const all = DataAccessRuleMatch._(TfArgLiteral('all'));

  static const List<DataAccessRuleMatch> values = [any, all];
}

/// `mode` — derived from the provider schema description.
extension type const DataAccessRuleFilterMode._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRuleFilterMode.variable(String name) : this._(TfArg.variable(name));
  DataAccessRuleFilterMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRuleFilterMode.arg(TfArg<String> arg) : this._(arg);

  static const block = DataAccessRuleFilterMode._(TfArgLiteral('block'));
  static const challenge = DataAccessRuleFilterMode._(
    TfArgLiteral('challenge'),
  );
  static const whitelist = DataAccessRuleFilterMode._(
    TfArgLiteral('whitelist'),
  );
  static const jsChallenge = DataAccessRuleFilterMode._(
    TfArgLiteral('js_challenge'),
  );
  static const managedChallenge = DataAccessRuleFilterMode._(
    TfArgLiteral('managed_challenge'),
  );

  static const List<DataAccessRuleFilterMode> values = [
    block,
    challenge,
    whitelist,
    jsChallenge,
    managedChallenge,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataAccessRuleOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRuleOrder.variable(String name) : this._(TfArg.variable(name));
  DataAccessRuleOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRuleOrder.arg(TfArg<String> arg) : this._(arg);

  static const configurationTarget = DataAccessRuleOrder._(
    TfArgLiteral('configuration.target'),
  );
  static const configurationValue = DataAccessRuleOrder._(
    TfArgLiteral('configuration.value'),
  );
  static const mode = DataAccessRuleOrder._(TfArgLiteral('mode'));

  static const List<DataAccessRuleOrder> values = [
    configurationTarget,
    configurationValue,
    mode,
  ];
}

/// Typed helper for the `filter.configuration` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class DataAccessRuleConfiguration {
  const DataAccessRuleConfiguration({this.target, this.value});

  final DataAccessRuleTarget? target;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
extension type const DataAccessRuleTarget._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRuleTarget.variable(String name) : this._(TfArg.variable(name));
  DataAccessRuleTarget.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRuleTarget.arg(TfArg<String> arg) : this._(arg);

  static const ip = DataAccessRuleTarget._(TfArgLiteral('ip'));
  static const ipRange = DataAccessRuleTarget._(TfArgLiteral('ip_range'));
  static const asn = DataAccessRuleTarget._(TfArgLiteral('asn'));
  static const country = DataAccessRuleTarget._(TfArgLiteral('country'));

  static const List<DataAccessRuleTarget> values = [ip, ipRange, asn, country];
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
