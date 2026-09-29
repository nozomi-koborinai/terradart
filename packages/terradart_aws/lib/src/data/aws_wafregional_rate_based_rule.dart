// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../wafregional/aws_wafregional_rate_based_rule.dart';

/// Sensitive field paths for `aws_wafregional_rate_based_rule`.
const Set<String> _awsWafregionalRateBasedRuleSensitive = <String>{};

/// Factory wrapper for `aws_wafregional_rate_based_rule`.
final class DataAwsWafregionalRateBasedRule extends Data {
  static const String tfType = 'aws_wafregional_rate_based_rule';

  DataAwsWafregionalRateBasedRule({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalRateBasedRuleSensitive;

  /// A reference to the `aws_wafregional_rate_based_rule` this data source reads, for
  /// arguments typed `RefTo<AwsWafregionalRateBasedRule>`.
  // ignore: invalid_use_of_internal_member
  RefTo<AwsWafregionalRateBasedRule> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
