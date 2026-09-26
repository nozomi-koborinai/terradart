// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_rate_based_rule`.
const Set<String> _awsWafRateBasedRuleSensitive = <String>{};

/// Factory wrapper for `aws_waf_rate_based_rule`.
final class DataAwsWafRateBasedRule extends Data {
  static const String tfType = 'aws_waf_rate_based_rule';

  DataAwsWafRateBasedRule({
    required super.localName,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _awsWafRateBasedRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
