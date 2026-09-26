// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_filter`.
const Set<String> _awsGuarddutyFilterSensitive = <String>{};

/// Typed helper for the `finding_criteria` block of
/// `aws_guardduty_filter` (derived from provider schema).
@immutable
final class GuarddutyFilterFindingCriteria {
  const GuarddutyFilterFindingCriteria({required this.criterion});

  final List<GuarddutyFilterFindingCriteriaCriterion> criterion;

  Map<String, Object?> encode() => {
    'criterion': [for (final e in criterion) e.encode()],
  };
}

/// Typed helper for the `finding_criteria.criterion` block of
/// `aws_guardduty_filter` (derived from provider schema).
@immutable
final class GuarddutyFilterFindingCriteriaCriterion {
  const GuarddutyFilterFindingCriteriaCriterion({
    this.equals,
    required this.field,
    this.greaterThan,
    this.greaterThanOrEqual,
    this.lessThan,
    this.lessThanOrEqual,
    this.matches,
    this.notEquals,
    this.notMatches,
  });

  final TfArg<List<Object?>>? equals;

  final TfArg<String> field;

  final TfArg<String>? greaterThan;

  final TfArg<String>? greaterThanOrEqual;

  final TfArg<String>? lessThan;

  final TfArg<String>? lessThanOrEqual;

  final TfArg<List<Object?>>? matches;

  final TfArg<List<Object?>>? notEquals;

  final TfArg<List<Object?>>? notMatches;

  Map<String, Object?> encode() => {
    if (equals != null) 'equals': equals!.toTfJson(),
    'field': field.toTfJson(),
    if (greaterThan != null) 'greater_than': greaterThan!.toTfJson(),
    if (greaterThanOrEqual != null)
      'greater_than_or_equal': greaterThanOrEqual!.toTfJson(),
    if (lessThan != null) 'less_than': lessThan!.toTfJson(),
    if (lessThanOrEqual != null)
      'less_than_or_equal': lessThanOrEqual!.toTfJson(),
    if (matches != null) 'matches': matches!.toTfJson(),
    if (notEquals != null) 'not_equals': notEquals!.toTfJson(),
    if (notMatches != null) 'not_matches': notMatches!.toTfJson(),
  };
}

/// Factory wrapper for `aws_guardduty_filter`.
final class AwsGuarddutyFilter extends Resource {
  static const String tfType = 'aws_guardduty_filter';

  AwsGuarddutyFilter({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? description,
    required TfArg<String> detectorId,
    required TfArg<String> name,
    required TfArg<num> rank,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required GuarddutyFilterFindingCriteria findingCriteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (description != null) 'description': description,
           'detector_id': detectorId,
           'name': name,
           'rank': rank,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'finding_criteria': TfArg.literal(findingCriteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyFilterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
