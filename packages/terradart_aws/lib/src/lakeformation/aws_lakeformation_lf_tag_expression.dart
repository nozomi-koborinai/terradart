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
final class LakeformationLfTagExpression {
  const LakeformationLfTagExpression({
    required this.tagKey,
    required this.tagValues,
  });

  final TfArg<String> tagKey;

  final TfArg<List<String>> tagValues;

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
    List<LakeformationLfTagExpression>? expression,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog_id': ?catalogId,
           'description': ?description,
           'name': name,
           'region': ?region,
           if (expression != null)
             'expression': TfArg.literal([
               for (final e in expression) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLakeformationLfTagExpressionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLakeformationLfTagExpression>`.
  RefTo<AwsLakeformationLfTagExpression> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `catalog_id` attribute.
  TfRef<String> get catalogIdRef => TfRef.attribute<String>(this, 'catalog_id');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
