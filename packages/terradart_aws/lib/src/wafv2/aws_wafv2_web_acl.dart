// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl`.
const Set<String> _awsWafv2WebAclSensitive = <String>{};

/// Typed helper for the `association_config` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclAssociationConfig {
  const Wafv2WebAclAssociationConfig({this.requestBody});

  final List<Wafv2WebAclAssociationConfigRequestBody>? requestBody;

  Map<String, Object?> encode() => {
    if (requestBody != null)
      'request_body': [for (final e in requestBody!) e.encode()],
  };
}

/// Typed helper for the `association_config.request_body` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclAssociationConfigRequestBody {
  const Wafv2WebAclAssociationConfigRequestBody({
    this.apiGateway,
    this.appRunnerService,
    this.cloudfront,
    this.cognitoUserPool,
    this.verifiedAccessInstance,
  });

  final Wafv2WebAclAssociationConfigRequestBodyApiGateway? apiGateway;

  final Wafv2WebAclAssociationConfigRequestBodyApiGateway? appRunnerService;

  final Wafv2WebAclAssociationConfigRequestBodyApiGateway? cloudfront;

  final Wafv2WebAclAssociationConfigRequestBodyApiGateway? cognitoUserPool;

  final Wafv2WebAclAssociationConfigRequestBodyApiGateway?
  verifiedAccessInstance;

  Map<String, Object?> encode() => {
    if (apiGateway != null) 'api_gateway': apiGateway!.encode(),
    if (appRunnerService != null)
      'app_runner_service': appRunnerService!.encode(),
    if (cloudfront != null) 'cloudfront': cloudfront!.encode(),
    if (cognitoUserPool != null) 'cognito_user_pool': cognitoUserPool!.encode(),
    if (verifiedAccessInstance != null)
      'verified_access_instance': verifiedAccessInstance!.encode(),
  };
}

/// Typed helper for the `association_config.request_body.api_gateway` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclAssociationConfigRequestBodyApiGateway {
  const Wafv2WebAclAssociationConfigRequestBodyApiGateway({
    required this.defaultSizeInspectionLimit,
  });

  final TfArg<String> defaultSizeInspectionLimit;

  Map<String, Object?> encode() => {
    'default_size_inspection_limit': defaultSizeInspectionLimit.toTfJson(),
  };
}

/// Typed helper for the `captcha_config` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclCaptchaConfig {
  const Wafv2WebAclCaptchaConfig({this.immunityTimeProperty});

  final Wafv2WebAclCaptchaConfigImmunityTimeProperty? immunityTimeProperty;

  Map<String, Object?> encode() => {
    if (immunityTimeProperty != null)
      'immunity_time_property': immunityTimeProperty!.encode(),
  };
}

/// Typed helper for the `captcha_config.immunity_time_property` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclCaptchaConfigImmunityTimeProperty {
  const Wafv2WebAclCaptchaConfigImmunityTimeProperty({this.immunityTime});

  final TfArg<num>? immunityTime;

  Map<String, Object?> encode() => {
    if (immunityTime != null) 'immunity_time': immunityTime!.toTfJson(),
  };
}

/// Typed helper for the `custom_response_body` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclCustomResponseBody {
  const Wafv2WebAclCustomResponseBody({
    required this.content,
    required this.contentType,
    required this.key,
  });

  final TfArg<String> content;

  final TfArg<String> contentType;

  final TfArg<String> key;

  Map<String, Object?> encode() => {
    'content': content.toTfJson(),
    'content_type': contentType.toTfJson(),
    'key': key.toTfJson(),
  };
}

/// Typed helper for the `data_protection_config` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDataProtectionConfig {
  const Wafv2WebAclDataProtectionConfig({this.dataProtection});

  final List<Wafv2WebAclDataProtectionConfigDataProtection>? dataProtection;

  Map<String, Object?> encode() => {
    if (dataProtection != null)
      'data_protection': [for (final e in dataProtection!) e.encode()],
  };
}

/// Typed helper for the `data_protection_config.data_protection` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDataProtectionConfigDataProtection {
  const Wafv2WebAclDataProtectionConfigDataProtection({
    required this.action,
    this.excludeRateBasedDetails,
    this.excludeRuleMatchDetails,
    required this.field,
  });

  final TfArg<String> action;

  final TfArg<bool>? excludeRateBasedDetails;

  final TfArg<bool>? excludeRuleMatchDetails;

  final Wafv2WebAclDataProtectionConfigDataProtectionField field;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    if (excludeRateBasedDetails != null)
      'exclude_rate_based_details': excludeRateBasedDetails!.toTfJson(),
    if (excludeRuleMatchDetails != null)
      'exclude_rule_match_details': excludeRuleMatchDetails!.toTfJson(),
    'field': field.encode(),
  };
}

/// Typed helper for the `data_protection_config.data_protection.field` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDataProtectionConfigDataProtectionField {
  const Wafv2WebAclDataProtectionConfigDataProtectionField({
    this.fieldKeys,
    required this.fieldType,
  });

  final TfArg<List<Object?>>? fieldKeys;

  final TfArg<String> fieldType;

  Map<String, Object?> encode() => {
    if (fieldKeys != null) 'field_keys': fieldKeys!.toTfJson(),
    'field_type': fieldType.toTfJson(),
  };
}

/// Typed helper for the `default_action` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDefaultAction {
  const Wafv2WebAclDefaultAction({this.allow, this.block});

  final Wafv2WebAclDefaultActionAllow? allow;

  final Wafv2WebAclDefaultActionBlock? block;

  Map<String, Object?> encode() => {
    if (allow != null) 'allow': allow!.encode(),
    if (block != null) 'block': block!.encode(),
  };
}

/// Typed helper for the `default_action.allow` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDefaultActionAllow {
  const Wafv2WebAclDefaultActionAllow({this.customRequestHandling});

  final Wafv2WebAclDefaultActionAllowCustomRequestHandling?
  customRequestHandling;

  Map<String, Object?> encode() => {
    if (customRequestHandling != null)
      'custom_request_handling': customRequestHandling!.encode(),
  };
}

/// Typed helper for the `default_action.allow.custom_request_handling` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDefaultActionAllowCustomRequestHandling {
  const Wafv2WebAclDefaultActionAllowCustomRequestHandling({
    required this.insertHeader,
  });

  final List<Wafv2WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>
  insertHeader;

  Map<String, Object?> encode() => {
    'insert_header': [for (final e in insertHeader) e.encode()],
  };
}

/// Typed helper for the `default_action.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclDefaultActionAllowCustomRequestHandlingInsertHeader {
  const Wafv2WebAclDefaultActionAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  final TfArg<String> name;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `default_action.block` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDefaultActionBlock {
  const Wafv2WebAclDefaultActionBlock({this.customResponse});

  final Wafv2WebAclDefaultActionBlockCustomResponse? customResponse;

  Map<String, Object?> encode() => {
    if (customResponse != null) 'custom_response': customResponse!.encode(),
  };
}

/// Typed helper for the `default_action.block.custom_response` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDefaultActionBlockCustomResponse {
  const Wafv2WebAclDefaultActionBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<Wafv2WebAclDefaultActionAllowCustomRequestHandlingInsertHeader>?
  responseHeader;

  Map<String, Object?> encode() => {
    if (customResponseBodyKey != null)
      'custom_response_body_key': customResponseBodyKey!.toTfJson(),
    'response_code': responseCode.toTfJson(),
    if (responseHeader != null)
      'response_header': [for (final e in responseHeader!) e.encode()],
  };
}

/// Typed helper for the `visibility_config` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclVisibilityConfig {
  const Wafv2WebAclVisibilityConfig({
    required this.cloudwatchMetricsEnabled,
    required this.metricName,
    required this.sampledRequestsEnabled,
  });

  final TfArg<bool> cloudwatchMetricsEnabled;

  final TfArg<String> metricName;

  final TfArg<bool> sampledRequestsEnabled;

  Map<String, Object?> encode() => {
    'cloudwatch_metrics_enabled': cloudwatchMetricsEnabled.toTfJson(),
    'metric_name': metricName.toTfJson(),
    'sampled_requests_enabled': sampledRequestsEnabled.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafv2_web_acl`.
final class AwsWafv2WebAcl extends Resource {
  static const String tfType = 'aws_wafv2_web_acl';

  AwsWafv2WebAcl({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<String>? ruleJson,
    required TfArg<String> scope,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? tokenDomains,
    Wafv2WebAclAssociationConfig? associationConfig,
    Wafv2WebAclCaptchaConfig? captchaConfig,
    Wafv2WebAclCaptchaConfig? challengeConfig,
    List<Wafv2WebAclCustomResponseBody>? customResponseBody,
    Wafv2WebAclDataProtectionConfig? dataProtectionConfig,
    required Wafv2WebAclDefaultAction defaultAction,
    TfArg<List<Map<String, dynamic>>>? rule,
    required Wafv2WebAclVisibilityConfig visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (ruleJson != null) 'rule_json': ruleJson,
           'scope': scope,
           if (tags != null) 'tags': tags,
           if (tokenDomains != null) 'token_domains': tokenDomains,
           if (associationConfig != null)
             'association_config': TfArg.literal(associationConfig.encode()),
           if (captchaConfig != null)
             'captcha_config': TfArg.literal(captchaConfig.encode()),
           if (challengeConfig != null)
             'challenge_config': TfArg.literal(challengeConfig.encode()),
           if (customResponseBody != null)
             'custom_response_body': TfArg.literal([
               for (final e in customResponseBody) e.encode(),
             ]),
           if (dataProtectionConfig != null)
             'data_protection_config': TfArg.literal(
               dataProtectionConfig.encode(),
             ),
           'default_action': TfArg.literal(defaultAction.encode()),
           if (rule != null) 'rule': rule,
           'visibility_config': TfArg.literal(visibilityConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_integration_url` attribute.
  TfRef<String> get applicationIntegrationUrl =>
      TfRef.attribute<String>(this, 'application_integration_url');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
