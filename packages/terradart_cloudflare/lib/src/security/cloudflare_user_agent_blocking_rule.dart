// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_user_agent_blocking_rule`.
const Set<String> _cloudflareUserAgentBlockingRuleSensitive = <String>{};

/// User Agent Blocking Rule enum for `mode`.
extension type const UserAgentBlockingRuleMode._(TfArg<String> _)
    implements TfArg<String> {
  UserAgentBlockingRuleMode.variable(String name)
    : this._(TfArg.variable(name));
  UserAgentBlockingRuleMode.expression(String template)
    : this._(TfArg.expression(template));
  const UserAgentBlockingRuleMode.arg(TfArg<String> arg) : this._(arg);

  static const block = UserAgentBlockingRuleMode._(TfArgLiteral('block'));
  static const challenge = UserAgentBlockingRuleMode._(
    TfArgLiteral('challenge'),
  );
  static const whitelist = UserAgentBlockingRuleMode._(
    TfArgLiteral('whitelist'),
  );
  static const jsChallenge = UserAgentBlockingRuleMode._(
    TfArgLiteral('js_challenge'),
  );
  static const managedChallenge = UserAgentBlockingRuleMode._(
    TfArgLiteral('managed_challenge'),
  );

  static const List<UserAgentBlockingRuleMode> values = [
    block,
    challenge,
    whitelist,
    jsChallenge,
    managedChallenge,
  ];
}

/// Typed helper for the `configuration` block of
/// `cloudflare_user_agent_blocking_rule` (derived from provider schema).
@immutable
final class UserAgentBlockingRuleConfiguration {
  const UserAgentBlockingRuleConfiguration({this.target, this.value});

  final UserAgentBlockingRuleTarget? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
extension type const UserAgentBlockingRuleTarget._(TfArg<String> _)
    implements TfArg<String> {
  UserAgentBlockingRuleTarget.variable(String name)
    : this._(TfArg.variable(name));
  UserAgentBlockingRuleTarget.expression(String template)
    : this._(TfArg.expression(template));
  const UserAgentBlockingRuleTarget.arg(TfArg<String> arg) : this._(arg);

  static const ua = UserAgentBlockingRuleTarget._(TfArgLiteral('ua'));

  static const List<UserAgentBlockingRuleTarget> values = [ua];
}

/// Factory wrapper for `cloudflare_user_agent_blocking_rule`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareUserAgentBlockingRule extends Resource {
  static const String tfType = 'cloudflare_user_agent_blocking_rule';

  CloudflareUserAgentBlockingRule(
    super.localName, {
    TfArg<String>? description,
    required UserAgentBlockingRuleMode mode,
    TfArg<bool>? paused,
    required RefTo<CloudflareZone> zoneId,
    required UserAgentBlockingRuleConfiguration configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'mode': mode,
           'paused': ?paused,
           'zone_id': zoneId.encodeAs('id'),
           'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareUserAgentBlockingRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareUserAgentBlockingRule>`.
  RefTo<CloudflareUserAgentBlockingRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
