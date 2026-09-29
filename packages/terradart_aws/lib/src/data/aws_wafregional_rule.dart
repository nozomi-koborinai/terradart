// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../wafregional/aws_wafregional_rule.dart';

/// Sensitive field paths for `aws_wafregional_rule`.
const Set<String> _awsWafregionalRuleSensitive = <String>{};

/// Factory wrapper for `aws_wafregional_rule`.
final class DataAwsWafregionalRule extends Data {
  static const String tfType = 'aws_wafregional_rule';

  DataAwsWafregionalRule({
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
  Set<String> get sensitiveFields => _awsWafregionalRuleSensitive;

  /// A reference to the `aws_wafregional_rule` this data source reads, for
  /// arguments typed `RefTo<AwsWafregionalRule>`.
  RefTo<AwsWafregionalRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
