// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_web_acl_rule`.
const Set<String> _awsWafv2WebAclRuleSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_web_acl_rule`.
final class AwsWafv2WebAclRule extends Resource {
  static const String tfType = 'aws_wafv2_web_acl_rule';

  AwsWafv2WebAclRule({
    required super.localName,
    required TfArg<String> name,
    required TfArg<num> priority,
    TfArg<String>? region,
    required TfArg<String> webAclArn,
    TfArg<List<Map<String, dynamic>>>? action,
    TfArg<List<Map<String, dynamic>>>? captchaConfig,
    TfArg<List<Map<String, dynamic>>>? challengeConfig,
    TfArg<List<Map<String, dynamic>>>? overrideAction,
    TfArg<List<Map<String, dynamic>>>? ruleLabel,
    TfArg<List<Map<String, dynamic>>>? statement,
    TfArg<List<Map<String, dynamic>>>? visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'priority': priority,
           if (region != null) 'region': region,
           'web_acl_arn': webAclArn,
           if (action != null) 'action': action,
           if (captchaConfig != null) 'captcha_config': captchaConfig,
           if (challengeConfig != null) 'challenge_config': challengeConfig,
           if (overrideAction != null) 'override_action': overrideAction,
           if (ruleLabel != null) 'rule_label': ruleLabel,
           if (statement != null) 'statement': statement,
           if (visibilityConfig != null) 'visibility_config': visibilityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2WebAclRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
