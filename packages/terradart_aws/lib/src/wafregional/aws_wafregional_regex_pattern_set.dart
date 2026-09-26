// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_regex_pattern_set`.
const Set<String> _awsWafregionalRegexPatternSetSensitive = <String>{};

/// Factory wrapper for `aws_wafregional_regex_pattern_set`.
final class AwsWafregionalRegexPatternSet extends Resource {
  static const String tfType = 'aws_wafregional_regex_pattern_set';

  AwsWafregionalRegexPatternSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<List<String>>? regexPatternStrings,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (regexPatternStrings != null)
             'regex_pattern_strings': regexPatternStrings,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalRegexPatternSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
