// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_access_rule`.
const Set<String> _cloudflareAccessRuleSensitive = <String>{};

/// Access Rule enum for `mode`.
extension type const AccessRuleMode._(TfArg<String> _)
    implements TfArg<String> {
  AccessRuleMode.variable(String name) : this._(TfArg.variable(name));
  AccessRuleMode.expression(String template)
    : this._(TfArg.expression(template));
  const AccessRuleMode.arg(TfArg<String> arg) : this._(arg);

  static const block = AccessRuleMode._(TfArgLiteral('block'));
  static const challenge = AccessRuleMode._(TfArgLiteral('challenge'));
  static const whitelist = AccessRuleMode._(TfArgLiteral('whitelist'));
  static const jsChallenge = AccessRuleMode._(TfArgLiteral('js_challenge'));
  static const managedChallenge = AccessRuleMode._(
    TfArgLiteral('managed_challenge'),
  );

  static const List<AccessRuleMode> values = [
    block,
    challenge,
    whitelist,
    jsChallenge,
    managedChallenge,
  ];
}

/// Typed helper for the `configuration` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class AccessRuleConfiguration {
  const AccessRuleConfiguration({this.target, this.value});

  final AccessRuleTarget? target;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
extension type const AccessRuleTarget._(TfArg<String> _)
    implements TfArg<String> {
  AccessRuleTarget.variable(String name) : this._(TfArg.variable(name));
  AccessRuleTarget.expression(String template)
    : this._(TfArg.expression(template));
  const AccessRuleTarget.arg(TfArg<String> arg) : this._(arg);

  static const ip = AccessRuleTarget._(TfArgLiteral('ip'));
  static const ip6 = AccessRuleTarget._(TfArgLiteral('ip6'));
  static const ipRange = AccessRuleTarget._(TfArgLiteral('ip_range'));
  static const asn = AccessRuleTarget._(TfArgLiteral('asn'));
  static const country = AccessRuleTarget._(TfArgLiteral('country'));

  static const List<AccessRuleTarget> values = [ip, ip6, ipRange, asn, country];
}

/// Factory wrapper for `cloudflare_access_rule`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write`
final class CloudflareAccessRule extends Resource {
  static const String tfType = 'cloudflare_access_rule';

  CloudflareAccessRule(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    required AccessRuleMode mode,
    TfArg<String>? notes,
    RefTo<CloudflareZone>? zoneId,
    required AccessRuleConfiguration configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'mode': mode,
           'notes': ?notes,
           'zone_id': ?zoneId?.encodeAs('id'),
           'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAccessRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAccessRule>`.
  RefTo<CloudflareAccessRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_modes` attribute.
  TfRef<List<String>> get allowedModes =>
      TfRef.attribute<List<String>>(this, 'allowed_modes');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `notes` attribute.
  TfRef<String> get notes => TfRef.attribute<String>(this, 'notes');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
