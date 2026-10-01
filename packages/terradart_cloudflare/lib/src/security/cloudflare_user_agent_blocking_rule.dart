// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_user_agent_blocking_rule`.
const Set<String> _cloudflareUserAgentBlockingRuleSensitive = <String>{};

/// User Agent Blocking Rule enum for `mode`.
enum UserAgentBlockingRuleMode implements TerraformEnum {
  block('block'),
  challenge('challenge'),
  whitelist('whitelist'),
  jsChallenge('js_challenge'),
  managedChallenge('managed_challenge');

  const UserAgentBlockingRuleMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `cloudflare_user_agent_blocking_rule` (derived from provider schema).
@immutable
final class UserAgentBlockingRuleConfiguration {
  const UserAgentBlockingRuleConfiguration({this.target, this.value});

  final TfArg<UserAgentBlockingRuleTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum UserAgentBlockingRuleTarget implements TerraformEnum {
  ua('ua');

  const UserAgentBlockingRuleTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_user_agent_blocking_rule`.
///
/// Accepted Permissions
///
/// - `Firewall Services Read` - `Firewall Services Write`
final class CloudflareUserAgentBlockingRule extends Resource {
  static const String tfType = 'cloudflare_user_agent_blocking_rule';

  CloudflareUserAgentBlockingRule({
    required super.localName,
    TfArg<String>? description,
    required TfArg<UserAgentBlockingRuleMode> mode,
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
