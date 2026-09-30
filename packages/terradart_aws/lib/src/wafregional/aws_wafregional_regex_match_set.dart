// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_regex_match_set`.
const Set<String> _awsWafregionalRegexMatchSetSensitive = <String>{};

/// Typed helper for the `regex_match_tuple` block of
/// `aws_wafregional_regex_match_set` (derived from provider schema).
@immutable
final class WafregionalRegexMatchSetRegexMatchTuple {
  const WafregionalRegexMatchSetRegexMatchTuple({
    required this.regexPatternSetId,
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> regexPatternSetId;

  final TfArg<String> textTransformation;

  final WafregionalRegexMatchSetRegexMatchTupleFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'regex_pattern_set_id': regexPatternSetId.toTfJson(),
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `regex_match_tuple.field_to_match` block of
/// `aws_wafregional_regex_match_set` (derived from provider schema).
@immutable
final class WafregionalRegexMatchSetRegexMatchTupleFieldToMatch {
  const WafregionalRegexMatchSetRegexMatchTupleFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafregional_regex_match_set`.
final class AwsWafregionalRegexMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_regex_match_set';

  AwsWafregionalRegexMatchSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalRegexMatchSetRegexMatchTuple>? regexMatchTuple,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           if (regexMatchTuple != null)
             'regex_match_tuple': TfArg.literal([
               for (final e in regexMatchTuple) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalRegexMatchSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalRegexMatchSet>`.
  RefTo<AwsWafregionalRegexMatchSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
