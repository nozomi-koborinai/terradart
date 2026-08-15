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

  final TfArg<List<Object?>>? accessTokens;

  final TfArg<List<Object?>>? apiKeys;

  final TfArg<List<Object?>>? apiProducts;

  final TfArg<List<Object?>>? asns;

  final TfArg<List<Object?>>? botReasons;

  final TfArg<List<Object?>>? developerApps;

  final TfArg<List<Object?>>? developers;

  final TfArg<List<Object?>>? httpMethods;

  final TfArg<List<Object?>>? ipAddressRanges;

  final TfArg<List<Object?>>? regionCodes;

  final TfArg<List<Object?>>? userAgents;

  Map<String, Object?> encode() => {
    if (accessTokens != null) 'access_tokens': accessTokens!.toTfJson(),
    if (apiKeys != null) 'api_keys': apiKeys!.toTfJson(),
    if (apiProducts != null) 'api_products': apiProducts!.toTfJson(),
    if (asns != null) 'asns': asns!.toTfJson(),
    if (botReasons != null) 'bot_reasons': botReasons!.toTfJson(),
    if (developerApps != null) 'developer_apps': developerApps!.toTfJson(),
    if (developers != null) 'developers': developers!.toTfJson(),
    if (httpMethods != null) 'http_methods': httpMethods!.toTfJson(),
    if (ipAddressRanges != null)
      'ip_address_ranges': ipAddressRanges!.toTfJson(),
    if (regionCodes != null) 'region_codes': regionCodes!.toTfJson(),
    if (userAgents != null) 'user_agents': userAgents!.toTfJson(),
  };
}

/// Typed helper for the `deny` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionDeny {
  const ApigeeSecurityActionDeny({this.responseCode});

  final TfArg<num>? responseCode;

  Map<String, Object?> encode() => {
    if (responseCode != null) 'response_code': responseCode!.toTfJson(),
  };
}

/// Typed helper for the `flag` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionFlag {
  const ApigeeSecurityActionFlag({this.headers});

  final List<ApigeeSecurityActionFlagHeaders>? headers;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
  };
}

/// Typed helper for the `flag.headers` block of
/// `google_apigee_security_action` (derived from provider schema).
@immutable
final class ApigeeSecurityActionFlagHeaders {
  const ApigeeSecurityActionFlagHeaders({this.name, this.value});

  final TfArg<String>? name;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    TfArg<String>? expireTime,
    required TfArg<String> orgId,
    required TfArg<String> securityActionId,
    required TfArg<ApigeeSecurityActionState> state,
    TfArg<String>? ttl,
    required ApigeeSecurityActionConditionConfig conditionConfig,
    ApigeeSecurityActionDeny? deny,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (apiProxies != null) 'api_proxies': apiProxies,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'env_id': envId,
           if (expireTime != null) 'expire_time': expireTime,
           'org_id': orgId,
           'security_action_id': securityActionId,
           'state': state,
           if (ttl != null) 'ttl': ttl,
           'condition_config': TfArg.literal(conditionConfig.encode()),
           if (deny != null) 'deny': TfArg.literal(deny.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSecurityActionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
