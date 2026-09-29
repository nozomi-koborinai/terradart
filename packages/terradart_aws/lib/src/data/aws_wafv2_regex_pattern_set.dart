// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../wafv2/aws_wafv2_regex_pattern_set.dart';

/// Sensitive field paths for `aws_wafv2_regex_pattern_set`.
const Set<String> _awsWafv2RegexPatternSetSensitive = <String>{};

/// Factory wrapper for `aws_wafv2_regex_pattern_set`.
final class DataAwsWafv2RegexPatternSet extends Data {
  static const String tfType = 'aws_wafv2_regex_pattern_set';

  DataAwsWafv2RegexPatternSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> scope,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'scope': scope,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2RegexPatternSetSensitive;

  /// A reference to the `aws_wafv2_regex_pattern_set` this data source reads, for
  /// arguments typed `RefTo<AwsWafv2RegexPatternSet>`.
  // ignore: invalid_use_of_internal_member
  RefTo<AwsWafv2RegexPatternSet> get ref => RefTo.read(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `regular_expression` attribute.
  TfRef<List<Map<String, Object?>>> get regularExpression =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'regular_expression');
}
