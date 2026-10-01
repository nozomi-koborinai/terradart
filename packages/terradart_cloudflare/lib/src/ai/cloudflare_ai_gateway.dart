// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_ai_gateway`.
const Set<String> _cloudflareAiGatewaySensitive = <String>{};

/// Ai Gateway Log Management enum for `log_management_strategy`.
extension type const AiGatewayLogManagementStrategy._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayLogManagementStrategy.variable(String name)
    : this._(TfArg.variable(name));
  AiGatewayLogManagementStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayLogManagementStrategy.arg(TfArg<String> arg) : this._(arg);

  static const stopInserting = AiGatewayLogManagementStrategy._(
    TfArgLiteral('STOP_INSERTING'),
  );
  static const deleteOldest = AiGatewayLogManagementStrategy._(
    TfArgLiteral('DELETE_OLDEST'),
  );

  static const List<AiGatewayLogManagementStrategy> values = [
    stopInserting,
    deleteOldest,
  ];
}

/// Ai Gateway Rate Limiting enum for `rate_limiting_technique`.
extension type const AiGatewayRateLimitingTechnique._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayRateLimitingTechnique.variable(String name)
    : this._(TfArg.variable(name));
  AiGatewayRateLimitingTechnique.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayRateLimitingTechnique.arg(TfArg<String> arg) : this._(arg);

  static const fixed = AiGatewayRateLimitingTechnique._(TfArgLiteral('fixed'));
  static const sliding = AiGatewayRateLimitingTechnique._(
    TfArgLiteral('sliding'),
  );

  static const List<AiGatewayRateLimitingTechnique> values = [fixed, sliding];
}

/// Ai Gateway Retry enum for `retry_backoff`.
extension type const AiGatewayRetryBackoff._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayRetryBackoff.variable(String name) : this._(TfArg.variable(name));
  AiGatewayRetryBackoff.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayRetryBackoff.arg(TfArg<String> arg) : this._(arg);

  static const constant = AiGatewayRetryBackoff._(TfArgLiteral('constant'));
  static const linear = AiGatewayRetryBackoff._(TfArgLiteral('linear'));
  static const exponential = AiGatewayRetryBackoff._(
    TfArgLiteral('exponential'),
  );

  static const List<AiGatewayRetryBackoff> values = [
    constant,
    linear,
    exponential,
  ];
}

/// Ai Gateway Workers Ai Billing enum for `workers_ai_billing_mode`.
extension type const AiGatewayWorkersAiBillingMode._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayWorkersAiBillingMode.variable(String name)
    : this._(TfArg.variable(name));
  AiGatewayWorkersAiBillingMode.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayWorkersAiBillingMode.arg(TfArg<String> arg) : this._(arg);

  static const postpaid = AiGatewayWorkersAiBillingMode._(
    TfArgLiteral('postpaid'),
  );
  static const unified = AiGatewayWorkersAiBillingMode._(
    TfArgLiteral('unified'),
  );

  static const List<AiGatewayWorkersAiBillingMode> values = [postpaid, unified];
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

  final AiGatewayAction? action;

  final TfArg<bool> enabled;

  final TfArg<List<String>>? profiles;

  final List<AiGatewayPolicies>? policies;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': enabled.toTfJson(),
    'profiles': ?profiles?.toTfJson(),
    if (policies != null) 'policies': [for (final e in policies!) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
extension type const AiGatewayAction._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayAction.variable(String name) : this._(TfArg.variable(name));
  AiGatewayAction.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayAction.arg(TfArg<String> arg) : this._(arg);

  static const block = AiGatewayAction._(TfArgLiteral('BLOCK'));
  static const flag = AiGatewayAction._(TfArgLiteral('FLAG'));

  static const List<AiGatewayAction> values = [block, flag];
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

  final AiGatewayPoliciesAction action;

  final List<AiGatewayCheck> check;

  final TfArg<bool> enabled;

  final TfArg<String> id;

  final TfArg<List<String>> profiles;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'check': [for (final e in check) e.toTfJson()],
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    'profiles': profiles.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const AiGatewayPoliciesAction._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayPoliciesAction.variable(String name) : this._(TfArg.variable(name));
  AiGatewayPoliciesAction.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayPoliciesAction.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayPoliciesAction._(TfArgLiteral('FLAG'));
  static const block = AiGatewayPoliciesAction._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayPoliciesAction> values = [flag, block];
}

/// `check` — derived from the provider schema description.
extension type const AiGatewayCheck._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayCheck.variable(String name) : this._(TfArg.variable(name));
  AiGatewayCheck.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayCheck.arg(TfArg<String> arg) : this._(arg);

  static const request = AiGatewayCheck._(TfArgLiteral('REQUEST'));
  static const response = AiGatewayCheck._(TfArgLiteral('RESPONSE'));

  static const List<AiGatewayCheck> values = [request, response];
}

/// Typed helper for the `guardrails` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayGuardrails {
  const AiGatewayGuardrails({required this.prompt, required this.response});

  final AiGatewayPrompt prompt;

  final AiGatewayResponse response;

  @internal
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

  final AiGatewayP1? p1;

  final AiGatewayS1? s1;

  final AiGatewayS10? s10;

  final AiGatewayS11? s11;

  final AiGatewayS12? s12;

  final AiGatewayS13? s13;

  final AiGatewayS2? s2;

  final AiGatewayS3? s3;

  final AiGatewayS4? s4;

  final AiGatewayS5? s5;

  final AiGatewayS6? s6;

  final AiGatewayS7? s7;

  final AiGatewayS8? s8;

  final AiGatewayS9? s9;

  @internal
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
extension type const AiGatewayP1._(TfArg<String> _) implements TfArg<String> {
  AiGatewayP1.variable(String name) : this._(TfArg.variable(name));
  AiGatewayP1.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayP1.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayP1._(TfArgLiteral('FLAG'));
  static const block = AiGatewayP1._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayP1> values = [flag, block];
}

/// `s1` — derived from the provider schema description.
extension type const AiGatewayS1._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS1.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS1.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS1.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS1._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS1._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS1> values = [flag, block];
}

/// `s10` — derived from the provider schema description.
extension type const AiGatewayS10._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS10.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS10.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS10.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS10._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS10._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS10> values = [flag, block];
}

/// `s11` — derived from the provider schema description.
extension type const AiGatewayS11._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS11.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS11.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS11.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS11._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS11._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS11> values = [flag, block];
}

/// `s12` — derived from the provider schema description.
extension type const AiGatewayS12._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS12.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS12.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS12.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS12._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS12._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS12> values = [flag, block];
}

/// `s13` — derived from the provider schema description.
extension type const AiGatewayS13._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS13.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS13.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS13.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS13._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS13._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS13> values = [flag, block];
}

/// `s2` — derived from the provider schema description.
extension type const AiGatewayS2._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS2.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS2.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS2.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS2._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS2._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS2> values = [flag, block];
}

/// `s3` — derived from the provider schema description.
extension type const AiGatewayS3._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS3.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS3.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS3.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS3._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS3._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS3> values = [flag, block];
}

/// `s4` — derived from the provider schema description.
extension type const AiGatewayS4._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS4.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS4.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS4.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS4._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS4._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS4> values = [flag, block];
}

/// `s5` — derived from the provider schema description.
extension type const AiGatewayS5._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS5.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS5.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS5.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS5._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS5._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS5> values = [flag, block];
}

/// `s6` — derived from the provider schema description.
extension type const AiGatewayS6._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS6.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS6.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS6.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS6._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS6._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS6> values = [flag, block];
}

/// `s7` — derived from the provider schema description.
extension type const AiGatewayS7._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS7.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS7.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS7.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS7._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS7._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS7> values = [flag, block];
}

/// `s8` — derived from the provider schema description.
extension type const AiGatewayS8._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS8.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS8.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS8.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS8._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS8._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS8> values = [flag, block];
}

/// `s9` — derived from the provider schema description.
extension type const AiGatewayS9._(TfArg<String> _) implements TfArg<String> {
  AiGatewayS9.variable(String name) : this._(TfArg.variable(name));
  AiGatewayS9.expression(String template) : this._(TfArg.expression(template));
  const AiGatewayS9.arg(TfArg<String> arg) : this._(arg);

  static const flag = AiGatewayS9._(TfArgLiteral('FLAG'));
  static const block = AiGatewayS9._(TfArgLiteral('BLOCK'));

  static const List<AiGatewayS9> values = [flag, block];
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

  final AiGatewayP1? p1;

  final AiGatewayS1? s1;

  final AiGatewayS10? s10;

  final AiGatewayS11? s11;

  final AiGatewayS12? s12;

  final AiGatewayS13? s13;

  final AiGatewayS2? s2;

  final AiGatewayS3? s3;

  final AiGatewayS4? s4;

  final AiGatewayS5? s5;

  final AiGatewayS6? s6;

  final AiGatewayS7? s7;

  final AiGatewayS8? s8;

  final AiGatewayS9? s9;

  @internal
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

  final AiGatewayContentType? contentType;

  final TfArg<Map<String, String>> headers;

  final TfArg<String> url;

  @internal
  Map<String, Object?> encode() => {
    'authorization': ?authorization?.toTfJson(),
    'content_type': ?contentType?.toTfJson(),
    'headers': headers.toTfJson(),
    'url': url.toTfJson(),
  };
}

/// `content_type` — derived from the provider schema description.
extension type const AiGatewayContentType._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayContentType.variable(String name) : this._(TfArg.variable(name));
  AiGatewayContentType.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayContentType.arg(TfArg<String> arg) : this._(arg);

  static const json = AiGatewayContentType._(TfArgLiteral('json'));
  static const protobuf = AiGatewayContentType._(TfArgLiteral('protobuf'));

  static const List<AiGatewayContentType> values = [json, protobuf];
}

/// Typed helper for the `spend_limits` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewaySpendLimits {
  const AiGatewaySpendLimits({this.enabled, this.rules});

  final TfArg<bool>? enabled;

  final List<AiGatewayRules>? rules;

  @internal
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

  final AiGatewayLimitType limitType;

  final AiGatewayTechnique? technique;

  final TfArg<num> window;

  final AiGatewayProvider? aiGatewayProvider;

  final Map<String, AiGatewayMetadata>? metadata;

  final AiGatewayModel? model;

  @internal
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
extension type const AiGatewayLimitType._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayLimitType.variable(String name) : this._(TfArg.variable(name));
  AiGatewayLimitType.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayLimitType.arg(TfArg<String> arg) : this._(arg);

  static const cost = AiGatewayLimitType._(TfArgLiteral('cost'));

  static const List<AiGatewayLimitType> values = [cost];
}

/// `technique` — derived from the provider schema description.
extension type const AiGatewayTechnique._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayTechnique.variable(String name) : this._(TfArg.variable(name));
  AiGatewayTechnique.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayTechnique.arg(TfArg<String> arg) : this._(arg);

  static const fixed = AiGatewayTechnique._(TfArgLiteral('fixed'));
  static const sliding = AiGatewayTechnique._(TfArgLiteral('sliding'));

  static const List<AiGatewayTechnique> values = [fixed, sliding];
}

/// Typed helper for the `spend_limits.rules.ai_gateway_provider` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayProvider {
  const AiGatewayProvider({required this.mode, required this.values});

  final AiGatewayProviderMode mode;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const AiGatewayProviderMode._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayProviderMode.variable(String name) : this._(TfArg.variable(name));
  AiGatewayProviderMode.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayProviderMode.arg(TfArg<String> arg) : this._(arg);

  static const filter = AiGatewayProviderMode._(TfArgLiteral('filter'));

  static const List<AiGatewayProviderMode> values = [filter];
}

/// Typed helper for the `spend_limits.rules.metadata` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayMetadata {
  const AiGatewayMetadata({required this.mode, this.values});

  final AiGatewayMetadataMode mode;

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const AiGatewayMetadataMode._(TfArg<String> _)
    implements TfArg<String> {
  AiGatewayMetadataMode.variable(String name) : this._(TfArg.variable(name));
  AiGatewayMetadataMode.expression(String template)
    : this._(TfArg.expression(template));
  const AiGatewayMetadataMode.arg(TfArg<String> arg) : this._(arg);

  static const partition = AiGatewayMetadataMode._(TfArgLiteral('partition'));
  static const filter = AiGatewayMetadataMode._(TfArgLiteral('filter'));

  static const List<AiGatewayMetadataMode> values = [partition, filter];
}

/// Typed helper for the `spend_limits.rules.model` block of
/// `cloudflare_ai_gateway` (derived from provider schema).
@immutable
final class AiGatewayModel {
  const AiGatewayModel({required this.mode, required this.values});

  final AiGatewayProviderMode mode;

  final TfArg<List<String>> values;

  @internal
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

  @internal
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

  @internal
  Map<String, Object?> encode() => {'payload': payload.toTfJson()};
}

/// Factory wrapper for `cloudflare_ai_gateway`.
///
/// Accepted Permissions
///
/// - `AI Gateway Read` - `AI Gateway Write`
final class CloudflareAiGateway extends Resource {
  static const String tfType = 'cloudflare_ai_gateway';

  CloudflareAiGateway(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? authentication,
    TfArg<bool>? byokOnly,
    required TfArg<bool> cacheInvalidateOnUpdate,
    required TfArg<num> cacheTtl,
    required TfArg<bool> collectLogs,
    required TfArg<String> id,
    TfArg<bool>? logClassification,
    TfArg<num>? logManagement,
    AiGatewayLogManagementStrategy? logManagementStrategy,
    TfArg<bool>? logpush,
    TfArg<String>? logpushPublicKey,
    required TfArg<num> rateLimitingInterval,
    required TfArg<num> rateLimitingLimit,
    AiGatewayRateLimitingTechnique? rateLimitingTechnique,
    AiGatewayRetryBackoff? retryBackoff,
    TfArg<num>? retryDelay,
    TfArg<num>? retryMaxAttempts,
    TfArg<String>? storeId,
    AiGatewayWorkersAiBillingMode? workersAiBillingMode,
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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `authentication` attribute.
  TfRef<bool> get authentication =>
      TfRef.attribute<bool>(this, 'authentication');

  /// Reference to `byok_only` attribute.
  TfRef<bool> get byokOnly => TfRef.attribute<bool>(this, 'byok_only');

  /// Reference to `cache_invalidate_on_update` attribute.
  TfRef<bool> get cacheInvalidateOnUpdate =>
      TfRef.attribute<bool>(this, 'cache_invalidate_on_update');

  /// Reference to `cache_ttl` attribute.
  TfRef<num> get cacheTtl => TfRef.attribute<num>(this, 'cache_ttl');

  /// Reference to `collect_logs` attribute.
  TfRef<bool> get collectLogs => TfRef.attribute<bool>(this, 'collect_logs');

  /// Reference to `log_classification` attribute.
  TfRef<bool> get logClassification =>
      TfRef.attribute<bool>(this, 'log_classification');

  /// Reference to `log_management` attribute.
  TfRef<num> get logManagement => TfRef.attribute<num>(this, 'log_management');

  /// Reference to `log_management_strategy` attribute.
  TfRef<String> get logManagementStrategy =>
      TfRef.attribute<String>(this, 'log_management_strategy');

  /// Reference to `logpush` attribute.
  TfRef<bool> get logpush => TfRef.attribute<bool>(this, 'logpush');

  /// Reference to `logpush_public_key` attribute.
  TfRef<String> get logpushPublicKey =>
      TfRef.attribute<String>(this, 'logpush_public_key');

  /// Reference to `rate_limiting_interval` attribute.
  TfRef<num> get rateLimitingInterval =>
      TfRef.attribute<num>(this, 'rate_limiting_interval');

  /// Reference to `rate_limiting_limit` attribute.
  TfRef<num> get rateLimitingLimit =>
      TfRef.attribute<num>(this, 'rate_limiting_limit');

  /// Reference to `rate_limiting_technique` attribute.
  TfRef<String> get rateLimitingTechnique =>
      TfRef.attribute<String>(this, 'rate_limiting_technique');

  /// Reference to `retry_backoff` attribute.
  TfRef<String> get retryBackoff =>
      TfRef.attribute<String>(this, 'retry_backoff');

  /// Reference to `retry_delay` attribute.
  TfRef<num> get retryDelay => TfRef.attribute<num>(this, 'retry_delay');

  /// Reference to `retry_max_attempts` attribute.
  TfRef<num> get retryMaxAttempts =>
      TfRef.attribute<num>(this, 'retry_max_attempts');

  /// Reference to `store_id` attribute.
  TfRef<String> get storeId => TfRef.attribute<String>(this, 'store_id');

  /// Reference to `workers_ai_billing_mode` attribute.
  TfRef<String> get workersAiBillingMode =>
      TfRef.attribute<String>(this, 'workers_ai_billing_mode');

  /// Reference to `zdr` attribute.
  TfRef<bool> get zdr => TfRef.attribute<bool>(this, 'zdr');
}
