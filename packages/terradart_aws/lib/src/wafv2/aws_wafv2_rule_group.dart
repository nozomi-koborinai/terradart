// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_rule_group`.
const Set<String> _awsWafv2RuleGroupSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_rule_group`.
final class AwsWafv2RuleGroup extends Resource {
  static const String tfType = 'aws_wafv2_rule_group';

  AwsWafv2RuleGroup({
    required super.localName,
    required TfArg<num> capacity,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<String>? rulesJson,
    required TfArg<String> scope,
    TfArg<Map<String, String>>? tags,
    TfArg<List<Map<String, dynamic>>>? customResponseBody,
    TfArg<List<Map<String, dynamic>>>? rule,
    required TfArg<Map<String, dynamic>> visibilityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capacity': capacity,
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (rulesJson != null) 'rules_json': rulesJson,
           'scope': scope,
           if (tags != null) 'tags': tags,
           if (customResponseBody != null)
             'custom_response_body': customResponseBody,
           if (rule != null) 'rule': rule,
           'visibility_config': visibilityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2RuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
