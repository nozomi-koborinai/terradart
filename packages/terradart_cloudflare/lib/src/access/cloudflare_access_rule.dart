// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_access_rule`.
const Set<String> _cloudflareAccessRuleSensitive = <String>{};

/// Access Rule enum for `mode`.
enum AccessRuleMode implements TerraformEnum {
  block('block'),
  challenge('challenge'),
  whitelist('whitelist'),
  jsChallenge('js_challenge'),
  managedChallenge('managed_challenge');

  const AccessRuleMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `cloudflare_access_rule` (derived from provider schema).
@immutable
final class AccessRuleConfiguration {
  const AccessRuleConfiguration({this.target, this.value});

  final TfArg<AccessRuleConfigurationTarget>? target;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `target` — derived from the provider schema description.
enum AccessRuleConfigurationTarget implements TerraformEnum {
  ip('ip'),
  ip6('ip6'),
  ipRange('ip_range'),
  asn('asn'),
  country('country');

  const AccessRuleConfigurationTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_access_rule`.
///
/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read` - `Account Firewall Access Rules
/// Write`
final class CloudflareAccessRule extends Resource {
  static const String tfType = 'cloudflare_access_rule';

  CloudflareAccessRule({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<AccessRuleMode> mode,
    TfArg<String>? notes,
    TfArg<String>? zoneId,
    required AccessRuleConfiguration configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'mode': mode,
           if (notes != null) 'notes': notes,
           if (zoneId != null) 'zone_id': zoneId,
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
}
