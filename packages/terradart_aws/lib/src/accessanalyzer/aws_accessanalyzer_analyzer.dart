// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accessanalyzer_analyzer`.
const Set<String> _awsAccessanalyzerAnalyzerSensitive = <String>{};

/// Accessanalyzer Analyzer enum for `type`.
extension type const AccessanalyzerAnalyzerType._(TfArg<String> _)
    implements TfArg<String> {
  AccessanalyzerAnalyzerType.variable(String name)
    : this._(TfArg.variable(name));
  AccessanalyzerAnalyzerType.expression(String template)
    : this._(TfArg.expression(template));
  const AccessanalyzerAnalyzerType.arg(TfArg<String> arg) : this._(arg);

  static const account = AccessanalyzerAnalyzerType._(TfArgLiteral('ACCOUNT'));
  static const organization = AccessanalyzerAnalyzerType._(
    TfArgLiteral('ORGANIZATION'),
  );
  static const accountUnusedAccess = AccessanalyzerAnalyzerType._(
    TfArgLiteral('ACCOUNT_UNUSED_ACCESS'),
  );
  static const organizationUnusedAccess = AccessanalyzerAnalyzerType._(
    TfArgLiteral('ORGANIZATION_UNUSED_ACCESS'),
  );
  static const accountInternalAccess = AccessanalyzerAnalyzerType._(
    TfArgLiteral('ACCOUNT_INTERNAL_ACCESS'),
  );
  static const organizationInternalAccess = AccessanalyzerAnalyzerType._(
    TfArgLiteral('ORGANIZATION_INTERNAL_ACCESS'),
  );

  static const List<AccessanalyzerAnalyzerType> values = [
    account,
    organization,
    accountUnusedAccess,
    organizationUnusedAccess,
    accountInternalAccess,
    organizationInternalAccess,
  ];
}

/// At most one of `internal_access`, `unused_access` on the `configuration` block of `aws_accessanalyzer_analyzer`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.internalAccess(...)`.
sealed class AccessanalyzerAnalyzerConfiguration {
  const AccessanalyzerAnalyzerConfiguration();

  /// Sets `internal_access`.
  const factory AccessanalyzerAnalyzerConfiguration.internalAccess(
    AccessanalyzerAnalyzerInternalAccess internalAccess,
  ) = AccessanalyzerAnalyzerConfigurationInternalAccess;

  /// Sets `unused_access`.
  const factory AccessanalyzerAnalyzerConfiguration.unusedAccess(
    AccessanalyzerAnalyzerUnusedAccess unusedAccess,
  ) = AccessanalyzerAnalyzerConfigurationUnusedAccess;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [AccessanalyzerAnalyzerConfiguration.internalAccess] choice: sets `internal_access`.
final class AccessanalyzerAnalyzerConfigurationInternalAccess
    extends AccessanalyzerAnalyzerConfiguration {
  const AccessanalyzerAnalyzerConfigurationInternalAccess(this.internalAccess);

  final AccessanalyzerAnalyzerInternalAccess internalAccess;

  @internal
  @override
  String get blockKey => 'internal_access';

  @internal
  @override
  Map<String, Object?> encode() => {'internal_access': internalAccess.encode()};
}

/// The [AccessanalyzerAnalyzerConfiguration.unusedAccess] choice: sets `unused_access`.
final class AccessanalyzerAnalyzerConfigurationUnusedAccess
    extends AccessanalyzerAnalyzerConfiguration {
  const AccessanalyzerAnalyzerConfigurationUnusedAccess(this.unusedAccess);

  final AccessanalyzerAnalyzerUnusedAccess unusedAccess;

  @internal
  @override
  String get blockKey => 'unused_access';

  @internal
  @override
  Map<String, Object?> encode() => {'unused_access': unusedAccess.encode()};
}

/// Typed helper for the `configuration.internal_access` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerInternalAccess {
  const AccessanalyzerAnalyzerInternalAccess({this.analysisRule});

  final AccessanalyzerAnalyzerInternalAccessAnalysisRule? analysisRule;

  @internal
  Map<String, Object?> encode() => {'analysis_rule': ?analysisRule?.encode()};
}

/// Typed helper for the `configuration.internal_access.analysis_rule` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerInternalAccessAnalysisRule {
  const AccessanalyzerAnalyzerInternalAccessAnalysisRule({this.inclusion});

  final List<AccessanalyzerAnalyzerInclusion>? inclusion;

  @internal
  Map<String, Object?> encode() => {
    if (inclusion != null)
      'inclusion': [for (final e in inclusion!) e.encode()],
  };
}

/// Typed helper for the `configuration.internal_access.analysis_rule.inclusion` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerInclusion {
  const AccessanalyzerAnalyzerInclusion({
    this.accountIds,
    this.resourceArns,
    this.resourceTypes,
  });

  final TfArg<List<String>>? accountIds;

  final TfArg<List<String>>? resourceArns;

  final List<AccessanalyzerAnalyzerResourceTypes>? resourceTypes;

  @internal
  Map<String, Object?> encode() => {
    'account_ids': ?accountIds?.toTfJson(),
    'resource_arns': ?resourceArns?.toTfJson(),
    if (resourceTypes != null)
      'resource_types': [for (final e in resourceTypes!) e.toTfJson()],
  };
}

/// `resource_types` — derived from the provider schema description.
extension type const AccessanalyzerAnalyzerResourceTypes._(TfArg<String> _)
    implements TfArg<String> {
  AccessanalyzerAnalyzerResourceTypes.variable(String name)
    : this._(TfArg.variable(name));
  AccessanalyzerAnalyzerResourceTypes.expression(String template)
    : this._(TfArg.expression(template));
  const AccessanalyzerAnalyzerResourceTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const awsS3Bucket = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::S3::Bucket'),
  );
  static const awsIamRole = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::IAM::Role'),
  );
  static const awsSqsQueue = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::SQS::Queue'),
  );
  static const awsLambdaFunction = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::Lambda::Function'),
  );
  static const awsLambdaLayerversion = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::Lambda::LayerVersion'),
  );
  static const awsKmsKey = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::KMS::Key'),
  );
  static const awsSecretsmanagerSecret = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::SecretsManager::Secret'),
  );
  static const awsEfsFilesystem = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::EFS::FileSystem'),
  );
  static const awsEc2Snapshot = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::EC2::Snapshot'),
  );
  static const awsEcrRepository = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::ECR::Repository'),
  );
  static const awsRdsDbsnapshot = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::RDS::DBSnapshot'),
  );
  static const awsRdsDbclustersnapshot = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::RDS::DBClusterSnapshot'),
  );
  static const awsSnsTopic = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::SNS::Topic'),
  );
  static const awsS3expressDirectorybucket =
      AccessanalyzerAnalyzerResourceTypes._(
        TfArgLiteral('AWS::S3Express::DirectoryBucket'),
      );
  static const awsDynamodbTable = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::DynamoDB::Table'),
  );
  static const awsDynamodbStream = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::DynamoDB::Stream'),
  );
  static const awsIamUser = AccessanalyzerAnalyzerResourceTypes._(
    TfArgLiteral('AWS::IAM::User'),
  );

  static const List<AccessanalyzerAnalyzerResourceTypes> values = [
    awsS3Bucket,
    awsIamRole,
    awsSqsQueue,
    awsLambdaFunction,
    awsLambdaLayerversion,
    awsKmsKey,
    awsSecretsmanagerSecret,
    awsEfsFilesystem,
    awsEc2Snapshot,
    awsEcrRepository,
    awsRdsDbsnapshot,
    awsRdsDbclustersnapshot,
    awsSnsTopic,
    awsS3expressDirectorybucket,
    awsDynamodbTable,
    awsDynamodbStream,
    awsIamUser,
  ];
}

/// Typed helper for the `configuration.unused_access` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerUnusedAccess {
  const AccessanalyzerAnalyzerUnusedAccess({
    this.unusedAccessAge,
    this.analysisRule,
  });

  final TfArg<num>? unusedAccessAge;

  final AccessanalyzerAnalyzerUnusedAccessAnalysisRule? analysisRule;

  @internal
  Map<String, Object?> encode() => {
    'unused_access_age': ?unusedAccessAge?.toTfJson(),
    'analysis_rule': ?analysisRule?.encode(),
  };
}

/// Typed helper for the `configuration.unused_access.analysis_rule` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerUnusedAccessAnalysisRule {
  const AccessanalyzerAnalyzerUnusedAccessAnalysisRule({this.exclusion});

  final List<AccessanalyzerAnalyzerExclusion>? exclusion;

  @internal
  Map<String, Object?> encode() => {
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// Typed helper for the `configuration.unused_access.analysis_rule.exclusion` block of
/// `aws_accessanalyzer_analyzer` (derived from provider schema).
@immutable
final class AccessanalyzerAnalyzerExclusion {
  const AccessanalyzerAnalyzerExclusion({this.accountIds, this.resourceTags});

  final TfArg<List<String>>? accountIds;

  final TfArg<List<Object?>>? resourceTags;

  @internal
  Map<String, Object?> encode() => {
    'account_ids': ?accountIds?.toTfJson(),
    'resource_tags': ?resourceTags?.toTfJson(),
  };
}

/// Factory wrapper for `aws_accessanalyzer_analyzer`.
final class AwsAccessanalyzerAnalyzer extends Resource {
  static const String tfType = 'aws_accessanalyzer_analyzer';

  AwsAccessanalyzerAnalyzer(
    super.localName, {
    required TfArg<String> analyzerName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    AccessanalyzerAnalyzerType? type,
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

  /// Reference to `analyzer_name` attribute.
  TfRef<String> get analyzerName =>
      TfRef.attribute<String>(this, 'analyzer_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
