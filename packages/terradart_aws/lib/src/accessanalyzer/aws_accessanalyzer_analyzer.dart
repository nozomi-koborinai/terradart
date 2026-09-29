// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accessanalyzer_analyzer`.
const Set<String> _awsAccessanalyzerAnalyzerSensitive = <String>{};

/// Accessanalyzer Analyzer enum for `type`.
enum AccessanalyzerAnalyzerType implements TerraformEnum {
  account('ACCOUNT'),
  organization('ORGANIZATION'),
  accountUnusedAccess('ACCOUNT_UNUSED_ACCESS'),
  organizationUnusedAccess('ORGANIZATION_UNUSED_ACCESS'),
  accountInternalAccess('ACCOUNT_INTERNAL_ACCESS'),
  organizationInternalAccess('ORGANIZATION_INTERNAL_ACCESS');

  const AccessanalyzerAnalyzerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfiguration {
  const AccessanalyzerAnalyzerConfiguration({this.access});

  final AccessanalyzerAnalyzerConfigurationAccess? access;

  Map<String, Object?> encode() => {...?access?.encode()};
}

/// At most one of `internal_access`, `unused_access` on the `configuration` block of `aws_accessanalyzer_analyzer`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.internalAccess(...)`.
sealed class AccessanalyzerAnalyzerConfigurationAccess {
  const AccessanalyzerAnalyzerConfigurationAccess();

  /// Sets `internal_access`.
  const factory AccessanalyzerAnalyzerConfigurationAccess.internalAccess(
    AccessanalyzerAnalyzerConfigurationInternalAccess internalAccess,
  ) = AccessanalyzerAnalyzerConfigurationAccessInternalAccess;

  /// Sets `unused_access`.
  const factory AccessanalyzerAnalyzerConfigurationAccess.unusedAccess(
    AccessanalyzerAnalyzerConfigurationUnusedAccess unusedAccess,
  ) = AccessanalyzerAnalyzerConfigurationAccessUnusedAccess;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [AccessanalyzerAnalyzerConfigurationAccess.internalAccess] choice: sets `internal_access`.
final class AccessanalyzerAnalyzerConfigurationAccessInternalAccess
    extends AccessanalyzerAnalyzerConfigurationAccess {
  const AccessanalyzerAnalyzerConfigurationAccessInternalAccess(
    this.internalAccess,
  );

  final AccessanalyzerAnalyzerConfigurationInternalAccess internalAccess;

  @override
  String get blockKey => 'internal_access';

  @override
  Map<String, Object?> encode() => {'internal_access': internalAccess.encode()};
}

/// The [AccessanalyzerAnalyzerConfigurationAccess.unusedAccess] choice: sets `unused_access`.
final class AccessanalyzerAnalyzerConfigurationAccessUnusedAccess
    extends AccessanalyzerAnalyzerConfigurationAccess {
  const AccessanalyzerAnalyzerConfigurationAccessUnusedAccess(
    this.unusedAccess,
  );

  final AccessanalyzerAnalyzerConfigurationUnusedAccess unusedAccess;

  @override
  String get blockKey => 'unused_access';

  @override
  Map<String, Object?> encode() => {'unused_access': unusedAccess.encode()};
}

/// Typed helper for the `configuration.internal_access` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationInternalAccess {
  const AccessanalyzerAnalyzerConfigurationInternalAccess({this.analysisRule});

  final AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRule?
  analysisRule;

  Map<String, Object?> encode() => {'analysis_rule': ?analysisRule?.encode()};
}

/// Typed helper for the `configuration.internal_access.analysis_rule` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRule {
  const AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRule({
    this.inclusion,
  });

  final List<
    AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusion
  >?
  inclusion;

  Map<String, Object?> encode() => {
    if (inclusion != null)
      'inclusion': [for (final e in inclusion!) e.encode()],
  };
}

/// Typed helper for the `configuration.internal_access.analysis_rule.inclusion` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusion {
  const AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusion({
    this.accountIds,
    this.resourceArns,
    this.resourceTypes,
  });

  final TfArg<List<Object?>>? accountIds;

  final TfArg<List<Object?>>? resourceArns;

  final List<
    TfArg<
      AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusionResourceTypes
    >
  >?
  resourceTypes;

  Map<String, Object?> encode() => {
    'account_ids': ?accountIds?.toTfJson(),
    'resource_arns': ?resourceArns?.toTfJson(),
    if (resourceTypes != null)
      'resource_types': [for (final e in resourceTypes!) e.toTfJson()],
  };
}

/// `resource_types` — derived from the provider schema description.
enum AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusionResourceTypes
    implements TerraformEnum {
  awsS3Bucket('AWS::S3::Bucket'),
  awsIamRole('AWS::IAM::Role'),
  awsSqsQueue('AWS::SQS::Queue'),
  awsLambdaFunction('AWS::Lambda::Function'),
  awsLambdaLayerversion('AWS::Lambda::LayerVersion'),
  awsKmsKey('AWS::KMS::Key'),
  awsSecretsmanagerSecret('AWS::SecretsManager::Secret'),
  awsEfsFilesystem('AWS::EFS::FileSystem'),
  awsEc2Snapshot('AWS::EC2::Snapshot'),
  awsEcrRepository('AWS::ECR::Repository'),
  awsRdsDbsnapshot('AWS::RDS::DBSnapshot'),
  awsRdsDbclustersnapshot('AWS::RDS::DBClusterSnapshot'),
  awsSnsTopic('AWS::SNS::Topic'),
  awsS3expressDirectorybucket('AWS::S3Express::DirectoryBucket'),
  awsDynamodbTable('AWS::DynamoDB::Table'),
  awsDynamodbStream('AWS::DynamoDB::Stream'),
  awsIamUser('AWS::IAM::User');

  const AccessanalyzerAnalyzerConfigurationInternalAccessAnalysisRuleInclusionResourceTypes(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `configuration.unused_access` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationUnusedAccess {
  const AccessanalyzerAnalyzerConfigurationUnusedAccess({
    this.unusedAccessAge,
    this.analysisRule,
  });

  final TfArg<num>? unusedAccessAge;

  final AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRule?
  analysisRule;

  Map<String, Object?> encode() => {
    'unused_access_age': ?unusedAccessAge?.toTfJson(),
    'analysis_rule': ?analysisRule?.encode(),
  };
}

/// Typed helper for the `configuration.unused_access.analysis_rule` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRule {
  const AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRule({
    this.exclusion,
  });

  final List<
    AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRuleExclusion
  >?
  exclusion;

  Map<String, Object?> encode() => {
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// Typed helper for the `configuration.unused_access.analysis_rule.exclusion` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRuleExclusion {
  const AccessanalyzerAnalyzerConfigurationUnusedAccessAnalysisRuleExclusion({
    this.accountIds,
    this.resourceTags,
  });

  final TfArg<List<Object?>>? accountIds;

  final TfArg<List<Object?>>? resourceTags;

  Map<String, Object?> encode() => {
    'account_ids': ?accountIds?.toTfJson(),
    'resource_tags': ?resourceTags?.toTfJson(),
  };
}

/// Factory wrapper for `aws_accessanalyzer_analyzer`.
final class AwsAccessanalyzerAnalyzer extends Resource {
  static const String tfType = 'aws_accessanalyzer_analyzer';

  AwsAccessanalyzerAnalyzer({
    required super.localName,
    required TfArg<String> analyzerName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<AccessanalyzerAnalyzerType>? type,
    AccessanalyzerAnalyzerConfiguration? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'analyzer_name': analyzerName,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccessanalyzerAnalyzerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAccessanalyzerAnalyzer>`.
  RefTo<AwsAccessanalyzerAnalyzer> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
