// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_risk_behavior`.
const Set<String> _cloudflareZeroTrustRiskBehaviorSensitive = <String>{};

/// Typed helper for the `behaviors` block of
/// `cloudflare_zero_trust_risk_behavior` (derived from provider schema).
@immutable
final class ZeroTrustRiskBehaviorBehaviors {
  const ZeroTrustRiskBehaviorBehaviors({
    required this.enabled,
    required this.riskLevel,
  });

  final TfArg<bool> enabled;

  final TfArg<ZeroTrustRiskBehaviorRiskLevel> riskLevel;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'risk_level': riskLevel.toTfJson(),
  };
}

/// `risk_level` — derived from the provider schema description.
enum ZeroTrustRiskBehaviorRiskLevel implements TerraformEnum {
  low('low'),
  medium('medium'),
  high('high');

  const ZeroTrustRiskBehaviorRiskLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_zero_trust_risk_behavior`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustRiskBehavior extends Resource {
  static const String tfType = 'cloudflare_zero_trust_risk_behavior';

  CloudflareZeroTrustRiskBehavior(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required Map<String, ZeroTrustRiskBehaviorBehaviors> behaviors,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'behaviors': TfArg.literal({
             for (final e in behaviors.entries) e.key: e.value.encode(),
           }),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustRiskBehaviorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustRiskBehavior>`.
  RefTo<CloudflareZeroTrustRiskBehavior> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');
}
