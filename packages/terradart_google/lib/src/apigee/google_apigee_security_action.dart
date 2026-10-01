// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_security_action`.
const Set<String> _googleApigeeSecurityActionSensitive = <String>{};

/// Apigee Security Action enum for `state`.
enum ApigeeSecurityActionState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const ApigeeSecurityActionState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `allow`, `deny`, `flag` on `google_apigee_security_action`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.allow(...)`.
sealed class ApigeeSecurityActionEffect {
  const ApigeeSecurityActionEffect();

  /// Sets `allow`.
  const factory ApigeeSecurityActionEffect.allow(
    ApigeeSecurityActionAllow allow,
  ) = ApigeeSecurityActionEffectAllow;

  /// Sets `deny`.
  const factory ApigeeSecurityActionEffect.deny(ApigeeSecurityActionDeny deny) =
      ApigeeSecurityActionEffectDeny;

  /// Sets `flag`.
  const factory ApigeeSecurityActionEffect.flag(ApigeeSecurityActionFlag flag) =
      ApigeeSecurityActionEffectFlag;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApigeeSecurityActionEffect.allow] choice: sets `allow`.
final class ApigeeSecurityActionEffectAllow extends ApigeeSecurityActionEffect {
  const ApigeeSecurityActionEffectAllow(this.allow);

  final ApigeeSecurityActionAllow allow;

  @override
  String get blockKey => 'allow';

  @override
  Map<String, Object?> encode() => {'allow': allow.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'allow': TfArg.literal(allow.encode()),
  };
}

/// The [ApigeeSecurityActionEffect.deny] choice: sets `deny`.
final class ApigeeSecurityActionEffectDeny extends ApigeeSecurityActionEffect {
  const ApigeeSecurityActionEffectDeny(this.deny);

  final ApigeeSecurityActionDeny deny;

  @override
  String get blockKey => 'deny';

  @override
  Map<String, Object?> encode() => {'deny': deny.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'deny': TfArg.literal(deny.encode()),
  };
}

/// The [ApigeeSecurityActionEffect.flag] choice: sets `flag`.
final class ApigeeSecurityActionEffectFlag extends ApigeeSecurityActionEffect {
  const ApigeeSecurityActionEffectFlag(this.flag);

  final ApigeeSecurityActionFlag flag;

  @override
  String get blockKey => 'flag';

  @override
  Map<String, Object?> encode() => {'flag': flag.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'flag': TfArg.literal(flag.encode()),
  };
}

/// At most one of `expire_time`, `ttl` on `google_apigee_security_action`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.expireTime(...)`.
sealed class ApigeeSecurityActionExpiration {
  const ApigeeSecurityActionExpiration();

  /// Sets `expire_time`.
  const factory ApigeeSecurityActionExpiration.expireTime(
    TfArg<String> expireTime,
  ) = ApigeeSecurityActionExpirationExpireTime;

  /// Sets `ttl`.
  const factory ApigeeSecurityActionExpiration.ttl(TfArg<String> ttl) =
      ApigeeSecurityActionExpirationTtl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ApigeeSecurityActionExpiration.expireTime] choice: sets `expire_time`.
final class ApigeeSecurityActionExpirationExpireTime
    extends ApigeeSecurityActionExpiration {
  const ApigeeSecurityActionExpirationExpireTime(this.expireTime);

  final TfArg<String> expireTime;

  @override
  String get blockKey => 'expire_time';

  @override
  Map<String, Object?> encode() => {'expire_time': expireTime.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'expire_time': expireTime};
}

/// The [ApigeeSecurityActionExpiration.ttl] choice: sets `ttl`.
final class ApigeeSecurityActionExpirationTtl
    extends ApigeeSecurityActionExpiration {
  const ApigeeSecurityActionExpirationTtl(this.ttl);

  final TfArg<String> ttl;

  @override
  String get blockKey => 'ttl';

  @override
  Map<String, Object?> encode() => {'ttl': ttl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'ttl': ttl};
}

/// Typed helper for the `allow` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionAllow {
  const ApigeeSecurityActionAllow();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `condition_config` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionConditionConfig {
  const ApigeeSecurityActionConditionConfig({
    this.accessTokens,
    this.apiKeys,
    this.apiProducts,
    this.asns,
    this.botReasons,
    this.developerApps,
    this.developers,
    this.httpMethods,
    this.ipAddressRanges,
    this.regionCodes,
    this.userAgents,
  });

  final TfArg<List<String>>? accessTokens;

  final TfArg<List<String>>? apiKeys;

  final TfArg<List<String>>? apiProducts;

  final TfArg<List<String>>? asns;

  final TfArg<List<String>>? botReasons;

  final TfArg<List<String>>? developerApps;

  final TfArg<List<String>>? developers;

  final TfArg<List<String>>? httpMethods;

  final TfArg<List<String>>? ipAddressRanges;

  final TfArg<List<String>>? regionCodes;

  final TfArg<List<String>>? userAgents;

  Map<String, Object?> encode() => {
    'access_tokens': ?accessTokens?.toTfJson(),
    'api_keys': ?apiKeys?.toTfJson(),
    'api_products': ?apiProducts?.toTfJson(),
    'asns': ?asns?.toTfJson(),
    'bot_reasons': ?botReasons?.toTfJson(),
    'developer_apps': ?developerApps?.toTfJson(),
    'developers': ?developers?.toTfJson(),
    'http_methods': ?httpMethods?.toTfJson(),
    'ip_address_ranges': ?ipAddressRanges?.toTfJson(),
    'region_codes': ?regionCodes?.toTfJson(),
    'user_agents': ?userAgents?.toTfJson(),
  };
}

/// Typed helper for the `deny` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionDeny {
  const ApigeeSecurityActionDeny({this.responseCode});

  final TfArg<num>? responseCode;

  Map<String, Object?> encode() => {'response_code': ?responseCode?.toTfJson()};
}

/// Typed helper for the `flag` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionFlag {
  const ApigeeSecurityActionFlag({this.headers});

  final List<ApigeeSecurityActionHeaders>? headers;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `flag.headers` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionHeaders {
  const ApigeeSecurityActionHeaders({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `google_apigee_security_action`.
///
/// A SecurityAction is rule that can be enforced at an environment level. The
/// result is one of: - A denied API call - An explicitly allowed API call - A
/// flagged API call (HTTP headers added before the target receives it) At least
/// one condition is required to create a SecurityAction.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleApigeeSecurityAction extends Resource {
  static const String tfType = 'google_apigee_security_action';

  GoogleApigeeSecurityAction({
    required super.localName,
    TfArg<List<String>>? apiProxies,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> envId,
    ApigeeSecurityActionExpiration? expiration,
    required TfArg<String> orgId,
    required TfArg<String> securityActionId,
    required TfArg<ApigeeSecurityActionState> state,
    required ApigeeSecurityActionConditionConfig conditionConfig,
    required ApigeeSecurityActionEffect effect,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_proxies': ?apiProxies,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'env_id': envId,
           ...?expiration?.argMap,
           'org_id': orgId,
           'security_action_id': securityActionId,
           'state': state,
           'condition_config': TfArg.literal(conditionConfig.encode()),
           ...effect.argMap,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSecurityActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeSecurityAction>`.
  RefTo<GoogleApigeeSecurityAction> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `api_proxies` attribute.
  TfRef<List<String>> get apiProxies =>
      TfRef.attribute<List<String>>(this, 'api_proxies');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `env_id` attribute.
  TfRef<String> get envId => TfRef.attribute<String>(this, 'env_id');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `security_action_id` attribute.
  TfRef<String> get securityActionId =>
      TfRef.attribute<String>(this, 'security_action_id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `ttl` attribute.
  TfRef<String> get ttl => TfRef.attribute<String>(this, 'ttl');
}
