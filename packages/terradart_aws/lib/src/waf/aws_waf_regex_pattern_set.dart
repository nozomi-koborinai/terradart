// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_regex_pattern_set`.
const Set<String> _awsWafRegexPatternSetSensitive = <String>{};

/// Factory wrapper for `aws_waf_regex_pattern_set`.
final class AwsWafRegexPatternSet extends Resource {
  static const String tfType = 'aws_waf_regex_pattern_set';

  AwsWafRegexPatternSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<List<String>>? regexPatternStrings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'regex_pattern_strings': ?regexPatternStrings},
       );

  @override
  Set<String> get sensitiveFields => _awsWafRegexPatternSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafRegexPatternSet>`.
  RefTo<AwsWafRegexPatternSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `regex_pattern_strings` attribute.
  TfRef<List<String>> get regexPatternStringsRef =>
      TfRef.attribute<List<String>>(this, 'regex_pattern_strings');
}
