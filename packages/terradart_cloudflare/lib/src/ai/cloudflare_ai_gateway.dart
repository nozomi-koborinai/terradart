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

  final TfArg<AiGatewayDlpAction>? action;

  final TfArg<bool> enabled;

  final TfArg<List<String>>? profiles;

  final List<AiGatewayDlpPolicies>? policies;

  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'profiles': ?profiles?.toTfJson(),
    if (policies != null) 'policies': [for (final e in policies!) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
enum AiGatewayDlpAction implements TerraformEnum {
  block('BLOCK'),
  flag('FLAG');

  const AiGatewayDlpAction(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AiGatewayDlpPoliciesAction> action;

  final List<TfArg<AiGatewayDlpPoliciesCheck>> check;

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
enum AiGatewayDlpPoliciesAction implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayDlpPoliciesAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// `check` — derived from the provider schema description.
enum AiGatewayDlpPoliciesCheck implements TerraformEnum {
  request('REQUEST'),
  response('RESPONSE');

  const AiGatewayDlpPoliciesCheck(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AiGatewayGuardrailsPromptP1>? p1;

  final TfArg<AiGatewayGuardrailsPromptS1>? s1;

  final TfArg<AiGatewayGuardrailsPromptS10>? s10;

  final TfArg<AiGatewayGuardrailsPromptS11>? s11;

  final TfArg<AiGatewayGuardrailsPromptS12>? s12;

  final TfArg<AiGatewayGuardrailsPromptS13>? s13;

  final TfArg<AiGatewayGuardrailsPromptS2>? s2;

  final TfArg<AiGatewayGuardrailsPromptS3>? s3;

  final TfArg<AiGatewayGuardrailsPromptS4>? s4;

  final TfArg<AiGatewayGuardrailsPromptS5>? s5;

  final TfArg<AiGatewayGuardrailsPromptS6>? s6;

  final TfArg<AiGatewayGuardrailsPromptS7>? s7;

  final TfArg<AiGatewayGuardrailsPromptS8>? s8;

  final TfArg<AiGatewayGuardrailsPromptS9>? s9;

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
enum AiGatewayGuardrailsPromptP1 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptP1(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s1` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS1 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS1(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s10` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS10 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS10(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s11` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS11 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS11(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s12` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS12 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS12(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s13` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS13 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS13(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s2` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS2 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS2(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS3 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS3(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s4` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS4 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS4(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s5` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS5 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS5(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s6` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS6 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS6(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s7` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS7 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS7(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s8` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS8 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS8(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s9` — derived from the provider schema description.
enum AiGatewayGuardrailsPromptS9 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsPromptS9(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AiGatewayGuardrailsResponseP1>? p1;

  final TfArg<AiGatewayGuardrailsResponseS1>? s1;

  final TfArg<AiGatewayGuardrailsResponseS10>? s10;

  final TfArg<AiGatewayGuardrailsResponseS11>? s11;

  final TfArg<AiGatewayGuardrailsResponseS12>? s12;

  final TfArg<AiGatewayGuardrailsResponseS13>? s13;

  final TfArg<AiGatewayGuardrailsResponseS2>? s2;

  final TfArg<AiGatewayGuardrailsResponseS3>? s3;

  final TfArg<AiGatewayGuardrailsResponseS4>? s4;

  final TfArg<AiGatewayGuardrailsResponseS5>? s5;

  final TfArg<AiGatewayGuardrailsResponseS6>? s6;

  final TfArg<AiGatewayGuardrailsResponseS7>? s7;

  final TfArg<AiGatewayGuardrailsResponseS8>? s8;

  final TfArg<AiGatewayGuardrailsResponseS9>? s9;

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
enum AiGatewayGuardrailsResponseP1 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseP1(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s1` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS1 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS1(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s10` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS10 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS10(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s11` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS11 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS11(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s12` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS12 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS12(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s13` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS13 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS13(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s2` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS2 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS2(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s3` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS3 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS3(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s4` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS4 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS4(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s5` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS5 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS5(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s6` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS6 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS6(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s7` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS7 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS7(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s8` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS8 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS8(this.terraformValue);
  @override
  final String terraformValue;
}

/// `s9` — derived from the provider schema description.
enum AiGatewayGuardrailsResponseS9 implements TerraformEnum {
  flag('FLAG'),
  block('BLOCK');

  const AiGatewayGuardrailsResponseS9(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<AiGatewayOtelContentType>? contentType;

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
enum AiGatewayOtelContentType implements TerraformEnum {
  json('json'),
  protobuf('protobuf');

  const AiGatewayOtelContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimits {
  const AiGatewaySpendLimits({this.enabled, this.rules});

  final TfArg<bool>? enabled;

  final List<AiGatewaySpendLimitsRules>? rules;

  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
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

  final TfArg<AiGatewaySpendLimitsRulesLimitType> limitType;

  final TfArg<AiGatewaySpendLimitsRulesTechnique>? technique;

  final TfArg<num> window;

  final AiGatewaySpendLimitsRulesAiGatewayProvider? aiGatewayProvider;

  final Map<String, AiGatewaySpendLimitsRulesMetadata>? metadata;

  final AiGatewaySpendLimitsRulesModel? model;

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
enum AiGatewaySpendLimitsRulesLimitType implements TerraformEnum {
  cost('cost');

  const AiGatewaySpendLimitsRulesLimitType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `technique` — derived from the provider schema description.
enum AiGatewaySpendLimitsRulesTechnique implements TerraformEnum {
  fixed('fixed'),
  sliding('sliding');

  const AiGatewaySpendLimitsRulesTechnique(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits.rules.ai_gateway_provider` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRulesAiGatewayProvider {
  const AiGatewaySpendLimitsRulesAiGatewayProvider({
    required this.mode,
    required this.values,
  });

  final TfArg<AiGatewaySpendLimitsRulesAiGatewayProviderMode> mode;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum AiGatewaySpendLimitsRulesAiGatewayProviderMode implements TerraformEnum {
  filter('filter');

  const AiGatewaySpendLimitsRulesAiGatewayProviderMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits.rules.metadata` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRulesMetadata {
  const AiGatewaySpendLimitsRulesMetadata({required this.mode, this.values});

  final TfArg<AiGatewaySpendLimitsRulesMetadataMode> mode;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum AiGatewaySpendLimitsRulesMetadataMode implements TerraformEnum {
  partition('partition'),
  filter('filter');

  const AiGatewaySpendLimitsRulesMetadataMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `spend_limits.rules.model` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimitsRulesModel {
  const AiGatewaySpendLimitsRulesModel({
    required this.mode,
    required this.values,
  });

  final TfArg<AiGatewaySpendLimitsRulesModelMode> mode;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum AiGatewaySpendLimitsRulesModelMode implements TerraformEnum {
  filter('filter');

  const AiGatewaySpendLimitsRulesModelMode(this.terraformValue);
  @override
  final String terraformValue;
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
}
