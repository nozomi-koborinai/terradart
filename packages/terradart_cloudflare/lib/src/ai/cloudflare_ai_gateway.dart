// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_ai_gateway`.
const Set<String> _cloudflareAiGatewaySensitive = <String>{};

/// Typed helper for the `dlp` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayDlp {
  const AiGatewayDlp({
    this.action,
    required this.enabled,
    this.profiles,
    this.policies,
  });

  final TfArg<String>? action;

  final TfArg<bool> enabled;

  final TfArg<List<Object?>>? profiles;

  final List<AiGatewayDlpPolicies>? policies;

  Map<String, Object?> encode() => {
    if (action != null) 'action': action!.toTfJson(),
    'enabled': enabled.toTfJson(),
    if (profiles != null) 'profiles': profiles!.toTfJson(),
    if (policies != null) 'policies': [for (final e in policies!) e.encode()],
  };
}

/// Typed helper for the `dlp.policies` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayDlpPolicies {
  const AiGatewayDlpPolicies({
    required this.action,
    required this.check,
    required this.enabled,
    required this.id,
    required this.profiles,
  });

  final TfArg<String> action;

  final TfArg<List<Object?>> check;

  final TfArg<bool> enabled;

  final TfArg<String> id;

  final TfArg<List<Object?>> profiles;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'check': check.toTfJson(),
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    'profiles': profiles.toTfJson(),
  };
}

/// Typed helper for the `guardrails` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayGuardrails {
  const AiGatewayGuardrails({required this.prompt, required this.response});

  final AiGatewayGuardrailsPrompt prompt;

  final AiGatewayGuardrailsResponse response;

  Map<String, Object?> encode() => {
    'prompt': prompt.encode(),
    'response': response.encode(),
  };
}

/// Typed helper for the `guardrails.prompt` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayGuardrailsPrompt {
  const AiGatewayGuardrailsPrompt({
    this.p1,
    this.s1,
    this.s10,
    this.s11,
    this.s12,
    this.s13,
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.s6,
    this.s7,
    this.s8,
    this.s9,
  });

  final TfArg<String>? p1;

  final TfArg<String>? s1;

  final TfArg<String>? s10;

  final TfArg<String>? s11;

  final TfArg<String>? s12;

  final TfArg<String>? s13;

  final TfArg<String>? s2;

  final TfArg<String>? s3;

  final TfArg<String>? s4;

  final TfArg<String>? s5;

  final TfArg<String>? s6;

  final TfArg<String>? s7;

  final TfArg<String>? s8;

  final TfArg<String>? s9;

  Map<String, Object?> encode() => {
    if (p1 != null) 'p1': p1!.toTfJson(),
    if (s1 != null) 's1': s1!.toTfJson(),
    if (s10 != null) 's10': s10!.toTfJson(),
    if (s11 != null) 's11': s11!.toTfJson(),
    if (s12 != null) 's12': s12!.toTfJson(),
    if (s13 != null) 's13': s13!.toTfJson(),
    if (s2 != null) 's2': s2!.toTfJson(),
    if (s3 != null) 's3': s3!.toTfJson(),
    if (s4 != null) 's4': s4!.toTfJson(),
    if (s5 != null) 's5': s5!.toTfJson(),
    if (s6 != null) 's6': s6!.toTfJson(),
    if (s7 != null) 's7': s7!.toTfJson(),
    if (s8 != null) 's8': s8!.toTfJson(),
    if (s9 != null) 's9': s9!.toTfJson(),
  };
}

/// Typed helper for the `guardrails.response` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayGuardrailsResponse {
  const AiGatewayGuardrailsResponse({
    this.p1,
    this.s1,
    this.s10,
    this.s11,
    this.s12,
    this.s13,
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.s6,
    this.s7,
    this.s8,
    this.s9,
  });

  final TfArg<String>? p1;

  final TfArg<String>? s1;

  final TfArg<String>? s10;

  final TfArg<String>? s11;

  final TfArg<String>? s12;

  final TfArg<String>? s13;

  final TfArg<String>? s2;

  final TfArg<String>? s3;

  final TfArg<String>? s4;

  final TfArg<String>? s5;

  final TfArg<String>? s6;

  final TfArg<String>? s7;

  final TfArg<String>? s8;

  final TfArg<String>? s9;

  Map<String, Object?> encode() => {
    if (p1 != null) 'p1': p1!.toTfJson(),
    if (s1 != null) 's1': s1!.toTfJson(),
    if (s10 != null) 's10': s10!.toTfJson(),
    if (s11 != null) 's11': s11!.toTfJson(),
    if (s12 != null) 's12': s12!.toTfJson(),
    if (s13 != null) 's13': s13!.toTfJson(),
    if (s2 != null) 's2': s2!.toTfJson(),
    if (s3 != null) 's3': s3!.toTfJson(),
    if (s4 != null) 's4': s4!.toTfJson(),
    if (s5 != null) 's5': s5!.toTfJson(),
    if (s6 != null) 's6': s6!.toTfJson(),
    if (s7 != null) 's7': s7!.toTfJson(),
    if (s8 != null) 's8': s8!.toTfJson(),
    if (s9 != null) 's9': s9!.toTfJson(),
  };
}

/// Typed helper for the `otel` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayOtel {
  const AiGatewayOtel({
    this.authorization,
    this.contentType,
    required this.headers,
    required this.url,
  });

  final TfArg<String>? authorization;

  final TfArg<String>? contentType;

  final TfArg<Map<String, String>> headers;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    if (authorization != null) 'authorization': authorization!.toTfJson(),
    if (contentType != null) 'content_type': contentType!.toTfJson(),
    'headers': headers.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// Typed helper for the `spend_limits` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimits {
  const AiGatewaySpendLimits({this.enabled, this.rules});

  final TfArg<bool>? enabled;

  final List<AiGatewaySpendLimitsRules>? rules;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `spend_limits.rules` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRules {
  const AiGatewaySpendLimitsRules({
    this.enabled,
    this.id,
    required this.limit,
    required this.limitType,
    this.technique,
    required this.window,
    this.aiGatewayProvider,
    this.metadata,
    this.model,
  });

  final TfArg<bool>? enabled;

  final TfArg<String>? id;

  final TfArg<num> limit;

  final TfArg<String> limitType;

  final TfArg<String>? technique;

  final TfArg<num> window;

  final AiGatewaySpendLimitsRulesAiGatewayProvider? aiGatewayProvider;

  final AiGatewaySpendLimitsRulesMetadata? metadata;

  final AiGatewaySpendLimitsRulesModel? model;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'limit': limit.toTfJson(),
    'limit_type': limitType.toTfJson(),
    if (technique != null) 'technique': technique!.toTfJson(),
    'window': window.toTfJson(),
    if (aiGatewayProvider != null)
      'ai_gateway_provider': aiGatewayProvider!.encode(),
    if (metadata != null) 'metadata': metadata!.encode(),
    if (model != null) 'model': model!.encode(),
  };
}

/// Typed helper for the `spend_limits.rules.ai_gateway_provider` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRulesAiGatewayProvider {
  const AiGatewaySpendLimitsRulesAiGatewayProvider({
    required this.mode,
    required this.values,
  });

  final TfArg<String> mode;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `spend_limits.rules.metadata` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRulesMetadata {
  const AiGatewaySpendLimitsRulesMetadata({required this.mode, this.values});

  final TfArg<String> mode;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `spend_limits.rules.model` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRulesModel {
  const AiGatewaySpendLimitsRulesModel({
    required this.mode,
    required this.values,
  });

  final TfArg<String> mode;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Typed helper for the `stripe` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayStripe {
  const AiGatewayStripe({
    required this.authorization,
    required this.usageEvents,
  });

  final TfArg<String> authorization;

  final List<AiGatewayStripeUsageEvents> usageEvents;

  Map<String, Object?> encode() => {
    'authorization': authorization.toTfJson(),
    'usage_events': [for (final e in usageEvents) e.encode()],
  };
}

/// Typed helper for the `stripe.usage_events` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayStripeUsageEvents {
  const AiGatewayStripeUsageEvents({required this.payload});

  final TfArg<String> payload;

  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Factory wrapper for `cloudflare_ai_gateway`.
///
/// Accepted Permissions
///
/// - `AI Gateway Read` - `AI Gateway Write`
final class CloudflareAiGateway extends Resource {
  static const String tfType = 'cloudflare_ai_gateway';

  CloudflareAiGateway({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? authentication,
    required TfArg<bool> cacheInvalidateOnUpdate,
    required TfArg<num> cacheTtl,
    required TfArg<bool> collectLogs,
    required TfArg<String> id,
    TfArg<num>? logManagement,
    TfArg<String>? logManagementStrategy,
    TfArg<bool>? logpush,
    TfArg<String>? logpushPublicKey,
    required TfArg<num> rateLimitingInterval,
    required TfArg<num> rateLimitingLimit,
    TfArg<String>? rateLimitingTechnique,
    TfArg<String>? retryBackoff,
    TfArg<num>? retryDelay,
    TfArg<num>? retryMaxAttempts,
    TfArg<String>? storeId,
    TfArg<String>? workersAiBillingMode,
    TfArg<bool>? zdr,
    AiGatewayDlp? dlp,
    AiGatewayGuardrails? guardrails,
    List<AiGatewayOtel>? otel,
    AiGatewaySpendLimits? spendLimits,
    AiGatewayStripe? stripe,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (authentication != null) 'authentication': authentication,
           'cache_invalidate_on_update': cacheInvalidateOnUpdate,
           'cache_ttl': cacheTtl,
           'collect_logs': collectLogs,
           'id': id,
           if (logManagement != null) 'log_management': logManagement,
           if (logManagementStrategy != null)
             'log_management_strategy': logManagementStrategy,
           if (logpush != null) 'logpush': logpush,
           if (logpushPublicKey != null) 'logpush_public_key': logpushPublicKey,
           'rate_limiting_interval': rateLimitingInterval,
           'rate_limiting_limit': rateLimitingLimit,
           if (rateLimitingTechnique != null)
             'rate_limiting_technique': rateLimitingTechnique,
           if (retryBackoff != null) 'retry_backoff': retryBackoff,
           if (retryDelay != null) 'retry_delay': retryDelay,
           if (retryMaxAttempts != null) 'retry_max_attempts': retryMaxAttempts,
           if (storeId != null) 'store_id': storeId,
           if (workersAiBillingMode != null)
             'workers_ai_billing_mode': workersAiBillingMode,
           if (zdr != null) 'zdr': zdr,
           if (dlp != null) 'dlp': TfArg.literal(dlp.encode()),
           if (guardrails != null)
             'guardrails': TfArg.literal(guardrails.encode()),
           if (otel != null)
             'otel': TfArg.literal([for (final e in otel) e.encode()]),
           if (spendLimits != null)
             'spend_limits': TfArg.literal(spendLimits.encode()),
           if (stripe != null) 'stripe': TfArg.literal(stripe.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiGatewaySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
