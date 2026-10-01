// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl`.
const Set<String> _awsWafv2WebAclSensitive = <String>{};

/// Wafv2 Web Acl enum for `scope`.
enum Wafv2WebAclScope implements TerraformEnum {
  cloudfront('CLOUDFRONT'),
  regional('REGIONAL');

  const Wafv2WebAclScope(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_wafv2_web_acl`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Wafv2WebAclName {
  const Wafv2WebAclName();

  /// Sets `name`.
  const factory Wafv2WebAclName.name(TfArg<String> name) =
      Wafv2WebAclNameChoice;

  /// Sets `name_prefix`.
  const factory Wafv2WebAclName.namePrefix(TfArg<String> namePrefix) =
      Wafv2WebAclNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Wafv2WebAclName.name] choice: sets `name`.
final class Wafv2WebAclNameChoice extends Wafv2WebAclName {
  const Wafv2WebAclNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Wafv2WebAclName.namePrefix] choice: sets `name_prefix`.
final class Wafv2WebAclNamePrefix extends Wafv2WebAclName {
  const Wafv2WebAclNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `association_config` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclAssociationConfig {
  const Wafv2WebAclAssociationConfig({this.requestBody});

  final List<Wafv2WebAclRequestBody>? requestBody;

  Map<String, Object?> encode() => {
    if (requestBody != null)
      'request_body': [for (final e in requestBody!) e.encode()],
  };
}

/// Typed helper for the `association_config.request_body` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclRequestBody {
  const Wafv2WebAclRequestBody({
    this.apiGateway,
    this.appRunnerService,
    this.cloudfront,
    this.cognitoUserPool,
    this.verifiedAccessInstance,
  });

  final Wafv2WebAclApiGateway? apiGateway;

  final Wafv2WebAclApiGateway? appRunnerService;

  final Wafv2WebAclApiGateway? cloudfront;

  final Wafv2WebAclApiGateway? cognitoUserPool;

  final Wafv2WebAclApiGateway? verifiedAccessInstance;

  Map<String, Object?> encode() => {
    'api_gateway': ?apiGateway?.encode(),
    'app_runner_service': ?appRunnerService?.encode(),
    'cloudfront': ?cloudfront?.encode(),
    'cognito_user_pool': ?cognitoUserPool?.encode(),
    'verified_access_instance': ?verifiedAccessInstance?.encode(),
  };
}

/// Typed helper for the `association_config.request_body.api_gateway` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclApiGateway {
  const Wafv2WebAclApiGateway({required this.defaultSizeInspectionLimit});

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

  final Wafv2WebAclImmunityTimeProperty? immunityTimeProperty;

  Map<String, Object?> encode() => {
    'immunity_time_property': ?immunityTimeProperty?.encode(),
  };
}

/// Typed helper for the `captcha_config.immunity_time_property` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclImmunityTimeProperty {
  const Wafv2WebAclImmunityTimeProperty({this.immunityTime});

  final TfArg<num>? immunityTime;

  Map<String, Object?> encode() => {'immunity_time': ?immunityTime?.toTfJson()};
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

  final List<Wafv2WebAclDataProtection>? dataProtection;

  Map<String, Object?> encode() => {
    if (dataProtection != null)
      'data_protection': [for (final e in dataProtection!) e.encode()],
  };
}

/// Typed helper for the `data_protection_config.data_protection` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDataProtection {
  const Wafv2WebAclDataProtection({
    required this.action,
    this.excludeRateBasedDetails,
    this.excludeRuleMatchDetails,
    required this.field,
  });

  final TfArg<Wafv2WebAclAction> action;

  final TfArg<bool>? excludeRateBasedDetails;

  final TfArg<bool>? excludeRuleMatchDetails;

  final Wafv2WebAclField field;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'exclude_rate_based_details': ?excludeRateBasedDetails?.toTfJson(),
    'exclude_rule_match_details': ?excludeRuleMatchDetails?.toTfJson(),
    'field': field.encode(),
  };
}

/// `action` — derived from the provider schema description.
enum Wafv2WebAclAction implements TerraformEnum {
  substitution('SUBSTITUTION'),
  hash('HASH');

  const Wafv2WebAclAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `data_protection_config.data_protection.field` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclField {
  const Wafv2WebAclField({this.fieldKeys, required this.fieldType});

  final TfArg<List<String>>? fieldKeys;

  final TfArg<Wafv2WebAclFieldType> fieldType;

  Map<String, Object?> encode() => {
    'field_keys': ?fieldKeys?.toTfJson(),
    'field_type': fieldType.toTfJson(),
  };
}

/// `field_type` — derived from the provider schema description.
enum Wafv2WebAclFieldType implements TerraformEnum {
  singleHeader('SINGLE_HEADER'),
  singleCookie('SINGLE_COOKIE'),
  singleQueryArgument('SINGLE_QUERY_ARGUMENT'),
  queryString('QUERY_STRING'),
  body('BODY');

  const Wafv2WebAclFieldType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `default_action` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclDefaultAction {
  const Wafv2WebAclDefaultAction({this.allow, this.block});

  final Wafv2WebAclAllow? allow;

  final Wafv2WebAclBlock? block;

  Map<String, Object?> encode() => {
    'allow': ?allow?.encode(),
    'block': ?block?.encode(),
  };
}

/// Typed helper for the `default_action.allow` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclAllow {
  const Wafv2WebAclAllow({this.customRequestHandling});

  final Wafv2WebAclCustomRequestHandling? customRequestHandling;

  Map<String, Object?> encode() => {
    'custom_request_handling': ?customRequestHandling?.encode(),
  };
}

/// Typed helper for the `default_action.allow.custom_request_handling` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclCustomRequestHandling {
  const Wafv2WebAclCustomRequestHandling({required this.insertHeader});

  final List<Wafv2WebAclInsertHeader> insertHeader;

  Map<String, Object?> encode() => {
    'insert_header': [for (final e in insertHeader) e.encode()],
  };
}

/// Typed helper for the `default_action.allow.custom_request_handling.insert_header` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Wafv2WebAclInsertHeader {
  const Wafv2WebAclInsertHeader({required this.name, required this.value});

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
final class Wafv2WebAclBlock {
  const Wafv2WebAclBlock({this.customResponse});

  final Wafv2WebAclCustomResponse? customResponse;

  Map<String, Object?> encode() => {
    'custom_response': ?customResponse?.encode(),
  };
}

/// Typed helper for the `default_action.block.custom_response` block of
/// `aws_wafv2_web_acl` (derived from provider schema).
@immutable
final class Wafv2WebAclCustomResponse {
  const Wafv2WebAclCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeader,
  });

  final TfArg<String>? customResponseBodyKey;

  final TfArg<num> responseCode;

  final List<Wafv2WebAclInsertHeader>? responseHeader;

  Map<String, Object?> encode() => {
    'custom_response_body_key': ?customResponseBodyKey?.toTfJson(),
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

  AwsWafv2WebAcl(
    super.localName, {
    TfArg<String>? description,
    Wafv2WebAclName? name,
    TfArg<String>? region,
    TfArg<String>? ruleJson,
    required TfArg<Wafv2WebAclScope> scope,
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
           'description': ?description,
           ...?name?.argMap,
           'region': ?region,
           'rule_json': ?ruleJson,
           'scope': scope,
           'tags': ?tags,
           'token_domains': ?tokenDomains,
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
           'rule': ?rule,
           'visibility_config': TfArg.literal(visibilityConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafv2WebAcl>`.
  RefTo<AwsWafv2WebAcl> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `rule_json` attribute.
  TfRef<String> get ruleJson => TfRef.attribute<String>(this, 'rule_json');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `token_domains` attribute.
  TfRef<List<String>> get tokenDomains =>
      TfRef.attribute<List<String>>(this, 'token_domains');
}
