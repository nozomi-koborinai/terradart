// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl`.
const Set<String> _awsWafv2WebAclSensitive = <String>{};

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
    TfArg<Map<String, dynamic>>? associationConfig,
    TfArg<Map<String, dynamic>>? captchaConfig,
    TfArg<Map<String, dynamic>>? challengeConfig,
    TfArg<List<Map<String, dynamic>>>? customResponseBody,
    TfArg<Map<String, dynamic>>? dataProtectionConfig,
    required TfArg<Map<String, dynamic>> defaultAction,
    TfArg<List<Map<String, dynamic>>>? rule,
    required TfArg<Map<String, dynamic>> visibilityConfig,
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
             'association_config': associationConfig,
           if (captchaConfig != null) 'captcha_config': captchaConfig,
           if (challengeConfig != null) 'challenge_config': challengeConfig,
           if (customResponseBody != null)
             'custom_response_body': customResponseBody,
           if (dataProtectionConfig != null)
             'data_protection_config': dataProtectionConfig,
           'default_action': defaultAction,
           if (rule != null) 'rule': rule,
           'visibility_config': visibilityConfig,
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
