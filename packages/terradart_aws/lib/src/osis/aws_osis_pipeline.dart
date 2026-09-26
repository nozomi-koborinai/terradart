// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
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

  final List<OsisPipelineLogPublishingOptionsCloudwatchLogDestination>?
  cloudwatchLogDestination;

  Map<String, Object?> encode() => {
    if (isLoggingEnabled != null)
      'is_logging_enabled': isLoggingEnabled!.toTfJson(),
    if (cloudwatchLogDestination != null)
      'cloudwatch_log_destination': [
        for (final e in cloudwatchLogDestination!) e.encode(),
      ],
  };
}

/// Typed helper for the `log_publishing_options.cloudwatch_log_destination` block of
/// `aws_osis_pipeline` (derived from provider schema).
@immutable
final class OsisPipelineLogPublishingOptionsCloudwatchLogDestination {
  const OsisPipelineLogPublishingOptionsCloudwatchLogDestination({
    required this.logGroup,
  });

  final TfArg<String> logGroup;

  Map<String, Object?> encode() => {'log_group': logGroup.toTfJson()};
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

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<List<Object?>> subnetIds;

  final TfArg<String>? vpcEndpointManagement;

  Map<String, Object?> encode() => {
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    'subnet_ids': subnetIds.toTfJson(),
    if (vpcEndpointManagement != null)
      'vpc_endpoint_management': vpcEndpointManagement!.toTfJson(),
  };
}

/// Factory wrapper for `aws_osis_pipeline`.
final class AwsOsisPipeline extends Resource {
  static const String tfType = 'aws_osis_pipeline';

  AwsOsisPipeline({
    required super.localName,
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
           if (pipelineRoleArn != null) 'pipeline_role_arn': pipelineRoleArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
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
}
