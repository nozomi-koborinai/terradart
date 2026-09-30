// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_subscribed_rule_group`.
const Set<String> _awsWafSubscribedRuleGroupSensitive = <String>{};

/// Factory wrapper for `aws_waf_subscribed_rule_group`.
final class DataAwsWafSubscribedRuleGroup extends Data {
  static const String tfType = 'aws_waf_subscribed_rule_group';

  DataAwsWafSubscribedRuleGroup({
    required super.localName,
    TfArg<String>? metricName,
    TfArg<String>? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'metric_name': ?metricName, 'name': ?name},
       );

  @override
  Set<String> get sensitiveFields => _awsWafSubscribedRuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `metric_name` attribute.
  TfRef<String> get metricNameRef =>
      TfRef.attribute<String>(this, 'metric_name');
}
