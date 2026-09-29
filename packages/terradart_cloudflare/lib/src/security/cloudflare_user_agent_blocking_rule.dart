// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<UserAgentBlockingRuleConfigurationTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum UserAgentBlockingRuleConfigurationTarget implements TerraformEnum {
  ua('ua');

  const UserAgentBlockingRuleConfigurationTarget(this.terraformValue);
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
    required TfArg<String> zoneId,
    required UserAgentBlockingRuleConfiguration configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'mode': mode,
           if (paused != null) 'paused': paused,
           'zone_id': zoneId,
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
}
