// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_byte_match_set`.
const Set<String> _awsWafByteMatchSetSensitive = <String>{};

/// Typed helper for the `byte_match_tuples` block of
/// `aws_waf_byte_match_set` (derived from provider schema).
@immutable
final class WafByteMatchSetByteMatchTuples {
  const WafByteMatchSetByteMatchTuples({
    required this.positionalConstraint,
    this.targetString,
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> positionalConstraint;

  final TfArg<String>? targetString;

  final TfArg<String> textTransformation;

  final WafByteMatchSetByteMatchTuplesFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'positional_constraint': positionalConstraint.toTfJson(),
    if (targetString != null) 'target_string': targetString!.toTfJson(),
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `byte_match_tuples.field_to_match` block of
/// `aws_waf_byte_match_set` (derived from provider schema).
@immutable
final class WafByteMatchSetByteMatchTuplesFieldToMatch {
  const WafByteMatchSetByteMatchTuplesFieldToMatch({
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

/// Factory wrapper for `aws_waf_byte_match_set`.
final class AwsWafByteMatchSet extends Resource {
  static const String tfType = 'aws_waf_byte_match_set';

  AwsWafByteMatchSet({
    required super.localName,
    required TfArg<String> name,
    List<WafByteMatchSetByteMatchTuples>? byteMatchTuples,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (byteMatchTuples != null)
             'byte_match_tuples': TfArg.literal([
               for (final e in byteMatchTuples) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafByteMatchSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
