// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_filter`.
const Set<String> _awsGuarddutyFilterSensitive = <String>{};

/// Guardduty Filter enum for `action`.
enum GuarddutyFilterAction implements TerraformEnum {
  noop('NOOP'),
  archive('ARCHIVE');

  const GuarddutyFilterAction(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<List<String>>? equals;

  final TfArg<String> field;

  final TfArg<String>? greaterThan;

  final TfArg<String>? greaterThanOrEqual;

  final TfArg<String>? lessThan;

  final TfArg<String>? lessThanOrEqual;

  final TfArg<List<String>>? matches;

  final TfArg<List<String>>? notEquals;

  final TfArg<List<String>>? notMatches;

  Map<String, Object?> encode() => {
    'equals': ?equals?.toTfJson(),
    'field': field.toTfJson(),
    'greater_than': ?greaterThan?.toTfJson(),
    'greater_than_or_equal': ?greaterThanOrEqual?.toTfJson(),
    'less_than': ?lessThan?.toTfJson(),
    'less_than_or_equal': ?lessThanOrEqual?.toTfJson(),
    'matches': ?matches?.toTfJson(),
    'not_equals': ?notEquals?.toTfJson(),
    'not_matches': ?notMatches?.toTfJson(),
  };
}

/// Factory wrapper for `aws_guardduty_filter`.
final class AwsGuarddutyFilter extends Resource {
  static const String tfType = 'aws_guardduty_filter';

  AwsGuarddutyFilter({
    required super.localName,
    required TfArg<GuarddutyFilterAction> action,
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
           'description': ?description,
           'detector_id': detectorId,
           'name': name,
           'rank': rank,
           'region': ?region,
           'tags': ?tags,
           'finding_criteria': TfArg.literal(findingCriteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGuarddutyFilter>`.
  RefTo<AwsGuarddutyFilter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `detector_id` attribute.
  TfRef<String> get detectorIdRef =>
      TfRef.attribute<String>(this, 'detector_id');

  /// Reference to `rank` attribute.
  TfRef<num> get rankRef => TfRef.attribute<num>(this, 'rank');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
