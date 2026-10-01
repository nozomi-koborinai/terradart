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

  final CustomerprofilesDomainAutoMerging? autoMerging;

  final CustomerprofilesDomainExportingConfig? exportingConfig;

  final CustomerprofilesDomainJobSchedule? jobSchedule;

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
final class CustomerprofilesDomainAutoMerging {
  const CustomerprofilesDomainAutoMerging({
    required this.enabled,
    this.minAllowedConfidenceScoreForMerging,
    this.conflictResolution,
    this.consolidation,
  });

  final TfArg<bool> enabled;

  final TfArg<num>? minAllowedConfidenceScoreForMerging;

  final CustomerprofilesDomainConflictResolution? conflictResolution;

  final CustomerprofilesDomainConsolidation? consolidation;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'min_allowed_confidence_score_for_merging':
        ?minAllowedConfidenceScoreForMerging?.toTfJson(),
    'conflict_resolution': ?conflictResolution?.encode(),
    'consolidation': ?consolidation?.encode(),
  };
}

/// Typed helper for the `rule_based_matching.conflict_resolution` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CustomerprofilesDomainConflictResolution {
  const CustomerprofilesDomainConflictResolution({
    required this.conflictResolvingModel,
    this.sourceName,
  });

  final CustomerprofilesDomainConflictResolvingModel conflictResolvingModel;

  final TfArg<String>? sourceName;

  Map<String, Object?> encode() => {
    'conflict_resolving_model': conflictResolvingModel.toTfJson(),
    'source_name': ?sourceName?.toTfJson(),
  };
}

/// `conflict_resolving_model` — derived from the provider schema description.
extension type const CustomerprofilesDomainConflictResolvingModel._(
  TfArg<String> _
) implements TfArg<String> {
  CustomerprofilesDomainConflictResolvingModel.variable(String name)
    : this._(TfArg.variable(name));
  CustomerprofilesDomainConflictResolvingModel.expression(String template)
    : this._(TfArg.expression(template));
  const CustomerprofilesDomainConflictResolvingModel.arg(TfArg<String> arg)
    : this._(arg);

  static const recency = CustomerprofilesDomainConflictResolvingModel._(
    TfArgLiteral('RECENCY'),
  );
  static const source = CustomerprofilesDomainConflictResolvingModel._(
    TfArgLiteral('SOURCE'),
  );

  static const List<CustomerprofilesDomainConflictResolvingModel> values = [
    recency,
    source,
  ];
}

/// Typed helper for the `matching.auto_merging.consolidation` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainConsolidation {
  const CustomerprofilesDomainConsolidation({
    required this.matchingAttributesList,
  });

  final TfArg<List<Object?>> matchingAttributesList;

  Map<String, Object?> encode() => {
    'matching_attributes_list': matchingAttributesList.toTfJson(),
  };
}

/// Typed helper for the `matching.exporting_config` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CustomerprofilesDomainExportingConfig {
  const CustomerprofilesDomainExportingConfig({this.s3Exporting});

  final CustomerprofilesDomainS3Exporting? s3Exporting;

  Map<String, Object?> encode() => {'s3_exporting': ?s3Exporting?.encode()};
}

/// Typed helper for the `matching.exporting_config.s3_exporting` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CustomerprofilesDomainS3Exporting {
  const CustomerprofilesDomainS3Exporting({
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
final class CustomerprofilesDomainJobSchedule {
  const CustomerprofilesDomainJobSchedule({
    required this.dayOfTheWeek,
    required this.time,
  });

  final CustomerprofilesDomainDayOfTheWeek dayOfTheWeek;

  final TfArg<String> time;

  Map<String, Object?> encode() => {
    'day_of_the_week': dayOfTheWeek.toTfJson(),
    'time': time.toTfJson(),
  };
}

/// `day_of_the_week` — derived from the provider schema description.
extension type const CustomerprofilesDomainDayOfTheWeek._(TfArg<String> _)
    implements TfArg<String> {
  CustomerprofilesDomainDayOfTheWeek.variable(String name)
    : this._(TfArg.variable(name));
  CustomerprofilesDomainDayOfTheWeek.expression(String template)
    : this._(TfArg.expression(template));
  const CustomerprofilesDomainDayOfTheWeek.arg(TfArg<String> arg) : this._(arg);

  static const sunday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('SUNDAY'),
  );
  static const monday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('MONDAY'),
  );
  static const tuesday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('TUESDAY'),
  );
  static const wednesday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('WEDNESDAY'),
  );
  static const thursday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('THURSDAY'),
  );
  static const friday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('FRIDAY'),
  );
  static const saturday = CustomerprofilesDomainDayOfTheWeek._(
    TfArgLiteral('SATURDAY'),
  );

  static const List<CustomerprofilesDomainDayOfTheWeek> values = [
    sunday,
    monday,
    tuesday,
    wednesday,
    thursday,
    friday,
    saturday,
  ];
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

  final CustomerprofilesDomainStatus? status;

  final CustomerprofilesDomainAttributeTypesSelector? attributeTypesSelector;

  final CustomerprofilesDomainConflictResolution? conflictResolution;

  final CustomerprofilesDomainExportingConfig? exportingConfig;

  final List<CustomerprofilesDomainMatchingRules>? matchingRules;

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
extension type const CustomerprofilesDomainStatus._(TfArg<String> _)
    implements TfArg<String> {
  CustomerprofilesDomainStatus.variable(String name)
    : this._(TfArg.variable(name));
  CustomerprofilesDomainStatus.expression(String template)
    : this._(TfArg.expression(template));
  const CustomerprofilesDomainStatus.arg(TfArg<String> arg) : this._(arg);

  static const pending = CustomerprofilesDomainStatus._(
    TfArgLiteral('PENDING'),
  );
  static const inProgress = CustomerprofilesDomainStatus._(
    TfArgLiteral('IN_PROGRESS'),
  );
  static const active = CustomerprofilesDomainStatus._(TfArgLiteral('ACTIVE'));

  static const List<CustomerprofilesDomainStatus> values = [
    pending,
    inProgress,
    active,
  ];
}

/// Typed helper for the `rule_based_matching.attribute_types_selector` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainAttributeTypesSelector {
  const CustomerprofilesDomainAttributeTypesSelector({
    this.address,
    required this.attributeMatchingModel,
    this.emailAddress,
    this.phoneNumber,
  });

  final TfArg<List<String>>? address;

  final CustomerprofilesDomainAttributeMatchingModel attributeMatchingModel;

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
extension type const CustomerprofilesDomainAttributeMatchingModel._(
  TfArg<String> _
) implements TfArg<String> {
  CustomerprofilesDomainAttributeMatchingModel.variable(String name)
    : this._(TfArg.variable(name));
  CustomerprofilesDomainAttributeMatchingModel.expression(String template)
    : this._(TfArg.expression(template));
  const CustomerprofilesDomainAttributeMatchingModel.arg(TfArg<String> arg)
    : this._(arg);

  static const oneToOne = CustomerprofilesDomainAttributeMatchingModel._(
    TfArgLiteral('ONE_TO_ONE'),
  );
  static const manyToMany = CustomerprofilesDomainAttributeMatchingModel._(
    TfArgLiteral('MANY_TO_MANY'),
  );

  static const List<CustomerprofilesDomainAttributeMatchingModel> values = [
    oneToOne,
    manyToMany,
  ];
}

/// Typed helper for the `rule_based_matching.matching_rules` block of
/// `aws_customerprofiles_domain` (derived from provider schema).
@immutable
final class CustomerprofilesDomainMatchingRules {
  const CustomerprofilesDomainMatchingRules({required this.rule});

  final TfArg<List<String>> rule;

  Map<String, Object?> encode() => {'rule': rule.toTfJson()};
}

/// Factory wrapper for `aws_customerprofiles_domain`.
final class AwsCustomerprofilesDomain extends Resource {
  static const String tfType = 'aws_customerprofiles_domain';

  AwsCustomerprofilesDomain(
    super.localName, {
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

  /// Reference to `dead_letter_queue_url` attribute.
  TfRef<String> get deadLetterQueueUrl =>
      TfRef.attribute<String>(this, 'dead_letter_queue_url');

  /// Reference to `default_encryption_key` attribute.
  TfRef<String> get defaultEncryptionKey =>
      TfRef.attribute<String>(this, 'default_encryption_key');

  /// Reference to `default_expiration_days` attribute.
  TfRef<num> get defaultExpirationDays =>
      TfRef.attribute<num>(this, 'default_expiration_days');

  /// Reference to `domain_name` attribute.
  TfRef<String> get domainName => TfRef.attribute<String>(this, 'domain_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
