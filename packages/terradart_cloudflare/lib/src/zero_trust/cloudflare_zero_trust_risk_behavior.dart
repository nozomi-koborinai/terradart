// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> riskLevel;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'risk_level': riskLevel.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_risk_behavior`.
///
/// Accepted Permissions
///
/// - `Zero Trust Read` - `Zero Trust Write`
final class CloudflareZeroTrustRiskBehavior extends Resource {
  static const String tfType = 'cloudflare_zero_trust_risk_behavior';

  CloudflareZeroTrustRiskBehavior({
    required super.localName,
    required TfArg<String> accountId,
    required ZeroTrustRiskBehaviorBehaviors behaviors,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'behaviors': TfArg.literal(behaviors.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustRiskBehaviorSensitive;
}
