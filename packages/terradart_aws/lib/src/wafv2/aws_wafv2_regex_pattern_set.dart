// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafv2_regex_pattern_set`.
const Set<String> _awsWafv2RegexPatternSetSensitive = <String>{};

/// Typed helper for the `regular_expression` block of
/// `aws_wafv2_regex_pattern_set` (derived from provider schema).
@immutable
final class Wafv2RegexPatternSetRegularExpression {
  const Wafv2RegexPatternSetRegularExpression({required this.regexString});

  final TfArg<String> regexString;

  Map<String, Object?> encode() => {'regex_string': regexString.toTfJson()};
}

/// Factory wrapper for `aws_wafv2_regex_pattern_set`.
final class AwsWafv2RegexPatternSet extends Resource {
  static const String tfType = 'aws_wafv2_regex_pattern_set';

  AwsWafv2RegexPatternSet({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    required TfArg<String> scope,
    TfArg<Map<String, String>>? tags,
    List<Wafv2RegexPatternSetRegularExpression>? regularExpression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           'scope': scope,
           if (tags != null) 'tags': tags,
           if (regularExpression != null)
             'regular_expression': TfArg.literal([
               for (final e in regularExpression) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafv2RegexPatternSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `lock_token` attribute.
  TfRef<String> get lockToken => TfRef.attribute<String>(this, 'lock_token');
}
