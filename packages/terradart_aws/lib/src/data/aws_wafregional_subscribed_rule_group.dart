// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_subscribed_rule_group`.
const Set<String> _awsWafregionalSubscribedRuleGroupSensitive = <String>{};

/// Factory wrapper for `aws_wafregional_subscribed_rule_group`.
final class DataAwsWafregionalSubscribedRuleGroup extends Data {
  static const String tfType = 'aws_wafregional_subscribed_rule_group';

  DataAwsWafregionalSubscribedRuleGroup({
    required super.localName,
    TfArg<String>? metricName,
    TfArg<String>? name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (metricName != null) 'metric_name': metricName,
           if (name != null) 'name': name,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWafregionalSubscribedRuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
