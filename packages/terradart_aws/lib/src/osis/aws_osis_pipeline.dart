// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;
import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_osis_pipeline`.
const Set<String> _awsOsisPipelineSensitive = <String>{};

/// Typed helper for the `buffer_options` block of
/// `aws_osis_pipeline` (derived from provider schema).
@immutable
final class OsisPipelineBufferOptions {
  const OsisPipelineBufferOptions({required this.persistentBufferEnabled});

  final TfArg<bool> persistentBufferEnabled;

  Map<String, Object?> encode() => {
    'persistent_buffer_enabled': persistentBufferEnabled.toTfJson(),
  };
}

/// Typed helper for the `encryption_at_rest_options` block of
/// `aws_osis_pipeline` (derived from provider schema).
@immutable
final class OsisPipelineEncryptionAtRestOptions {
  const OsisPipelineEncryptionAtRestOptions({required this.kmsKeyArn});

  final RefTo<AwsKmsKey> kmsKeyArn;

  Map<String, Object?> encode() => {
    'kms_key_arn': kmsKeyArn.encodeAs('arn').toTfJson(),
  };
}

/// Typed helper for the `log_publishing_options` block of
/// `aws_osis_pipeline` (derived from provider schema).
@immutable
final class OsisPipelineLogPublishingOptions {
  const OsisPipelineLogPublishingOptions({
    this.isLoggingEnabled,
    this.cloudwatchLogDestination,
  });

  final TfArg<bool>? isLoggingEnabled;

  final List<OsisPipelineCloudwatchLogDestination>? cloudwatchLogDestination;

  Map<String, Object?> encode() => {
    'is_logging_enabled': ?isLoggingEnabled?.toTfJson(),
    if (cloudwatchLogDestination != null)
      'cloudwatch_log_destination': [
        for (final e in cloudwatchLogDestination!) e.encode(),
      ],
  };
}

/// Typed helper for the `log_publishing_options.cloudwatch_log_destination` block of
/// `aws_osis_pipeline` (derived from provider schema).
@immutable
final class OsisPipelineCloudwatchLogDestination {
  const OsisPipelineCloudwatchLogDestination({required this.logGroup});

  final RefTo<AwsCloudwatchLogGroup> logGroup;

  Map<String, Object?> encode() => {
    'log_group': logGroup.encodeAs('name').toTfJson(),
  };
}

/// Typed helper for the `vpc_options` block of
/// `aws_osis_pipeline` (derived from provider schema).
@immutable
final class OsisPipelineVpcOptions {
  const OsisPipelineVpcOptions({
    this.securityGroupIds,
    required this.subnetIds,
    this.vpcEndpointManagement,
  });

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<List<RefTo<AwsSubnet>>> subnetIds;

  final OsisPipelineVpcEndpointManagement? vpcEndpointManagement;

  Map<String, Object?> encode() => {
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'subnet_ids': subnetIds.encodeAs('id').toTfJson(),
    'vpc_endpoint_management': ?vpcEndpointManagement?.toTfJson(),
  };
}

/// `vpc_endpoint_management` — derived from the provider schema description.
extension type const OsisPipelineVpcEndpointManagement._(TfArg<String> _)
    implements TfArg<String> {
  OsisPipelineVpcEndpointManagement.variable(String name)
    : this._(TfArg.variable(name));
  OsisPipelineVpcEndpointManagement.expression(String template)
    : this._(TfArg.expression(template));
  const OsisPipelineVpcEndpointManagement.arg(TfArg<String> arg) : this._(arg);

  static const customer = OsisPipelineVpcEndpointManagement._(
    TfArgLiteral('CUSTOMER'),
  );
  static const service = OsisPipelineVpcEndpointManagement._(
    TfArgLiteral('SERVICE'),
  );

  static const List<OsisPipelineVpcEndpointManagement> values = [
    customer,
    service,
  ];
}

/// Factory wrapper for `aws_osis_pipeline`.
final class AwsOsisPipeline extends Resource {
  static const String tfType = 'aws_osis_pipeline';

  AwsOsisPipeline(
    super.localName, {
    required TfArg<num> maxUnits,
    required TfArg<num> minUnits,
    required TfArg<String> pipelineConfigurationBody,
    required TfArg<String> pipelineName,
    TfArg<String>? pipelineRoleArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<OsisPipelineBufferOptions>? bufferOptions,
    List<OsisPipelineEncryptionAtRestOptions>? encryptionAtRestOptions,
    List<OsisPipelineLogPublishingOptions>? logPublishingOptions,
    List<OsisPipelineVpcOptions>? vpcOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_units': maxUnits,
           'min_units': minUnits,
           'pipeline_configuration_body': pipelineConfigurationBody,
           'pipeline_name': pipelineName,
           'pipeline_role_arn': ?pipelineRoleArn,
           'region': ?region,
           'tags': ?tags,
           if (bufferOptions != null)
             'buffer_options': TfArg.literal([
               for (final e in bufferOptions) e.encode(),
             ]),
           if (encryptionAtRestOptions != null)
             'encryption_at_rest_options': TfArg.literal([
               for (final e in encryptionAtRestOptions) e.encode(),
             ]),
           if (logPublishingOptions != null)
             'log_publishing_options': TfArg.literal([
               for (final e in logPublishingOptions) e.encode(),
             ]),
           if (vpcOptions != null)
             'vpc_options': TfArg.literal([
               for (final e in vpcOptions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOsisPipelineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOsisPipeline>`.
  RefTo<AwsOsisPipeline> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ingest_endpoint_urls` attribute.
  TfRef<List<String>> get ingestEndpointUrls =>
      TfRef.attribute<List<String>>(this, 'ingest_endpoint_urls');

  /// Reference to `pipeline_arn` attribute.
  TfRef<String> get pipelineArn =>
      TfRef.attribute<String>(this, 'pipeline_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `max_units` attribute.
  TfRef<num> get maxUnits => TfRef.attribute<num>(this, 'max_units');

  /// Reference to `min_units` attribute.
  TfRef<num> get minUnits => TfRef.attribute<num>(this, 'min_units');

  /// Reference to `pipeline_configuration_body` attribute.
  TfRef<String> get pipelineConfigurationBody =>
      TfRef.attribute<String>(this, 'pipeline_configuration_body');

  /// Reference to `pipeline_name` attribute.
  TfRef<String> get pipelineName =>
      TfRef.attribute<String>(this, 'pipeline_name');

  /// Reference to `pipeline_role_arn` attribute.
  TfRef<String> get pipelineRoleArn =>
      TfRef.attribute<String>(this, 'pipeline_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
