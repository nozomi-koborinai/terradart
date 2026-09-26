// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lakeformation_lf_tag_expression`.
const Set<String> _awsLakeformationLfTagExpressionSensitive = <String>{};

/// Typed helper for the `expression` block of
/// `aws_lakeformation_lf_tag_expression` (derived from provider schema).
@immutable
final class LakeformationLfTagExpressionExpression {
  const LakeformationLfTagExpressionExpression({
    required this.tagKey,
    required this.tagValues,
  });

  final TfArg<String> tagKey;

  final TfArg<List<Object?>> tagValues;

  Map<String, Object?> encode() => {
    'tag_key': tagKey.toTfJson(),
    'tag_values': tagValues.toTfJson(),
  };
}

/// Factory wrapper for `aws_lakeformation_lf_tag_expression`.
///
/// Manages an AWS Lake Formation Tag Expression.
final class AwsLakeformationLfTagExpression extends Resource {
  static const String tfType = 'aws_lakeformation_lf_tag_expression';

  AwsLakeformationLfTagExpression({
    required super.localName,
    TfArg<String>? catalogId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    List<LakeformationLfTagExpressionExpression>? expression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (catalogId != null) 'catalog_id': catalogId,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (expression != null)
             'expression': TfArg.literal([
               for (final e in expression) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationLfTagExpressionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
