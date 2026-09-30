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
         argMap: {'metric_name': ?metricName, 'name': ?name, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWafregionalSubscribedRuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricNameRef =>
      TfRef.attribute<String>(this, 'metric_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
