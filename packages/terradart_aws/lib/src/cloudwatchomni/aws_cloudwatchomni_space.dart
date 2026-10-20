// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_cloudwatchomni_space`.
const Set<String> _awsCloudwatchomniSpaceSensitive = <String>{};

/// Typed helper for the `encryption_configuration` block of
/// `aws_cloudwatchomni_space` (derived from provider schema).
@immutable
final class CloudwatchomniSpaceEncryptionConfiguration {
  const CloudwatchomniSpaceEncryptionConfiguration({
    required this.encryptionStrategy,
    this.kmsKeyArn,
  });

  final CloudwatchomniSpaceEncryptionStrategy encryptionStrategy;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  @internal
  Map<String, Object?> encode() => {
    'encryption_strategy': encryptionStrategy.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_strategy` — derived from the provider schema description.
extension type const CloudwatchomniSpaceEncryptionStrategy._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchomniSpaceEncryptionStrategy.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchomniSpaceEncryptionStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchomniSpaceEncryptionStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const awsOwned = CloudwatchomniSpaceEncryptionStrategy._(
    TfArgLiteral('AWS_OWNED'),
  );
  static const customerManaged = CloudwatchomniSpaceEncryptionStrategy._(
    TfArgLiteral('CUSTOMER_MANAGED'),
  );

  static const List<CloudwatchomniSpaceEncryptionStrategy> values = [
    awsOwned,
    customerManaged,
  ];
}

/// Factory wrapper for `aws_cloudwatchomni_space`.
final class AwsCloudwatchomniSpace extends Resource {
  static const String tfType = 'aws_cloudwatchomni_space';

  AwsCloudwatchomniSpace(
    super.localName, {
    TfArg<String>? agentCoreEvaluationRoleArn,
    required TfArg<String> dataAccessRoleArn,
    required TfArg<String> domainId,
    required TfArg<String> name,
    TfArg<String>? region,
    List<CloudwatchomniSpaceEncryptionConfiguration>? encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_core_evaluation_role_arn': ?agentCoreEvaluationRoleArn,
           'data_access_role_arn': dataAccessRoleArn,
           'domain_id': domainId,
           'name': name,
           'region': ?region,
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal([
               for (final e in encryptionConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchomniSpaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchomniSpace>`.
  RefTo<AwsCloudwatchomniSpace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `domain_arn` attribute.
  TfRef<String> get domainArn => TfRef.attribute<String>(this, 'domain_arn');

  /// Reference to `space_arn` attribute.
  TfRef<String> get spaceArn => TfRef.attribute<String>(this, 'space_arn');

  /// Reference to `space_id` attribute.
  TfRef<String> get spaceId => TfRef.attribute<String>(this, 'space_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `agent_core_evaluation_role_arn` attribute.
  TfRef<String> get agentCoreEvaluationRoleArn =>
      TfRef.attribute<String>(this, 'agent_core_evaluation_role_arn');

  /// Reference to `data_access_role_arn` attribute.
  TfRef<String> get dataAccessRoleArn =>
      TfRef.attribute<String>(this, 'data_access_role_arn');

  /// Reference to `domain_id` attribute.
  TfRef<String> get domainId => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
