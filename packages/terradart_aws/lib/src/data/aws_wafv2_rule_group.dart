// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_rule_group`.
const Set<String> _awsWafv2RuleGroupSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_rule_group`.
final class DataAwsWafv2RuleGroup extends Data {
  static const String tfType = 'aws_wafv2_rule_group';

  DataAwsWafv2RuleGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'scope': scope,
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

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');
}
