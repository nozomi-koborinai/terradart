// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_xss_match_set`.
const Set<String> _awsWafregionalXssMatchSetSensitive = <String>{};

/// Typed helper for the `xss_match_tuple` block of
/// `aws_wafregional_xss_match_set` (derived from provider schema).
@immutable
final class WafregionalXssMatchSetXssMatchTuple {
  const WafregionalXssMatchSetXssMatchTuple({
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> textTransformation;

  final WafregionalXssMatchSetXssMatchTupleFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `xss_match_tuple.field_to_match` block of
/// `aws_wafregional_xss_match_set` (derived from provider schema).
@immutable
final class WafregionalXssMatchSetXssMatchTupleFieldToMatch {
  const WafregionalXssMatchSetXssMatchTupleFieldToMatch({
    this.data,
    required this.type,
  });

  final TfArg<String>? data;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (data != null) 'data': data!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafregional_xss_match_set`.
final class AwsWafregionalXssMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_xss_match_set';

  AwsWafregionalXssMatchSet({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalXssMatchSetXssMatchTuple>? xssMatchTuple,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           if (xssMatchTuple != null)
             'xss_match_tuple': TfArg.literal([
               for (final e in xssMatchTuple) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalXssMatchSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
