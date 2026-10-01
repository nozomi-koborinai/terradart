// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_wafregional_byte_match_set`.
const Set<String> _awsWafregionalByteMatchSetSensitive = <String>{};

/// Typed helper for the `byte_match_tuples` block of
/// `aws_wafregional_byte_match_set` (derived from provider schema).
@immutable
final class WafregionalByteMatchSetByteMatchTuples {
  const WafregionalByteMatchSetByteMatchTuples({
    required this.positionalConstraint,
    this.targetString,
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> positionalConstraint;

  final TfArg<String>? targetString;

  final TfArg<String> textTransformation;

  final WafregionalByteMatchSetFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'positional_constraint': positionalConstraint.toTfJson(),
    'target_string': ?targetString?.toTfJson(),
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `byte_match_tuples.field_to_match` block of
/// `aws_wafregional_byte_match_set` (derived from provider schema).
@immutable
final class WafregionalByteMatchSetFieldToMatch {
  const WafregionalByteMatchSetFieldToMatch({this.data, required this.type});

  final TfArg<String>? data;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'data': ?data?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_wafregional_byte_match_set`.
final class AwsWafregionalByteMatchSet extends Resource {
  static const String tfType = 'aws_wafregional_byte_match_set';

  AwsWafregionalByteMatchSet(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    List<WafregionalByteMatchSetByteMatchTuples>? byteMatchTuples,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           if (byteMatchTuples != null)
             'byte_match_tuples': TfArg.literal([
               for (final e in byteMatchTuples) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafregionalByteMatchSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsWafregionalByteMatchSet>`.
  RefTo<AwsWafregionalByteMatchSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
