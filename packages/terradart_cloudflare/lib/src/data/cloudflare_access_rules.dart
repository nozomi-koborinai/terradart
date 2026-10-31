// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_access_rules`.
const Set<String> _cloudflareAccessRulesSensitive = <String>{};

/// Data Access Rules enum for `direction`.
extension type const DataAccessRulesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRulesDirection.variable(String name) : this._(TfArg.variable(name));
  DataAccessRulesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRulesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataAccessRulesDirection._(TfArgLiteral('asc'));
  static const desc = DataAccessRulesDirection._(TfArgLiteral('desc'));

  static const List<DataAccessRulesDirection> values = [asc, desc];
}

/// Data Access Rules enum for `match`.
extension type const DataAccessRulesMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRulesMatch.variable(String name) : this._(TfArg.variable(name));
  DataAccessRulesMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRulesMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataAccessRulesMatch._(TfArgLiteral('any'));
  static const all = DataAccessRulesMatch._(TfArgLiteral('all'));

  static const List<DataAccessRulesMatch> values = [any, all];
}

/// Data Access Rules enum for `mode`.
extension type const DataAccessRulesMode._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRulesMode.variable(String name) : this._(TfArg.variable(name));
  DataAccessRulesMode.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRulesMode.arg(TfArg<String> arg) : this._(arg);

  static const block = DataAccessRulesMode._(TfArgLiteral('block'));
  static const challenge = DataAccessRulesMode._(TfArgLiteral('challenge'));
  static const whitelist = DataAccessRulesMode._(TfArgLiteral('whitelist'));
  static const jsChallenge = DataAccessRulesMode._(
    TfArgLiteral('js_challenge'),
  );
  static const managedChallenge = DataAccessRulesMode._(
    TfArgLiteral('managed_challenge'),
  );

  static const List<DataAccessRulesMode> values = [
    block,
    challenge,
    whitelist,
    jsChallenge,
    managedChallenge,
  ];
}

/// Data Access Rules enum for `order`.
extension type const DataAccessRulesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRulesOrder.variable(String name) : this._(TfArg.variable(name));
  DataAccessRulesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRulesOrder.arg(TfArg<String> arg) : this._(arg);

  static const configurationTarget = DataAccessRulesOrder._(
    TfArgLiteral('configuration.target'),
  );
  static const configurationValue = DataAccessRulesOrder._(
    TfArgLiteral('configuration.value'),
  );
  static const mode = DataAccessRulesOrder._(TfArgLiteral('mode'));

  static const List<DataAccessRulesOrder> values = [
    configurationTarget,
    configurationValue,
    mode,
  ];
}

/// Typed helper for the `configuration` block of
/// `cloudflare_access_rules` (derived from provider schema).
@immutable
final class DataAccessRulesConfiguration {
  const DataAccessRulesConfiguration({this.target, this.value});

  final DataAccessRulesTarget? target;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
extension type const DataAccessRulesTarget._(TfArg<String> _)
    implements TfArg<String> {
  DataAccessRulesTarget.variable(String name) : this._(TfArg.variable(name));
  DataAccessRulesTarget.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccessRulesTarget.arg(TfArg<String> arg) : this._(arg);

  static const ip = DataAccessRulesTarget._(TfArgLiteral('ip'));
  static const ipRange = DataAccessRulesTarget._(TfArgLiteral('ip_range'));
  static const asn = DataAccessRulesTarget._(TfArgLiteral('asn'));
  static const country = DataAccessRulesTarget._(TfArgLiteral('country'));

  static const List<DataAccessRulesTarget> values = [ip, ipRange, asn, country];
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
    DataAccessRulesDirection? direction,
    DataAccessRulesMatch? match,
    TfArg<num>? maxItems,
    DataAccessRulesMode? mode,
    TfArg<String>? notes,
    DataAccessRulesOrder? order,
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
