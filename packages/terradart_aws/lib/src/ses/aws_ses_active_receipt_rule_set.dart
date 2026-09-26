// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_active_receipt_rule_set`.
const Set<String> _awsSesActiveReceiptRuleSetSensitive = <String>{};

/// Factory wrapper for `aws_ses_active_receipt_rule_set`.
final class AwsSesActiveReceiptRuleSet extends Resource {
  static const String tfType = 'aws_ses_active_receipt_rule_set';

  AwsSesActiveReceiptRuleSet({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> ruleSetName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'rule_set_name': ruleSetName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesActiveReceiptRuleSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
