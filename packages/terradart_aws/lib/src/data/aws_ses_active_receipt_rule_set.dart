// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_active_receipt_rule_set`.
const Set<String> _awsSesActiveReceiptRuleSetSensitive = <String>{};

/// Factory wrapper for `aws_ses_active_receipt_rule_set`.
final class DataAwsSesActiveReceiptRuleSet extends Data {
  static const String tfType = 'aws_ses_active_receipt_rule_set';

  DataAwsSesActiveReceiptRuleSet({
    required super.localName,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsSesActiveReceiptRuleSetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `rule_set_name` attribute.
  TfRef<String> get ruleSetName =>
      TfRef.attribute<String>(this, 'rule_set_name');
}
