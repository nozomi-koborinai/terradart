// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_gateway`.
const Set<String> _cloudflareAiGatewaySensitive = <String>{};

/// Ai Gateway Log Management enum for `log_management_strategy`.
enum AiGatewayLogManagementStrategy implements TerraformEnum {
  stopInserting('STOP_INSERTING'),
  deleteOldest('DELETE_OLDEST');

  const AiGatewayLogManagementStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ai Gateway Rate Limiting enum for `rate_limiting_technique`.
enum AiGatewayRateLimitingTechnique implements TerraformEnum {
  fixed('fixed'),
  sliding('sliding');

  const AiGatewayRateLimitingTechnique(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ai Gateway Retry enum for `retry_backoff`.
enum AiGatewayRetryBackoff implements TerraformEnum {
  constant('constant'),
  linear('linear'),
  exponential('exponential');

  const AiGatewayRetryBackoff(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ai Gateway Workers Ai Billing enum for `workers_ai_billing_mode`.
enum AiGatewayWorkersAiBillingMode implements TerraformEnum {
  postpaid('postpaid'),
  unified('unified');

  const AiGatewayWorkersAiBillingMode(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<AiGatewayAction>? action;

  final TfArg<bool> enabled;

  final TfArg<List<String>>? profiles;

  final List<AiGatewayPolicies>? policies;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'profiles': ?profiles?.toTfJson(),
    if (policies != null) 'policies': [for (final e in policies!) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
enum AiGatewayAction implements TerraformEnum {
  block('BLOCK'),
  flag('FLAG');

  const AiGatewayAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dlp.policies` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayPolicies {
  const AiGatewayPolicies({
    required this.action,
    required this.check,
    required this.enabled,
    required this.id,
    required this.profiles,
  });

  final TfArg<AiGatewayPoliciesAction> action;

  final List<TfArg<AiGatewayCheck>> check;

  final TfArg<bool> enabled;

  final TfArg<String> id;

  final TfArg<List<String>> profiles;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'check': [for (final e in check) e.toTfJson()],
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    'profiles': profiles.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
enum AiGatewayPoliciesAction implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayPoliciesAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `check` — derived from the provider schema description.
enum AiGatewayCheck implements TerraformEnum {
  request('REQUEST'),
  response('RESPONSE');

  const AiGatewayCheck(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `guardrails` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayGuardrails {
  const AiGatewayGuardrails({required this.prompt, required this.response});

  final AiGatewayPrompt prompt;

  final AiGatewayResponse response;

  Map<String, Object?> encode() => {
    'prompt': prompt.encode(),
    'response': response.encode(),
  };
}

/// Typed helper for the `guardrails.prompt` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayPrompt {
  const AiGatewayPrompt({
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

  final TfArg<AiGatewayP1>? p1;

  final TfArg<AiGatewayS1>? s1;

  final TfArg<AiGatewayS10>? s10;

  final TfArg<AiGatewayS11>? s11;

  final TfArg<AiGatewayS12>? s12;

  final TfArg<AiGatewayS13>? s13;

  final TfArg<AiGatewayS2>? s2;

  final TfArg<AiGatewayS3>? s3;

  final TfArg<AiGatewayS4>? s4;

  final TfArg<AiGatewayS5>? s5;

  final TfArg<AiGatewayS6>? s6;

  final TfArg<AiGatewayS7>? s7;

  final TfArg<AiGatewayS8>? s8;

  final TfArg<AiGatewayS9>? s9;

  Map<String, Object?> encode() => {
    'p1': ?p1?.toTfJson(),
    's1': ?s1?.toTfJson(),
    's10': ?s10?.toTfJson(),
    's11': ?s11?.toTfJson(),
    's12': ?s12?.toTfJson(),
    's13': ?s13?.toTfJson(),
    's2': ?s2?.toTfJson(),
    's3': ?s3?.toTfJson(),
    's4': ?s4?.toTfJson(),
    's5': ?s5?.toTfJson(),
    's6': ?s6?.toTfJson(),
    's7': ?s7?.toTfJson(),
    's8': ?s8?.toTfJson(),
    's9': ?s9?.toTfJson(),
  };
}

/// `p1` — derived from the provider schema description.
enum AiGatewayP1 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayP1(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s1` — derived from the provider schema description.
enum AiGatewayS1 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS1(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s10` — derived from the provider schema description.
enum AiGatewayS10 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS10(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s11` — derived from the provider schema description.
enum AiGatewayS11 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS11(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s12` — derived from the provider schema description.
enum AiGatewayS12 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS12(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s13` — derived from the provider schema description.
enum AiGatewayS13 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS13(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s2` — derived from the provider schema description.
enum AiGatewayS2 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS2(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3` — derived from the provider schema description.
enum AiGatewayS3 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS3(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s4` — derived from the provider schema description.
enum AiGatewayS4 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS4(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s5` — derived from the provider schema description.
enum AiGatewayS5 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS5(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s6` — derived from the provider schema description.
enum AiGatewayS6 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS6(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s7` — derived from the provider schema description.
enum AiGatewayS7 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS7(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s8` — derived from the provider schema description.
enum AiGatewayS8 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS8(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s9` — derived from the provider schema description.
enum AiGatewayS9 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayS9(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `guardrails.response` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayResponse {
  const AiGatewayResponse({
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

  final TfArg<AiGatewayP1>? p1;

  final TfArg<AiGatewayS1>? s1;

  final TfArg<AiGatewayS10>? s10;

  final TfArg<AiGatewayS11>? s11;

  final TfArg<AiGatewayS12>? s12;

  final TfArg<AiGatewayS13>? s13;

  final TfArg<AiGatewayS2>? s2;

  final TfArg<AiGatewayS3>? s3;

  final TfArg<AiGatewayS4>? s4;

  final TfArg<AiGatewayS5>? s5;

  final TfArg<AiGatewayS6>? s6;

  final TfArg<AiGatewayS7>? s7;

  final TfArg<AiGatewayS8>? s8;

  final TfArg<AiGatewayS9>? s9;

  Map<String, Object?> encode() => {
    'p1': ?p1?.toTfJson(),
    's1': ?s1?.toTfJson(),
    's10': ?s10?.toTfJson(),
    's11': ?s11?.toTfJson(),
    's12': ?s12?.toTfJson(),
    's13': ?s13?.toTfJson(),
    's2': ?s2?.toTfJson(),
    's3': ?s3?.toTfJson(),
    's4': ?s4?.toTfJson(),
    's5': ?s5?.toTfJson(),
    's6': ?s6?.toTfJson(),
    's7': ?s7?.toTfJson(),
    's8': ?s8?.toTfJson(),
    's9': ?s9?.toTfJson(),
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

  final TfArg<AiGatewayContentType>? contentType;

  final TfArg<Map<String, String>> headers;

  final TfArg<String> url;

  Map<String, Object?> encode() => {
    'authorization': ?authorization?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'headers': headers.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// `content_type` — derived from the provider schema description.
enum AiGatewayContentType implements TerraformEnum {
  json('json'),
  protobuf('protobuf');

  const AiGatewayContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimits {
  const AiGatewaySpendLimits({this.enabled, this.rules});

  final TfArg<bool>? enabled;

  final List<AiGatewayRules>? rules;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (rules != null) 'rules': [for (final e in rules!) e.encode()],
  };
}

/// Typed helper for the `spend_limits.rules` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayRules {
  const AiGatewayRules({
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

  final TfArg<AiGatewayLimitType> limitType;

  final TfArg<AiGatewayTechnique>? technique;

  final TfArg<num> window;

  final AiGatewayProvider? aiGatewayProvider;

  final Map<String, AiGatewayMetadata>? metadata;

  final AiGatewayModel? model;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'id': ?id?.toTfJson(),
    'limit': limit.toTfJson(),
    'limit_type': limitType.toTfJson(),
    'technique': ?technique?.toTfJson(),
    'window': window.toTfJson(),
    'ai_gateway_provider': ?aiGatewayProvider?.encode(),
    if (metadata != null)
      'metadata': {for (final e in metadata!.entries) e.key: e.value.encode()},
    'model': ?model?.encode(),
  };
}

/// `limit_type` — derived from the provider schema description.
enum AiGatewayLimitType implements TerraformEnum {
  cost('cost');

  const AiGatewayLimitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `technique` — derived from the provider schema description.
enum AiGatewayTechnique implements TerraformEnum {
  fixed('fixed'),
  sliding('sliding');

  const AiGatewayTechnique(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits.rules.ai_gateway_provider` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayProvider {
  const AiGatewayProvider({required this.mode, required this.values});

  final TfArg<AiGatewayProviderMode> mode;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum AiGatewayProviderMode implements TerraformEnum {
  filter('filter');

  const AiGatewayProviderMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits.rules.metadata` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayMetadata {
  const AiGatewayMetadata({required this.mode, this.values});

  final TfArg<AiGatewayMetadataMode> mode;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum AiGatewayMetadataMode implements TerraformEnum {
  partition('partition'),
  filter('filter');

  const AiGatewayMetadataMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits.rules.model` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayModel {
  const AiGatewayModel({required this.mode, required this.values});

  final TfArg<AiGatewayProviderMode> mode;

  final TfArg<List<String>> values;

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

  final List<AiGatewayUsageEvents> usageEvents;

  Map<String, Object?> encode() => {
    'authorization': authorization.toTfJson(),
    'usage_events': [for (final e in usageEvents) e.encode()],
  };
}

/// Typed helper for the `stripe.usage_events` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayUsageEvents {
  const AiGatewayUsageEvents({required this.payload});

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
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? authentication,
    TfArg<bool>? byokOnly,
    required TfArg<bool> cacheInvalidateOnUpdate,
    required TfArg<num> cacheTtl,
    required TfArg<bool> collectLogs,
    required TfArg<String> id,
    TfArg<bool>? logClassification,
    TfArg<num>? logManagement,
    TfArg<AiGatewayLogManagementStrategy>? logManagementStrategy,
    TfArg<bool>? logpush,
    TfArg<String>? logpushPublicKey,
    required TfArg<num> rateLimitingInterval,
    required TfArg<num> rateLimitingLimit,
    TfArg<AiGatewayRateLimitingTechnique>? rateLimitingTechnique,
    TfArg<AiGatewayRetryBackoff>? retryBackoff,
    TfArg<num>? retryDelay,
    TfArg<num>? retryMaxAttempts,
    TfArg<String>? storeId,
    TfArg<AiGatewayWorkersAiBillingMode>? workersAiBillingMode,
    TfArg<bool>? zdr,
    AiGatewayDlp? dlp,
    AiGatewayGuardrails? guardrails,
    List<AiGatewayOtel>? otel,
    AiGatewaySpendLimits? spendLimits,
    AiGatewayStripe? stripe,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'authentication': ?authentication,
           'byok_only': ?byokOnly,
           'cache_invalidate_on_update': cacheInvalidateOnUpdate,
           'cache_ttl': cacheTtl,
           'collect_logs': collectLogs,
           'id': id,
           'log_classification': ?logClassification,
           'log_management': ?logManagement,
           'log_management_strategy': ?logManagementStrategy,
           'logpush': ?logpush,
           'logpush_public_key': ?logpushPublicKey,
           'rate_limiting_interval': rateLimitingInterval,
           'rate_limiting_limit': rateLimitingLimit,
           'rate_limiting_technique': ?rateLimitingTechnique,
           'retry_backoff': ?retryBackoff,
           'retry_delay': ?retryDelay,
           'retry_max_attempts': ?retryMaxAttempts,
           'store_id': ?storeId,
           'workers_ai_billing_mode': ?workersAiBillingMode,
           'zdr': ?zdr,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAiGateway>`.
  RefTo<CloudflareAiGateway> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `authentication` attribute.
  TfRef<bool> get authenticationRef =>
      TfRef.attribute<bool>(this, 'authentication');

  /// Reference to `byok_only` attribute.
  TfRef<bool> get byokOnlyRef => TfRef.attribute<bool>(this, 'byok_only');

  /// Reference to `cache_invalidate_on_update` attribute.
  TfRef<bool> get cacheInvalidateOnUpdateRef =>
      TfRef.attribute<bool>(this, 'cache_invalidate_on_update');

  /// Reference to `cache_ttl` attribute.
  TfRef<num> get cacheTtlRef => TfRef.attribute<num>(this, 'cache_ttl');

  /// Reference to `collect_logs` attribute.
  TfRef<bool> get collectLogsRef => TfRef.attribute<bool>(this, 'collect_logs');

  /// Reference to `log_classification` attribute.
  TfRef<bool> get logClassificationRef =>
      TfRef.attribute<bool>(this, 'log_classification');

  /// Reference to `log_management` attribute.
  TfRef<num> get logManagementRef =>
      TfRef.attribute<num>(this, 'log_management');

  /// Reference to `log_management_strategy` attribute.
  TfRef<String> get logManagementStrategyRef =>
      TfRef.attribute<String>(this, 'log_management_strategy');

  /// Reference to `logpush` attribute.
  TfRef<bool> get logpushRef => TfRef.attribute<bool>(this, 'logpush');

  /// Reference to `logpush_public_key` attribute.
  TfRef<String> get logpushPublicKeyRef =>
      TfRef.attribute<String>(this, 'logpush_public_key');

  /// Reference to `rate_limiting_interval` attribute.
  TfRef<num> get rateLimitingIntervalRef =>
      TfRef.attribute<num>(this, 'rate_limiting_interval');

  /// Reference to `rate_limiting_limit` attribute.
  TfRef<num> get rateLimitingLimitRef =>
      TfRef.attribute<num>(this, 'rate_limiting_limit');

  /// Reference to `rate_limiting_technique` attribute.
  TfRef<String> get rateLimitingTechniqueRef =>
      TfRef.attribute<String>(this, 'rate_limiting_technique');

  /// Reference to `retry_backoff` attribute.
  TfRef<String> get retryBackoffRef =>
      TfRef.attribute<String>(this, 'retry_backoff');

  /// Reference to `retry_delay` attribute.
  TfRef<num> get retryDelayRef => TfRef.attribute<num>(this, 'retry_delay');

  /// Reference to `retry_max_attempts` attribute.
  TfRef<num> get retryMaxAttemptsRef =>
      TfRef.attribute<num>(this, 'retry_max_attempts');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeIdRef => TfRef.attribute<String>(this, 'store_id');

  /// Reference to `workers_ai_billing_mode` attribute.
  TfRef<String> get workersAiBillingModeRef =>
      TfRef.attribute<String>(this, 'workers_ai_billing_mode');

  /// Reference to `zdr` attribute.
  TfRef<bool> get zdrRef => TfRef.attribute<bool>(this, 'zdr');
}
