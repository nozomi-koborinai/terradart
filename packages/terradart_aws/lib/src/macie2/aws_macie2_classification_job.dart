// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_classification_job`.
const Set<String> _awsMacie2ClassificationJobSensitive = <String>{};

/// Typed helper for the `s3_job_definition` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinition {
  const Macie2ClassificationJobS3JobDefinition({
    this.bucketCriteria,
    this.bucketDefinitions,
    this.scoping,
  });

  final Macie2ClassificationJobS3JobDefinitionBucketCriteria? bucketCriteria;

  final List<Macie2ClassificationJobS3JobDefinitionBucketDefinitions>?
  bucketDefinitions;

  final Macie2ClassificationJobS3JobDefinitionScoping? scoping;

  Map<String, Object?> encode() => {
    if (bucketCriteria != null) 'bucket_criteria': bucketCriteria!.encode(),
    if (bucketDefinitions != null)
      'bucket_definitions': [for (final e in bucketDefinitions!) e.encode()],
    if (scoping != null) 'scoping': scoping!.encode(),
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
    if (excludes != null) 'excludes': excludes!.encode(),
    if (includes != null) 'includes': includes!.encode(),
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
    if (simpleCriterion != null) 'simple_criterion': simpleCriterion!.encode(),
    if (tagCriterion != null) 'tag_criterion': tagCriterion!.encode(),
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

  final TfArg<String>? comparator;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.tag_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion({
    this.comparator,
    this.tagValues,
  });

  final TfArg<String>? comparator;

  final List<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (simpleCriterion != null) 'simple_criterion': simpleCriterion!.encode(),
    if (tagCriterion != null) 'tag_criterion': tagCriterion!.encode(),
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

  final TfArg<String>? comparator;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.includes.and.tag_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion {
  const Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion({
    this.comparator,
    this.tagValues,
  });

  final TfArg<String>? comparator;

  final List<
    Macie2ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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

  final TfArg<List<Object?>> buckets;

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
    if (excludes != null) 'excludes': excludes!.encode(),
    if (includes != null) 'includes': includes!.encode(),
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
    if (simpleScopeTerm != null) 'simple_scope_term': simpleScopeTerm!.encode(),
    if (tagScopeTerm != null) 'tag_scope_term': tagScopeTerm!.encode(),
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

  final TfArg<String>? comparator;

  final TfArg<String>? key;

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
  };
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

  final TfArg<String>? comparator;

  final TfArg<String>? key;

  final TfArg<String>? target;

  final List<
    Macie2ClassificationJobS3JobDefinitionScopingExcludesAndTagScopeTermTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
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
    if (simpleScopeTerm != null) 'simple_scope_term': simpleScopeTerm!.encode(),
    if (tagScopeTerm != null) 'tag_scope_term': tagScopeTerm!.encode(),
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

  final TfArg<List<Object?>>? values;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (values != null) 'values': values!.toTfJson(),
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

  final TfArg<String>? key;

  final TfArg<String>? target;

  final List<
    Macie2ClassificationJobS3JobDefinitionScopingIncludesAndTagScopeTermTagValues
  >?
  tagValues;

  Map<String, Object?> encode() => {
    if (comparator != null) 'comparator': comparator!.toTfJson(),
    if (key != null) 'key': key!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
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
    if (key != null) 'key': key!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `schedule_frequency` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobScheduleFrequency {
  const Macie2ClassificationJobScheduleFrequency({
    this.dailySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  final TfArg<bool>? dailySchedule;

  final TfArg<num>? monthlySchedule;

  final TfArg<String>? weeklySchedule;

  Map<String, Object?> encode() => {
    if (dailySchedule != null) 'daily_schedule': dailySchedule!.toTfJson(),
    if (monthlySchedule != null)
      'monthly_schedule': monthlySchedule!.toTfJson(),
    if (weeklySchedule != null) 'weekly_schedule': weeklySchedule!.toTfJson(),
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
    TfArg<String>? jobStatus,
    required TfArg<String> jobType,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
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
           if (customDataIdentifierIds != null)
             'custom_data_identifier_ids': customDataIdentifierIds,
           if (description != null) 'description': description,
           if (initialRun != null) 'initial_run': initialRun,
           if (jobStatus != null) 'job_status': jobStatus,
           'job_type': jobType,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (samplingPercentage != null)
             'sampling_percentage': samplingPercentage,
           if (tags != null) 'tags': tags,
           's3_job_definition': TfArg.literal(s3JobDefinition.encode()),
           if (scheduleFrequency != null)
             'schedule_frequency': TfArg.literal(scheduleFrequency.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMacie2ClassificationJobSensitive;

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
