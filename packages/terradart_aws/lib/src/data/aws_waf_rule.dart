// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../waf/aws_waf_rule.dart';

/// Sensitive field paths for `aws_waf_rule`.
const Set<String> _awsWafRuleSensitive = <String>{};

/// Factory wrapper for `aws_waf_rule`.
final class DataAwsWafRule extends Data {
  static const String tfType = 'aws_waf_rule';

  DataAwsWafRule({
    required super.localName,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields => _awsWafRuleSensitive;

  /// A reference to the `aws_waf_rule` this data source reads, for
  /// arguments typed `RefTo<AwsWafRule>`.
  RefTo<AwsWafRule> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
