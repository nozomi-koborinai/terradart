// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_classification_job`.
const Set<String> _awsMacie2ClassificationJobSensitive = <String>{};

/// Macie2 Classification Job Job enum for `job_status`.
enum Macie2ClassificationJobJobStatus implements TerraformEnum {
  cancelled('CANCELLED'),
  running('RUNNING'),
  userPaused('USER_PAUSED');

  const Macie2ClassificationJobJobStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Macie2 Classification Job Job enum for `job_type`.
enum Macie2ClassificationJobJobType implements TerraformEnum {
  oneTime('ONE_TIME'),
  scheduled('SCHEDULED');

  const Macie2ClassificationJobJobType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_macie2_classification_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class Macie2ClassificationJobName {
  const Macie2ClassificationJobName();

  /// Sets `name`.
  const factory Macie2ClassificationJobName.name(TfArg<String> name) =
      Macie2ClassificationJobNameChoice;

  /// Sets `name_prefix`.
  const factory Macie2ClassificationJobName.namePrefix(
    TfArg<String> namePrefix,
  ) = Macie2ClassificationJobNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [Macie2ClassificationJobName.name] choice: sets `name`.
final class Macie2ClassificationJobNameChoice
    extends Macie2ClassificationJobName {
  const Macie2ClassificationJobNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [Macie2ClassificationJobName.namePrefix] choice: sets `name_prefix`.
final class Macie2ClassificationJobNamePrefix
    extends Macie2ClassificationJobName {
  const Macie2ClassificationJobNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// Typed helper for the `s3_job_definition` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinition {
  const Macie2ClassificationJobS3JobDefinition({this.bucket, this.scoping});

  final Macie2ClassificationJobS3JobDefinitionBucket? bucket;

  final Macie2ClassificationJobS3JobDefinitionScoping? scoping;

  Map<String, Object?> encode() => {
    ...?bucket?.encode(),
    'scoping': ?scoping?.encode(),
  };
}

/// At most one of `bucket_criteria`, `bucket_definitions` on the `s3_job_definition` block of `aws_macie2_classification_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.bucketCriteria(...)`.
sealed class Macie2ClassificationJobS3JobDefinitionBucket {
  const Macie2ClassificationJobS3JobDefinitionBucket();

  /// Sets `bucket_criteria`.
  const factory Macie2ClassificationJobS3JobDefinitionBucket.bucketCriteria(
    Macie2ClassificationJobS3JobDefinitionBucketCriteria bucketCriteria,
  ) = Macie2ClassificationJobS3JobDefinitionBucketCriteriaChoice;

  /// Sets `bucket_definitions`.
  const factory Macie2ClassificationJobS3JobDefinitionBucket.bucketDefinitions(
    List<Macie2ClassificationJobS3JobDefinitionBucketDefinitions>
    bucketDefinitions,
  ) = Macie2ClassificationJobS3JobDefinitionBucketDefinitionsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Macie2ClassificationJobS3JobDefinitionBucket.bucketCriteria] choice: sets `bucket_criteria`.
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaChoice
    extends Macie2ClassificationJobS3JobDefinitionBucket {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaChoice(
    this.bucketCriteria,
  );

  final Macie2ClassificationJobS3JobDefinitionBucketCriteria bucketCriteria;

  @override
  String get blockKey => 'bucket_criteria';

  @override
  Map<String, Object?> encode() => {'bucket_criteria': bucketCriteria.encode()};
}

/// The [Macie2ClassificationJobS3JobDefinitionBucket.bucketDefinitions] choice: sets `bucket_definitions`.
final class Macie2ClassificationJobS3JobDefinitionBucketDefinitionsChoice
    extends Macie2ClassificationJobS3JobDefinitionBucket {
  const Macie2ClassificationJobS3JobDefinitionBucketDefinitionsChoice(
    this.bucketDefinitions,
  );

  final List<Macie2ClassificationJobS3JobDefinitionBucketDefinitions>
  bucketDefinitions;

  @override
  String get blockKey => 'bucket_definitions';

  @override
  Map<String, Object?> encode() => {
    'bucket_definitions': [for (final e in bucketDefinitions) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteria {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteria({
    this.excludes,
    this.includes,
  });

  final Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludes? excludes;

  final Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludes? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.encode(),
    'includes': ?includes?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludes {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludes({
    this.and,
  });

  final List<Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd>?
  and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  final Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion?
  simpleCriterion;

  final Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion?
  tagCriterion;

  Map<String, Object?> encode() => {
    'simple_criterion': ?simpleCriterion?.encode(),
    'tag_criterion': ?tagCriterion?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.simple_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion({
    this.comparator,
    this.key,
    this.values,
  });

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterionComparator
  >?
  comparator;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterionComparator
    implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterionComparator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.tag_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion({
    this.comparator,
    this.tagValues,
  });

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionComparator
  >?
  comparator;

  final List<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionComparator
    implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionComparator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.tag_criterion.tag_values` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValues {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.includes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludes {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludes({
    this.and,
  });

  final List<Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd>?
  and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.includes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  final Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion?
  simpleCriterion;

  final Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion?
  tagCriterion;

  Map<String, Object?> encode() => {
    'simple_criterion': ?simpleCriterion?.encode(),
    'tag_criterion': ?tagCriterion?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.includes.and.simple_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion({
    this.comparator,
    this.key,
    this.values,
  });

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterionComparator
  >?
  comparator;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterionComparator
    implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterionComparator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.bucket_criteria.includes.and.tag_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion({
    this.comparator,
    this.tagValues,
  });

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionComparator
  >?
  comparator;

  final List<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionComparator
    implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionComparator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.bucket_criteria.includes.and.tag_criterion.tag_values` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValues {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_definitions` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketDefinitions {
  const Macie2ClassificationJobS3JobDefinitionBucketDefinitions({
    required this.accountId,
    required this.buckets,
  });

  final TfArg<String> accountId;

  final TfArg<List<String>> buckets;

  Map<String, Object?> encode() => {
    'account_id': accountId.toTfJson(),
    'buckets': buckets.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.scoping` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScoping {
  const Macie2ClassificationJobS3JobDefinitionScoping({
    this.excludes,
    this.includes,
  });

  final Macie2ClassificationJobS3JobDefinitionScopingExcludes? excludes;

  final Macie2ClassificationJobS3JobDefinitionScopingIncludes? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.encode(),
    'includes': ?includes?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.excludes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingExcludes {
  const Macie2ClassificationJobS3JobDefinitionScopingExcludes({this.and});

  final List<Macie2ClassificationJobS3JobDefinitionScopingExcludesAnd>? and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingExcludesAnd {
  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  final Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm?
  simpleScopeTerm;

  final Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm?
  tagScopeTerm;

  Map<String, Object?> encode() => {
    'simple_scope_term': ?simpleScopeTerm?.encode(),
    'tag_scope_term': ?tagScopeTerm?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and.simple_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm {
  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTerm({
    this.comparator,
    this.key,
    this.values,
  });

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTermComparator
  >?
  comparator;

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTermKey
  >?
  key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTermComparator
    implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTermComparator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `key` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTermKey
    implements TerraformEnum {
  objectExtension('OBJECT_EXTENSION'),
  objectLastModifiedDate('OBJECT_LAST_MODIFIED_DATE'),
  objectSize('OBJECT_SIZE'),
  objectKey('OBJECT_KEY');

  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndSimpleScopeTermKey(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and.tag_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm {
  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTerm({
    this.comparator,
    this.key,
    this.target,
    this.tagValues,
  });

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermComparator
  >?
  comparator;

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermKey
  >?
  key;

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTarget
  >?
  target;

  final List<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'target': ?target?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermComparator
    implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermComparator(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `key` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermKey
    implements TerraformEnum {
  tag('TAG');

  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermKey(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `target` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTarget
    implements TerraformEnum {
  s3Object('S3_OBJECT');

  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTarget(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and.tag_scope_term.tag_values` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValues {
  const Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.includes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingIncludes {
  const Macie2ClassificationJobS3JobDefinitionScopingIncludes({this.and});

  final List<Macie2ClassificationJobS3JobDefinitionScopingIncludesAnd>? and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.scoping.includes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingIncludesAnd {
  const Macie2ClassificationJobS3JobDefinitionScopingIncludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  final Macie2ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm?
  simpleScopeTerm;

  final Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm?
  tagScopeTerm;

  Map<String, Object?> encode() => {
    'simple_scope_term': ?simpleScopeTerm?.encode(),
    'tag_scope_term': ?tagScopeTerm?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.includes.and.simple_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm {
  const Macie2ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm({
    this.comparator,
    this.key,
    this.values,
  });

  final TfArg<String>? comparator;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.includes.and.tag_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm {
  const Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTerm({
    this.comparator,
    this.key,
    this.target,
    this.tagValues,
  });

  final TfArg<String>? comparator;

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermKey
  >?
  key;

  final TfArg<
    Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTarget
  >?
  target;

  final List<
    Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'target': ?target?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
}

/// `key` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermKey
    implements TerraformEnum {
  tag('TAG');

  const Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermKey(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `target` — derived from the provider schema description.
enum Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTarget
    implements TerraformEnum {
  s3Object('S3_OBJECT');

  const Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTarget(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.scoping.includes.and.tag_scope_term.tag_values` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValues {
  const Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValues({
    this.key,
    this.value,
  });

  final TfArg<String>? key;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'key': ?key?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// At most one of `daily_schedule`, `monthly_schedule`, `weekly_schedule` on the `schedule_frequency` block of `aws_macie2_classification_job`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.dailySchedule(...)`.
sealed class Macie2ClassificationJobScheduleFrequency {
  const Macie2ClassificationJobScheduleFrequency();

  /// Sets `daily_schedule`.
  const factory Macie2ClassificationJobScheduleFrequency.dailySchedule(
    TfArg<bool> dailySchedule,
  ) = Macie2ClassificationJobScheduleFrequencyDailySchedule;

  /// Sets `monthly_schedule`.
  const factory Macie2ClassificationJobScheduleFrequency.monthlySchedule(
    TfArg<num> monthlySchedule,
  ) = Macie2ClassificationJobScheduleFrequencyMonthlySchedule;

  /// Sets `weekly_schedule`.
  const factory Macie2ClassificationJobScheduleFrequency.weeklySchedule(
    TfArg<String> weeklySchedule,
  ) = Macie2ClassificationJobScheduleFrequencyWeeklySchedule;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Macie2ClassificationJobScheduleFrequency.dailySchedule] choice: sets `daily_schedule`.
final class Macie2ClassificationJobScheduleFrequencyDailySchedule
    extends Macie2ClassificationJobScheduleFrequency {
  const Macie2ClassificationJobScheduleFrequencyDailySchedule(
    this.dailySchedule,
  );

  final TfArg<bool> dailySchedule;

  @override
  String get blockKey => 'daily_schedule';

  @override
  Map<String, Object?> encode() => {'daily_schedule': dailySchedule.toTfJson()};
}

/// The [Macie2ClassificationJobScheduleFrequency.monthlySchedule] choice: sets `monthly_schedule`.
final class Macie2ClassificationJobScheduleFrequencyMonthlySchedule
    extends Macie2ClassificationJobScheduleFrequency {
  const Macie2ClassificationJobScheduleFrequencyMonthlySchedule(
    this.monthlySchedule,
  );

  final TfArg<num> monthlySchedule;

  @override
  String get blockKey => 'monthly_schedule';

  @override
  Map<String, Object?> encode() => {
    'monthly_schedule': monthlySchedule.toTfJson(),
  };
}

/// The [Macie2ClassificationJobScheduleFrequency.weeklySchedule] choice: sets `weekly_schedule`.
final class Macie2ClassificationJobScheduleFrequencyWeeklySchedule
    extends Macie2ClassificationJobScheduleFrequency {
  const Macie2ClassificationJobScheduleFrequencyWeeklySchedule(
    this.weeklySchedule,
  );

  final TfArg<String> weeklySchedule;

  @override
  String get blockKey => 'weekly_schedule';

  @override
  Map<String, Object?> encode() => {
    'weekly_schedule': weeklySchedule.toTfJson(),
  };
}

/// Factory wrapper for `aws_macie2_classification_job`.
final class AwsMacie2ClassificationJob extends Resource {
  static const String tfType = 'aws_macie2_classification_job';

  AwsMacie2ClassificationJob({
    required super.localName,
    TfArg<List<String>>? customDataIdentifierIds,
    TfArg<String>? description,
    TfArg<bool>? initialRun,
    TfArg<Macie2ClassificationJobJobStatus>? jobStatus,
    required TfArg<Macie2ClassificationJobJobType> jobType,
    Macie2ClassificationJobName? name,
    TfArg<String>? region,
    TfArg<num>? samplingPercentage,
    TfArg<Map<String, String>>? tags,
    required Macie2ClassificationJobS3JobDefinition s3JobDefinition,
    Macie2ClassificationJobScheduleFrequency? scheduleFrequency,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_data_identifier_ids': ?customDataIdentifierIds,
           'description': ?description,
           'initial_run': ?initialRun,
           'job_status': ?jobStatus,
           'job_type': jobType,
           ...?name?.argMap,
           'region': ?region,
           'sampling_percentage': ?samplingPercentage,
           'tags': ?tags,
           's3_job_definition': TfArg.literal(s3JobDefinition.encode()),
           if (scheduleFrequency != null)
             'schedule_frequency': TfArg.literal(scheduleFrequency.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2ClassificationJobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMacie2ClassificationJob>`.
  RefTo<AwsMacie2ClassificationJob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `job_arn` attribute.
  TfRef<String> get jobArn => TfRef.attribute<String>(this, 'job_arn');

  /// Reference to `job_id` attribute.
  TfRef<String> get jobId => TfRef.attribute<String>(this, 'job_id');

  /// Reference to `user_paused_details` attribute.
  TfRef<List<Map<String, Object?>>> get userPausedDetails =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'user_paused_details');
}
