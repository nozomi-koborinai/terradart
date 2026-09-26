// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_waf_size_constraint_set`.
const Set<String> _awsWafSizeConstraintSetSensitive = <String>{};

/// Typed helper for the `size_constraints` block of
/// `aws_waf_size_constraint_set` (derived from provider schema).
@immutable
final class WafSizeConstraintSetSizeConstraints {
  const WafSizeConstraintSetSizeConstraints({
    required this.comparisonOperator,
    required this.size,
    required this.textTransformation,
    required this.fieldToMatch,
  });

  final TfArg<String> comparisonOperator;

  final TfArg<num> size;

  final TfArg<String> textTransformation;

  final WafSizeConstraintSetSizeConstraintsFieldToMatch fieldToMatch;

  Map<String, Object?> encode() => {
    'comparison_operator': comparisonOperator.toTfJson(),
    'size': size.toTfJson(),
    'text_transformation': textTransformation.toTfJson(),
    'field_to_match': fieldToMatch.encode(),
  };
}

/// Typed helper for the `size_constraints.field_to_match` block of
/// `aws_waf_size_constraint_set` (derived from provider schema).
@immutable
final class WafSizeConstraintSetSizeConstraintsFieldToMatch {
  const WafSizeConstraintSetSizeConstraintsFieldToMatch({
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

/// Factory wrapper for `aws_waf_size_constraint_set`.
final class AwsWafSizeConstraintSet extends Resource {
  static const String tfType = 'aws_waf_size_constraint_set';

  AwsWafSizeConstraintSet({
    required super.localName,
    required TfArg<String> name,
    List<WafSizeConstraintSetSizeConstraints>? sizeConstraints,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (sizeConstraints != null)
             'size_constraints': TfArg.literal([
               for (final e in sizeConstraints) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWafSizeConstraintSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
