// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_gateway_logging`.
const Set<String> _cloudflareZeroTrustGatewayLoggingSensitive = <String>{};

/// Typed helper for the `settings_by_rule_type` block of
/// `cloudflare_zero_trust_gateway_logging` (derived from provider schema).
@immutable
final class ZeroTrustGatewayLoggingSettingsByRuleType {
  const ZeroTrustGatewayLoggingSettingsByRuleType({
    this.dns,
    this.http,
    this.l4,
  });

  final ZeroTrustGatewayLoggingSettingsByRuleTypeDns? dns;

  final ZeroTrustGatewayLoggingSettingsByRuleTypeHttp? http;

  final ZeroTrustGatewayLoggingSettingsByRuleTypeL4? l4;

  Map<String, Object?> encode() => {
    if (dns != null) 'dns': dns!.encode(),
    if (http != null) 'http': http!.encode(),
    if (l4 != null) 'l4': l4!.encode(),
  };
}

/// Typed helper for the `settings_by_rule_type.dns` block of
/// `cloudflare_zero_trust_gateway_logging` (derived from provider schema).
@immutable
final class ZeroTrustGatewayLoggingSettingsByRuleTypeDns {
  const ZeroTrustGatewayLoggingSettingsByRuleTypeDns({
    this.logAll,
    this.logBlocks,
  });

  final TfArg<bool>? logAll;

  final TfArg<bool>? logBlocks;

  Map<String, Object?> encode() => {
    if (logAll != null) 'log_all': logAll!.toTfJson(),
    if (logBlocks != null) 'log_blocks': logBlocks!.toTfJson(),
  };
}

/// Typed helper for the `settings_by_rule_type.http` block of
/// `cloudflare_zero_trust_gateway_logging` (derived from provider schema).
@immutable
final class ZeroTrustGatewayLoggingSettingsByRuleTypeHttp {
  const ZeroTrustGatewayLoggingSettingsByRuleTypeHttp({
    this.logAll,
    this.logBlocks,
  });

  final TfArg<bool>? logAll;

  final TfArg<bool>? logBlocks;

  Map<String, Object?> encode() => {
    if (logAll != null) 'log_all': logAll!.toTfJson(),
    if (logBlocks != null) 'log_blocks': logBlocks!.toTfJson(),
  };
}

/// Typed helper for the `settings_by_rule_type.l4` block of
/// `cloudflare_zero_trust_gateway_logging` (derived from provider schema).
@immutable
final class ZeroTrustGatewayLoggingSettingsByRuleTypeL4 {
  const ZeroTrustGatewayLoggingSettingsByRuleTypeL4({
    this.logAll,
    this.logBlocks,
  });

  final TfArg<bool>? logAll;

  final TfArg<bool>? logBlocks;

  Map<String, Object?> encode() => {
    if (logAll != null) 'log_all': logAll!.toTfJson(),
    if (logBlocks != null) 'log_blocks': logBlocks!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_gateway_logging`.
final class CloudflareZeroTrustGatewayLogging extends Resource {
  static const String tfType = 'cloudflare_zero_trust_gateway_logging';

  CloudflareZeroTrustGatewayLogging({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? redactPii,
    ZeroTrustGatewayLoggingSettingsByRuleType? settingsByRuleType,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (redactPii != null) 'redact_pii': redactPii,
           if (settingsByRuleType != null)
             'settings_by_rule_type': TfArg.literal(
               settingsByRuleType.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustGatewayLoggingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
