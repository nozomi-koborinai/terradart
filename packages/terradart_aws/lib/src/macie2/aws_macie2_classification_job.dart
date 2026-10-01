// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_classification_job`.
const Set<String> _awsMacie2ClassificationJobSensitive = <String>{};

/// Macie2 Classification Job enum for `job_status`.
enum Macie2ClassificationJobStatus implements TerraformEnum {
  cancelled('CANCELLED'),
  running('RUNNING'),
  userPaused('USER_PAUSED');

  const Macie2ClassificationJobStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Macie2 Classification Job enum for `job_type`.
enum Macie2ClassificationJobType implements TerraformEnum {
  oneTime('ONE_TIME'),
  scheduled('SCHEDULED');

  const Macie2ClassificationJobType(this.terraformValue);
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

  final Macie2ClassificationJobBucket? bucket;

  final Macie2ClassificationJobScoping? scoping;

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
sealed class Macie2ClassificationJobBucket {
  const Macie2ClassificationJobBucket();

  /// Sets `bucket_criteria`.
  const factory Macie2ClassificationJobBucket.bucketCriteria(
    Macie2ClassificationJobBucketCriteria bucketCriteria,
  ) = Macie2ClassificationJobBucketCriteriaChoice;

  /// Sets `bucket_definitions`.
  const factory Macie2ClassificationJobBucket.bucketDefinitions(
    List<Macie2ClassificationJobBucketDefinitions> bucketDefinitions,
  ) = Macie2ClassificationJobBucketDefinitionsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [Macie2ClassificationJobBucket.bucketCriteria] choice: sets `bucket_criteria`.
final class Macie2ClassificationJobBucketCriteriaChoice
    extends Macie2ClassificationJobBucket {
  const Macie2ClassificationJobBucketCriteriaChoice(this.bucketCriteria);

  final Macie2ClassificationJobBucketCriteria bucketCriteria;

  @override
  String get blockKey => 'bucket_criteria';

  @override
  Map<String, Object?> encode() => {'bucket_criteria': bucketCriteria.encode()};
}

/// The [Macie2ClassificationJobBucket.bucketDefinitions] choice: sets `bucket_definitions`.
final class Macie2ClassificationJobBucketDefinitionsChoice
    extends Macie2ClassificationJobBucket {
  const Macie2ClassificationJobBucketDefinitionsChoice(this.bucketDefinitions);

  final List<Macie2ClassificationJobBucketDefinitions> bucketDefinitions;

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
final class Macie2ClassificationJobBucketCriteria {
  const Macie2ClassificationJobBucketCriteria({this.excludes, this.includes});

  final Macie2ClassificationJobBucketCriteriaExcludes? excludes;

  final Macie2ClassificationJobBucketCriteriaIncludes? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.encode(),
    'includes': ?includes?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobBucketCriteriaExcludes {
  const Macie2ClassificationJobBucketCriteriaExcludes({this.and});

  final List<Macie2ClassificationJobBucketCriteriaAnd>? and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Macie2ClassificationJobBucketCriteriaAnd {
  const Macie2ClassificationJobBucketCriteriaAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  final Macie2ClassificationJobSimpleCriterion? simpleCriterion;

  final Macie2ClassificationJobTagCriterion? tagCriterion;

  Map<String, Object?> encode() => {
    'simple_criterion': ?simpleCriterion?.encode(),
    'tag_criterion': ?tagCriterion?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.simple_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Macie2ClassificationJobSimpleCriterion {
  const Macie2ClassificationJobSimpleCriterion({
    this.comparator,
    this.key,
    this.values,
  });

  final TfArg<Macie2ClassificationJobComparator>? comparator;

  final TfArg<String>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `comparator` — derived from the provider schema description.
enum Macie2ClassificationJobComparator implements TerraformEnum {
  eq('EQ'),
  gt('GT'),
  gte('GTE'),
  lt('LT'),
  lte('LTE'),
  ne('NE'),
  contains('CONTAINS'),
  startsWith('STARTS_WITH');

  const Macie2ClassificationJobComparator(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.tag_criterion` block of
/// `aws_macie2_classification_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Macie2ClassificationJobTagCriterion {
  const Macie2ClassificationJobTagCriterion({this.comparator, this.tagValues});

  final TfArg<Macie2ClassificationJobComparator>? comparator;

  final List<Macie2ClassificationJobTagValues>? tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.bucket_criteria.excludes.and.tag_criterion.tag_values` block of
/// `aws_macie2_classification_job` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class Macie2ClassificationJobTagValues {
  const Macie2ClassificationJobTagValues({this.key, this.value});

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
final class Macie2ClassificationJobBucketCriteriaIncludes {
  const Macie2ClassificationJobBucketCriteriaIncludes({this.and});

  final List<Macie2ClassificationJobBucketCriteriaAnd>? and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.bucket_definitions` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobBucketDefinitions {
  const Macie2ClassificationJobBucketDefinitions({
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
final class Macie2ClassificationJobScoping {
  const Macie2ClassificationJobScoping({this.excludes, this.includes});

  final Macie2ClassificationJobScopingExcludes? excludes;

  final Macie2ClassificationJobScopingIncludes? includes;

  Map<String, Object?> encode() => {
    'excludes': ?excludes?.encode(),
    'includes': ?includes?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.excludes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobScopingExcludes {
  const Macie2ClassificationJobScopingExcludes({this.and});

  final List<Macie2ClassificationJobScopingAnd>? and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobScopingAnd {
  const Macie2ClassificationJobScopingAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  final Macie2ClassificationJobExcludesSimpleScopeTerm? simpleScopeTerm;

  final Macie2ClassificationJobExcludesTagScopeTerm? tagScopeTerm;

  Map<String, Object?> encode() => {
    'simple_scope_term': ?simpleScopeTerm?.encode(),
    'tag_scope_term': ?tagScopeTerm?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and.simple_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobExcludesSimpleScopeTerm {
  const Macie2ClassificationJobExcludesSimpleScopeTerm({
    this.comparator,
    this.key,
    this.values,
  });

  final TfArg<Macie2ClassificationJobComparator>? comparator;

  final TfArg<Macie2ClassificationJobSimpleScopeTermKey>? key;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'values': ?values?.toTfJson(),
  };
}

/// `key` — derived from the provider schema description.
enum Macie2ClassificationJobSimpleScopeTermKey implements TerraformEnum {
  objectExtension('OBJECT_EXTENSION'),
  objectLastModifiedDate('OBJECT_LAST_MODIFIED_DATE'),
  objectSize('OBJECT_SIZE'),
  objectKey('OBJECT_KEY');

  const Macie2ClassificationJobSimpleScopeTermKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.scoping.excludes.and.tag_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobExcludesTagScopeTerm {
  const Macie2ClassificationJobExcludesTagScopeTerm({
    this.comparator,
    this.key,
    this.target,
    this.tagValues,
  });

  final TfArg<Macie2ClassificationJobComparator>? comparator;

  final TfArg<Macie2ClassificationJobTagScopeTermKey>? key;

  final TfArg<Macie2ClassificationJobTarget>? target;

  final List<Macie2ClassificationJobTagValues>? tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'target': ?target?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
  };
}

/// `key` — derived from the provider schema description.
enum Macie2ClassificationJobTagScopeTermKey implements TerraformEnum {
  tag('TAG');

  const Macie2ClassificationJobTagScopeTermKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// `target` — derived from the provider schema description.
enum Macie2ClassificationJobTarget implements TerraformEnum {
  s3Object('S3_OBJECT');

  const Macie2ClassificationJobTarget(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_job_definition.scoping.includes` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobScopingIncludes {
  const Macie2ClassificationJobScopingIncludes({this.and});

  final List<Macie2ClassificationJobIncludesAnd>? and;

  Map<String, Object?> encode() => {
    if (and != null) 'and': [for (final e in and!) e.encode()],
  };
}

/// Typed helper for the `s3_job_definition.scoping.includes.and` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobIncludesAnd {
  const Macie2ClassificationJobIncludesAnd({
    this.simpleScopeTerm,
    this.tagScopeTerm,
  });

  final Macie2ClassificationJobIncludesSimpleScopeTerm? simpleScopeTerm;

  final Macie2ClassificationJobIncludesTagScopeTerm? tagScopeTerm;

  Map<String, Object?> encode() => {
    'simple_scope_term': ?simpleScopeTerm?.encode(),
    'tag_scope_term': ?tagScopeTerm?.encode(),
  };
}

/// Typed helper for the `s3_job_definition.scoping.includes.and.simple_scope_term` block of
/// `aws_macie2_classification_job` (derived from provider schema).
@immutable
final class Macie2ClassificationJobIncludesSimpleScopeTerm {
  const Macie2ClassificationJobIncludesSimpleScopeTerm({
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
final class Macie2ClassificationJobIncludesTagScopeTerm {
  const Macie2ClassificationJobIncludesTagScopeTerm({
    this.comparator,
    this.key,
    this.target,
    this.tagValues,
  });

  final TfArg<String>? comparator;

  final TfArg<Macie2ClassificationJobTagScopeTermKey>? key;

  final TfArg<Macie2ClassificationJobTarget>? target;

  final List<Macie2ClassificationJobTagValues>? tagValues;

  Map<String, Object?> encode() => {
    'comparator': ?comparator?.toTfJson(),
    'key': ?key?.toTfJson(),
    'target': ?target?.toTfJson(),
    if (tagValues != null)
      'tag_values': [for (final e in tagValues!) e.encode()],
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
    TfArg<Macie2ClassificationJobStatus>? jobStatus,
    required TfArg<Macie2ClassificationJobType> jobType,
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

  /// Reference to `custom_data_identifier_ids` attribute.
  TfRef<List<String>> get customDataIdentifierIdsRef =>
      TfRef.attribute<List<String>>(this, 'custom_data_identifier_ids');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `initial_run` attribute.
  TfRef<bool> get initialRunRef => TfRef.attribute<bool>(this, 'initial_run');

  /// Reference to `job_status` attribute.
  TfRef<String> get jobStatusRef => TfRef.attribute<String>(this, 'job_status');

  /// Reference to `job_type` attribute.
  TfRef<String> get jobTypeRef => TfRef.attribute<String>(this, 'job_type');

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `sampling_percentage` attribute.
  TfRef<num> get samplingPercentageRef =>
      TfRef.attribute<num>(this, 'sampling_percentage');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
