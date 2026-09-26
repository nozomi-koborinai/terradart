// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_managed_rule_group`.
const Set<String> _awsWafv2ManagedRuleGroupSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_managed_rule_group`.
final class DataAwsWafv2ManagedRuleGroup extends Data {
  static const String tfType = 'aws_wafv2_managed_rule_group';

  DataAwsWafv2ManagedRuleGroup({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> scope,
    required TfArg<String> vendorName,
    TfArg<String>? versionName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'scope': scope,
           'vendor_name': vendorName,
           if (versionName != null) 'version_name': versionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2ManagedRuleGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `available_labels` attribute.
  TfRef<List<Map<String, Object?>>> get availableLabels =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'available_labels');

  /// Reference to `capacity` attribute.
  TfRef<num> get capacity => TfRef.attribute<num>(this, 'capacity');

  /// Reference to `consumed_labels` attribute.
  TfRef<List<Map<String, Object?>>> get consumedLabels =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'consumed_labels');

  /// Reference to `label_namespace` attribute.
  TfRef<String> get labelNamespace =>
      TfRef.attribute<String>(this, 'label_namespace');

  /// Reference to `rules` attribute.
  TfRef<List<Map<String, Object?>>> get rules =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rules');

  /// Reference to `sns_topic_arn` attribute.
  TfRef<String> get snsTopicArn =>
      TfRef.attribute<String>(this, 'sns_topic_arn');
}
