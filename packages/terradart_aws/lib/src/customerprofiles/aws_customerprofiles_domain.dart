// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_customerprofiles_domain`.
const Set<String> _awsCustomerprofilesDomainSensitive = <String>{};

/// Typed helper for the `matching` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatching {
  const CustomerprofilesDomainMatching({
    required this.enabled,
    this.autoMerging,
    this.exportingConfig,
    this.jobSchedule,
  });

  final TfArg<bool> enabled;

  final CustomerprofilesDomainMatchingAutoMerging? autoMerging;

  final CustomerprofilesDomainMatchingExportingConfig? exportingConfig;

  final CustomerprofilesDomainMatchingJobSchedule? jobSchedule;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'auto_merging': ?autoMerging?.encode(),
    'exporting_config': ?exportingConfig?.encode(),
    'job_schedule': ?jobSchedule?.encode(),
  };
}

/// Typed helper for the `matching.auto_merging` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingAutoMerging {
  const CustomerprofilesDomainMatchingAutoMerging({
    required this.enabled,
    this.minAllowedConfidenceScoreForMerging,
    this.conflictResolution,
    this.consolidation,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? minAllowedConfidenceScoreForMerging;

  final CustomerprofilesDomainMatchingAutoMergingConflictResolution?
  conflictResolution;

  final CustomerprofilesDomainMatchingAutoMergingConsolidation? consolidation;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'min_allowed_confidence_score_for_merging':
        ?minAllowedConfidenceScoreForMerging?.toTfJson(),
    'conflict_resolution': ?conflictResolution?.encode(),
    'consolidation': ?consolidation?.encode(),
  };
}

/// Typed helper for the `matching.auto_merging.conflict_resolution` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingAutoMergingConflictResolution {
  const CustomerprofilesDomainMatchingAutoMergingConflictResolution({
    required this.conflictResolvingModel,
    this.sourceName,
  });

  final TfArg<
    CustomerprofilesDomainMatchingAutoMergingConflictResolutionConflictResolvingModel
  >
  conflictResolvingModel;

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {
    'conflict_resolving_model': conflictResolvingModel.toTfJson(),
    'source_name': ?sourceName?.toTfJson(),
  };
}

/// `conflict_resolving_model` — derived from the provider schema description.
enum CustomerprofilesDomainMatchingAutoMergingConflictResolutionConflictResolvingModel
    implements TerraformEnum {
  recency('RECENCY'),
  source('SOURCE');

  const CustomerprofilesDomainMatchingAutoMergingConflictResolutionConflictResolvingModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `matching.auto_merging.consolidation` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingAutoMergingConsolidation {
  const CustomerprofilesDomainMatchingAutoMergingConsolidation({
    required this.matchingAttributesList,
  });

  final TfArg<List<Object?>> matchingAttributesList;

  Map<String, Object?> encode() => {
    'matching_attributes_list': matchingAttributesList.toTfJson(),
  };
}

/// Typed helper for the `matching.exporting_config` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingExportingConfig {
  const CustomerprofilesDomainMatchingExportingConfig({this.s3Exporting});

  final CustomerprofilesDomainMatchingExportingConfigS3Exporting? s3Exporting;

  Map<String, Object?> encode() => {'s3_exporting': ?s3Exporting?.encode()};
}

/// Typed helper for the `matching.exporting_config.s3_exporting` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingExportingConfigS3Exporting {
  const CustomerprofilesDomainMatchingExportingConfigS3Exporting({
    required this.s3BucketName,
    this.s3KeyName,
  });

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String>? s3KeyName;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_key_name': ?s3KeyName?.toTfJson(),
  };
}

/// Typed helper for the `matching.job_schedule` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingJobSchedule {
  const CustomerprofilesDomainMatchingJobSchedule({
    required this.dayOfTheWeek,
    required this.time,
  });

  final TfArg<CustomerprofilesDomainMatchingJobScheduleDayOfTheWeek>
  dayOfTheWeek;

  final TfArg<String> time;

  Map<String, Object?> encode() => {
    'day_of_the_week': dayOfTheWeek.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// `day_of_the_week` — derived from the provider schema description.
enum CustomerprofilesDomainMatchingJobScheduleDayOfTheWeek
    implements TerraformEnum {
  sunday('SUNDAY'),
  monday('MONDAY'),
  tuesday('TUESDAY'),
  wednesday('WEDNESDAY'),
  thursday('THURSDAY'),
  friday('FRIDAY'),
  saturday('SATURDAY');

  const CustomerprofilesDomainMatchingJobScheduleDayOfTheWeek(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_based_matching` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainRuleBasedMatching {
  const CustomerprofilesDomainRuleBasedMatching({
    required this.enabled,
    this.maxAllowedRuleLevelForMatching,
    this.maxAllowedRuleLevelForMerging,
    this.status,
    this.attributeTypesSelector,
    this.conflictResolution,
    this.exportingConfig,
    this.matchingRules,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? maxAllowedRuleLevelForMatching;

  final TfArg<num>? maxAllowedRuleLevelForMerging;

  final TfArg<CustomerprofilesDomainRuleBasedMatchingStatus>? status;

  final CustomerprofilesDomainRuleBasedMatchingAttributeTypesSelector?
  attributeTypesSelector;

  final CustomerprofilesDomainRuleBasedMatchingConflictResolution?
  conflictResolution;

  final CustomerprofilesDomainRuleBasedMatchingExportingConfig? exportingConfig;

  final List<CustomerprofilesDomainRuleBasedMatchingMatchingRules>?
  matchingRules;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'max_allowed_rule_level_for_matching': ?maxAllowedRuleLevelForMatching
        ?.toTfJson(),
    'max_allowed_rule_level_for_merging': ?maxAllowedRuleLevelForMerging
        ?.toTfJson(),
    'status': ?status?.toTfJson(),
    'attribute_types_selector': ?attributeTypesSelector?.encode(),
    'conflict_resolution': ?conflictResolution?.encode(),
    'exporting_config': ?exportingConfig?.encode(),
    if (matchingRules != null)
      'matching_rules': [for (final e in matchingRules!) e.encode()],
  };
}

/// `status` — derived from the provider schema description.
enum CustomerprofilesDomainRuleBasedMatchingStatus implements TerraformEnum {
  pending('PENDING'),
  inProgress('IN_PROGRESS'),
  active('ACTIVE');

  const CustomerprofilesDomainRuleBasedMatchingStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_based_matching.attribute_types_selector` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainRuleBasedMatchingAttributeTypesSelector {
  const CustomerprofilesDomainRuleBasedMatchingAttributeTypesSelector({
    this.address,
    required this.attributeMatchingModel,
    this.emailAddress,
    this.phoneNumber,
  });

  final TfArg<List<String>>? address;

  final TfArg<
    CustomerprofilesDomainRuleBasedMatchingAttributeTypesSelectorAttributeMatchingModel
  >
  attributeMatchingModel;

  final TfArg<List<String>>? emailAddress;

  final TfArg<List<String>>? phoneNumber;

  Map<String, Object?> encode() => {
    'address': ?address?.toTfJson(),
    'attribute_matching_model': attributeMatchingModel.toTfJson(),
    'email_address': ?emailAddress?.toTfJson(),
    'phone_number': ?phoneNumber?.toTfJson(),
  };
}

/// `attribute_matching_model` — derived from the provider schema description.
enum CustomerprofilesDomainRuleBasedMatchingAttributeTypesSelectorAttributeMatchingModel
    implements TerraformEnum {
  oneToOne('ONE_TO_ONE'),
  manyToMany('MANY_TO_MANY');

  const CustomerprofilesDomainRuleBasedMatchingAttributeTypesSelectorAttributeMatchingModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_based_matching.conflict_resolution` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainRuleBasedMatchingConflictResolution {
  const CustomerprofilesDomainRuleBasedMatchingConflictResolution({
    required this.conflictResolvingModel,
    this.sourceName,
  });

  final TfArg<
    CustomerprofilesDomainRuleBasedMatchingConflictResolutionConflictResolvingModel
  >
  conflictResolvingModel;

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {
    'conflict_resolving_model': conflictResolvingModel.toTfJson(),
    'source_name': ?sourceName?.toTfJson(),
  };
}

/// `conflict_resolving_model` — derived from the provider schema description.
enum CustomerprofilesDomainRuleBasedMatchingConflictResolutionConflictResolvingModel
    implements TerraformEnum {
  recency('RECENCY'),
  source('SOURCE');

  const CustomerprofilesDomainRuleBasedMatchingConflictResolutionConflictResolvingModel(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rule_based_matching.exporting_config` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainRuleBasedMatchingExportingConfig {
  const CustomerprofilesDomainRuleBasedMatchingExportingConfig({
    this.s3Exporting,
  });

  final CustomerprofilesDomainRuleBasedMatchingExportingConfigS3Exporting?
  s3Exporting;

  Map<String, Object?> encode() => {'s3_exporting': ?s3Exporting?.encode()};
}

/// Typed helper for the `rule_based_matching.exporting_config.s3_exporting` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainRuleBasedMatchingExportingConfigS3Exporting {
  const CustomerprofilesDomainRuleBasedMatchingExportingConfigS3Exporting({
    required this.s3BucketName,
    this.s3KeyName,
  });

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String>? s3KeyName;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_key_name': ?s3KeyName?.toTfJson(),
  };
}

/// Typed helper for the `rule_based_matching.matching_rules` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainRuleBasedMatchingMatchingRules {
  const CustomerprofilesDomainRuleBasedMatchingMatchingRules({
    required this.rule,
  });

  final TfArg<List<String>> rule;

  Map<String, Object?> encode() => {'rule': rule.toTfJson()};
}

/// Factory wrapper for `aws_customerprofiles_domain`.
final class AwsCustomerprofilesDomain extends Resource {
  static const String tfType = 'aws_customerprofiles_domain';

  AwsCustomerprofilesDomain({
    required super.localName,
    TfArg<String>? deadLetterQueueUrl,
    TfArg<String>? defaultEncryptionKey,
    required TfArg<num> defaultExpirationDays,
    required TfArg<String> domainName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CustomerprofilesDomainMatching? matching,
    CustomerprofilesDomainRuleBasedMatching? ruleBasedMatching,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dead_letter_queue_url': ?deadLetterQueueUrl,
           'default_encryption_key': ?defaultEncryptionKey,
           'default_expiration_days': defaultExpirationDays,
           'domain_name': domainName,
           'region': ?region,
           'tags': ?tags,
           if (matching != null) 'matching': TfArg.literal(matching.encode()),
           if (ruleBasedMatching != null)
             'rule_based_matching': TfArg.literal(ruleBasedMatching.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCustomerprofilesDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCustomerprofilesDomain>`.
  RefTo<AwsCustomerprofilesDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
