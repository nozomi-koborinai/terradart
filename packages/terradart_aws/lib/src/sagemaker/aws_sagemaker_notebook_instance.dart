// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_sagemaker_notebook_instance`.
const Set<String> _awsSagemakerNotebookInstanceSensitive = <String>{};

/// Sagemaker Notebook Instance Direct Internet enum for `direct_internet_access`.
enum SagemakerNotebookInstanceDirectInternetAccess implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const SagemakerNotebookInstanceDirectInternetAccess(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Notebook Instance Instance enum for `instance_type`.
enum SagemakerNotebookInstanceInstanceType implements TerraformEnum {
  mlT2Medium('ml.t2.medium'),
  mlT2Large('ml.t2.large'),
  mlT2Xlarge('ml.t2.xlarge'),
  mlT2p2xlarge('ml.t2.2xlarge'),
  mlT3Medium('ml.t3.medium'),
  mlT3Large('ml.t3.large'),
  mlT3Xlarge('ml.t3.xlarge'),
  mlT3p2xlarge('ml.t3.2xlarge'),
  mlM4Xlarge('ml.m4.xlarge'),
  mlM4p2xlarge('ml.m4.2xlarge'),
  mlM4p4xlarge('ml.m4.4xlarge'),
  mlM4p10xlarge('ml.m4.10xlarge'),
  mlM4p16xlarge('ml.m4.16xlarge'),
  mlM5Xlarge('ml.m5.xlarge'),
  mlM5p2xlarge('ml.m5.2xlarge'),
  mlM5p4xlarge('ml.m5.4xlarge'),
  mlM5p12xlarge('ml.m5.12xlarge'),
  mlM5p24xlarge('ml.m5.24xlarge'),
  mlM5dLarge('ml.m5d.large'),
  mlM5dXlarge('ml.m5d.xlarge'),
  mlM5d2xlarge('ml.m5d.2xlarge'),
  mlM5d4xlarge('ml.m5d.4xlarge'),
  mlM5d8xlarge('ml.m5d.8xlarge'),
  mlM5d12xlarge('ml.m5d.12xlarge'),
  mlM5d16xlarge('ml.m5d.16xlarge'),
  mlM5d24xlarge('ml.m5d.24xlarge'),
  mlC4Xlarge('ml.c4.xlarge'),
  mlC4p2xlarge('ml.c4.2xlarge'),
  mlC4p4xlarge('ml.c4.4xlarge'),
  mlC4p8xlarge('ml.c4.8xlarge'),
  mlC5Xlarge('ml.c5.xlarge'),
  mlC5p2xlarge('ml.c5.2xlarge'),
  mlC5p4xlarge('ml.c5.4xlarge'),
  mlC5p9xlarge('ml.c5.9xlarge'),
  mlC5p18xlarge('ml.c5.18xlarge'),
  mlC5dXlarge('ml.c5d.xlarge'),
  mlC5d2xlarge('ml.c5d.2xlarge'),
  mlC5d4xlarge('ml.c5d.4xlarge'),
  mlC5d9xlarge('ml.c5d.9xlarge'),
  mlC5d18xlarge('ml.c5d.18xlarge'),
  mlP2Xlarge('ml.p2.xlarge'),
  mlP2p8xlarge('ml.p2.8xlarge'),
  mlP2p16xlarge('ml.p2.16xlarge'),
  mlP3p2xlarge('ml.p3.2xlarge'),
  mlP3p8xlarge('ml.p3.8xlarge'),
  mlP3p16xlarge('ml.p3.16xlarge'),
  mlP3dn24xlarge('ml.p3dn.24xlarge'),
  mlG4dnXlarge('ml.g4dn.xlarge'),
  mlG4dn2xlarge('ml.g4dn.2xlarge'),
  mlG4dn4xlarge('ml.g4dn.4xlarge'),
  mlG4dn8xlarge('ml.g4dn.8xlarge'),
  mlG4dn12xlarge('ml.g4dn.12xlarge'),
  mlG4dn16xlarge('ml.g4dn.16xlarge'),
  mlR5Large('ml.r5.large'),
  mlR5Xlarge('ml.r5.xlarge'),
  mlR5p2xlarge('ml.r5.2xlarge'),
  mlR5p4xlarge('ml.r5.4xlarge'),
  mlR5p8xlarge('ml.r5.8xlarge'),
  mlR5p12xlarge('ml.r5.12xlarge'),
  mlR5p16xlarge('ml.r5.16xlarge'),
  mlR5p24xlarge('ml.r5.24xlarge'),
  mlG5Xlarge('ml.g5.xlarge'),
  mlG5p2xlarge('ml.g5.2xlarge'),
  mlG5p4xlarge('ml.g5.4xlarge'),
  mlG5p8xlarge('ml.g5.8xlarge'),
  mlG5p16xlarge('ml.g5.16xlarge'),
  mlG5p12xlarge('ml.g5.12xlarge'),
  mlG5p24xlarge('ml.g5.24xlarge'),
  mlG5p48xlarge('ml.g5.48xlarge'),
  mlInf1Xlarge('ml.inf1.xlarge'),
  mlInf1p2xlarge('ml.inf1.2xlarge'),
  mlInf1p6xlarge('ml.inf1.6xlarge'),
  mlInf1p24xlarge('ml.inf1.24xlarge'),
  mlTrn1p2xlarge('ml.trn1.2xlarge'),
  mlTrn1p32xlarge('ml.trn1.32xlarge'),
  mlTrn1n32xlarge('ml.trn1n.32xlarge'),
  mlInf2Xlarge('ml.inf2.xlarge'),
  mlInf2p8xlarge('ml.inf2.8xlarge'),
  mlInf2p24xlarge('ml.inf2.24xlarge'),
  mlInf2p48xlarge('ml.inf2.48xlarge'),
  mlP4d24xlarge('ml.p4d.24xlarge'),
  mlP4de24xlarge('ml.p4de.24xlarge'),
  mlP5p48xlarge('ml.p5.48xlarge'),
  mlP6B200p48xlarge('ml.p6-b200.48xlarge'),
  mlM6iLarge('ml.m6i.large'),
  mlM6iXlarge('ml.m6i.xlarge'),
  mlM6i2xlarge('ml.m6i.2xlarge'),
  mlM6i4xlarge('ml.m6i.4xlarge'),
  mlM6i8xlarge('ml.m6i.8xlarge'),
  mlM6i12xlarge('ml.m6i.12xlarge'),
  mlM6i16xlarge('ml.m6i.16xlarge'),
  mlM6i24xlarge('ml.m6i.24xlarge'),
  mlM6i32xlarge('ml.m6i.32xlarge'),
  mlM7iLarge('ml.m7i.large'),
  mlM7iXlarge('ml.m7i.xlarge'),
  mlM7i2xlarge('ml.m7i.2xlarge'),
  mlM7i4xlarge('ml.m7i.4xlarge'),
  mlM7i8xlarge('ml.m7i.8xlarge'),
  mlM7i12xlarge('ml.m7i.12xlarge'),
  mlM7i16xlarge('ml.m7i.16xlarge'),
  mlM7i24xlarge('ml.m7i.24xlarge'),
  mlM7i48xlarge('ml.m7i.48xlarge'),
  mlC6iLarge('ml.c6i.large'),
  mlC6iXlarge('ml.c6i.xlarge'),
  mlC6i2xlarge('ml.c6i.2xlarge'),
  mlC6i4xlarge('ml.c6i.4xlarge'),
  mlC6i8xlarge('ml.c6i.8xlarge'),
  mlC6i12xlarge('ml.c6i.12xlarge'),
  mlC6i16xlarge('ml.c6i.16xlarge'),
  mlC6i24xlarge('ml.c6i.24xlarge'),
  mlC6i32xlarge('ml.c6i.32xlarge'),
  mlC7iLarge('ml.c7i.large'),
  mlC7iXlarge('ml.c7i.xlarge'),
  mlC7i2xlarge('ml.c7i.2xlarge'),
  mlC7i4xlarge('ml.c7i.4xlarge'),
  mlC7i8xlarge('ml.c7i.8xlarge'),
  mlC7i12xlarge('ml.c7i.12xlarge'),
  mlC7i16xlarge('ml.c7i.16xlarge'),
  mlC7i24xlarge('ml.c7i.24xlarge'),
  mlC7i48xlarge('ml.c7i.48xlarge'),
  mlR6iLarge('ml.r6i.large'),
  mlR6iXlarge('ml.r6i.xlarge'),
  mlR6i2xlarge('ml.r6i.2xlarge'),
  mlR6i4xlarge('ml.r6i.4xlarge'),
  mlR6i8xlarge('ml.r6i.8xlarge'),
  mlR6i12xlarge('ml.r6i.12xlarge'),
  mlR6i16xlarge('ml.r6i.16xlarge'),
  mlR6i24xlarge('ml.r6i.24xlarge'),
  mlR6i32xlarge('ml.r6i.32xlarge'),
  mlR7iLarge('ml.r7i.large'),
  mlR7iXlarge('ml.r7i.xlarge'),
  mlR7i2xlarge('ml.r7i.2xlarge'),
  mlR7i4xlarge('ml.r7i.4xlarge'),
  mlR7i8xlarge('ml.r7i.8xlarge'),
  mlR7i12xlarge('ml.r7i.12xlarge'),
  mlR7i16xlarge('ml.r7i.16xlarge'),
  mlR7i24xlarge('ml.r7i.24xlarge'),
  mlR7i48xlarge('ml.r7i.48xlarge'),
  mlM6idLarge('ml.m6id.large'),
  mlM6idXlarge('ml.m6id.xlarge'),
  mlM6id2xlarge('ml.m6id.2xlarge'),
  mlM6id4xlarge('ml.m6id.4xlarge'),
  mlM6id8xlarge('ml.m6id.8xlarge'),
  mlM6id12xlarge('ml.m6id.12xlarge'),
  mlM6id16xlarge('ml.m6id.16xlarge'),
  mlM6id24xlarge('ml.m6id.24xlarge'),
  mlM6id32xlarge('ml.m6id.32xlarge'),
  mlC6idLarge('ml.c6id.large'),
  mlC6idXlarge('ml.c6id.xlarge'),
  mlC6id2xlarge('ml.c6id.2xlarge'),
  mlC6id4xlarge('ml.c6id.4xlarge'),
  mlC6id8xlarge('ml.c6id.8xlarge'),
  mlC6id12xlarge('ml.c6id.12xlarge'),
  mlC6id16xlarge('ml.c6id.16xlarge'),
  mlC6id24xlarge('ml.c6id.24xlarge'),
  mlC6id32xlarge('ml.c6id.32xlarge'),
  mlR6idLarge('ml.r6id.large'),
  mlR6idXlarge('ml.r6id.xlarge'),
  mlR6id2xlarge('ml.r6id.2xlarge'),
  mlR6id4xlarge('ml.r6id.4xlarge'),
  mlR6id8xlarge('ml.r6id.8xlarge'),
  mlR6id12xlarge('ml.r6id.12xlarge'),
  mlR6id16xlarge('ml.r6id.16xlarge'),
  mlR6id24xlarge('ml.r6id.24xlarge'),
  mlR6id32xlarge('ml.r6id.32xlarge'),
  mlG6Xlarge('ml.g6.xlarge'),
  mlG6p2xlarge('ml.g6.2xlarge'),
  mlG6p4xlarge('ml.g6.4xlarge'),
  mlG6p8xlarge('ml.g6.8xlarge'),
  mlG6p12xlarge('ml.g6.12xlarge'),
  mlG6p16xlarge('ml.g6.16xlarge'),
  mlG6p24xlarge('ml.g6.24xlarge'),
  mlG6p48xlarge('ml.g6.48xlarge'),
  mlG7e2xlarge('ml.g7e.2xlarge'),
  mlG7e4xlarge('ml.g7e.4xlarge'),
  mlG7e8xlarge('ml.g7e.8xlarge'),
  mlG7e12xlarge('ml.g7e.12xlarge'),
  mlG7e24xlarge('ml.g7e.24xlarge'),
  mlG7e48xlarge('ml.g7e.48xlarge'),
  mlP5p4xlarge('ml.p5.4xlarge'),
  mlP5en48xlarge('ml.p5en.48xlarge'),
  mlG6eXlarge('ml.g6e.xlarge'),
  mlG6e2xlarge('ml.g6e.2xlarge'),
  mlG6e4xlarge('ml.g6e.4xlarge'),
  mlG6e8xlarge('ml.g6e.8xlarge'),
  mlG6e12xlarge('ml.g6e.12xlarge'),
  mlG6e16xlarge('ml.g6e.16xlarge'),
  mlG6e24xlarge('ml.g6e.24xlarge'),
  mlG6e48xlarge('ml.g6e.48xlarge');

  const SagemakerNotebookInstanceInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Sagemaker Notebook Instance Root enum for `root_access`.
enum SagemakerNotebookInstanceRootAccess implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const SagemakerNotebookInstanceRootAccess(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `instance_metadata_service_configuration` block of
/// `aws_sagemaker_notebook_instance` (derived from provider schema).
@immutable
final class SagemakerNotebookInstanceInstanceMetadataServiceConfiguration {
  const SagemakerNotebookInstanceInstanceMetadataServiceConfiguration({
    this.minimumInstanceMetadataServiceVersion,
  });

  final TfArg<
    SagemakerNotebookInstanceInstanceMetadataServiceConfigurationMinimumInstanceMetadataServiceVersion
  >?
  minimumInstanceMetadataServiceVersion;

  Map<String, Object?> encode() => {
    'minimum_instance_metadata_service_version':
        ?minimumInstanceMetadataServiceVersion?.toTfJson(),
  };
}

/// `minimum_instance_metadata_service_version` — derived from the provider schema description.
enum SagemakerNotebookInstanceInstanceMetadataServiceConfigurationMinimumInstanceMetadataServiceVersion
    implements TerraformEnum {
  v1('1'),
  v2('2');

  const SagemakerNotebookInstanceInstanceMetadataServiceConfigurationMinimumInstanceMetadataServiceVersion(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sagemaker_notebook_instance`.
final class AwsSagemakerNotebookInstance extends Resource {
  static const String tfType = 'aws_sagemaker_notebook_instance';

  AwsSagemakerNotebookInstance({
    required super.localName,
    TfArg<List<String>>? additionalCodeRepositories,
    TfArg<String>? defaultCodeRepository,
    TfArg<SagemakerNotebookInstanceDirectInternetAccess>? directInternetAccess,
    required TfArg<SagemakerNotebookInstanceInstanceType> instanceType,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? lifecycleConfigName,
    required TfArg<String> name,
    TfArg<String>? platformIdentifier,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<SagemakerNotebookInstanceRootAccess>? rootAccess,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    RefTo<AwsSubnet>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? volumeSize,
    SagemakerNotebookInstanceInstanceMetadataServiceConfiguration?
    instanceMetadataServiceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_code_repositories': ?additionalCodeRepositories,
           'default_code_repository': ?defaultCodeRepository,
           'direct_internet_access': ?directInternetAccess,
           'instance_type': instanceType,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'lifecycle_config_name': ?lifecycleConfigName,
           'name': name,
           'platform_identifier': ?platformIdentifier,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'root_access': ?rootAccess,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'volume_size': ?volumeSize,
           if (instanceMetadataServiceConfiguration != null)
             'instance_metadata_service_configuration': TfArg.literal(
               instanceMetadataServiceConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerNotebookInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerNotebookInstance>`.
  RefTo<AwsSagemakerNotebookInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');
}
