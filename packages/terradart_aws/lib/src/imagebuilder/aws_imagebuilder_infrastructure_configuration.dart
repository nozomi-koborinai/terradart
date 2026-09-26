// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_imagebuilder_infrastructure_configuration`.
const Set<String> _awsImagebuilderInfrastructureConfigurationSensitive =
    <String>{};

/// Typed helper for the `instance_metadata_options` block of
/// `aws_imagebuilder_infrastructure_configuration` (derived from provider schema).
@immutable
final class ImagebuilderInfrastructureConfigurationInstanceMetadataOptions {
  const ImagebuilderInfrastructureConfigurationInstanceMetadataOptions({
    this.httpPutResponseHopLimit,
    this.httpTokens,
  });

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<String>? httpTokens;

  Map<String, Object?> encode() => {
    if (httpPutResponseHopLimit != null)
      'http_put_response_hop_limit': httpPutResponseHopLimit!.toTfJson(),
    if (httpTokens != null) 'http_tokens': httpTokens!.toTfJson(),
  };
}

/// Typed helper for the `logging` block of
/// `aws_imagebuilder_infrastructure_configuration` (derived from provider schema).
@immutable
final class ImagebuilderInfrastructureConfigurationLogging {
  const ImagebuilderInfrastructureConfigurationLogging({required this.s3Logs});

  final ImagebuilderInfrastructureConfigurationLoggingS3Logs s3Logs;

  Map<String, Object?> encode() => {'s3_logs': s3Logs.encode()};
}

/// Typed helper for the `logging.s3_logs` block of
/// `aws_imagebuilder_infrastructure_configuration` (derived from provider schema).
@immutable
final class ImagebuilderInfrastructureConfigurationLoggingS3Logs {
  const ImagebuilderInfrastructureConfigurationLoggingS3Logs({
    required this.s3BucketName,
    this.s3KeyPrefix,
  });

  final TfArg<String> s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.toTfJson(),
    if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix!.toTfJson(),
  };
}

/// Typed helper for the `placement` block of
/// `aws_imagebuilder_infrastructure_configuration` (derived from provider schema).
@immutable
final class ImagebuilderInfrastructureConfigurationPlacement {
  const ImagebuilderInfrastructureConfigurationPlacement({
    this.availabilityZone,
    this.hostId,
    this.hostResourceGroupArn,
    this.tenancy,
  });

  final TfArg<String>? availabilityZone;

  final TfArg<String>? hostId;

  final TfArg<String>? hostResourceGroupArn;

  final TfArg<String>? tenancy;

  Map<String, Object?> encode() => {
    if (availabilityZone != null)
      'availability_zone': availabilityZone!.toTfJson(),
    if (hostId != null) 'host_id': hostId!.toTfJson(),
    if (hostResourceGroupArn != null)
      'host_resource_group_arn': hostResourceGroupArn!.toTfJson(),
    if (tenancy != null) 'tenancy': tenancy!.toTfJson(),
  };
}

/// Factory wrapper for `aws_imagebuilder_infrastructure_configuration`.
final class AwsImagebuilderInfrastructureConfiguration extends Resource {
  static const String tfType = 'aws_imagebuilder_infrastructure_configuration';

  AwsImagebuilderInfrastructureConfiguration({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> instanceProfileName,
    TfArg<List<String>>? instanceTypes,
    TfArg<String>? keyPair,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? resourceTags,
    TfArg<List<String>>? securityGroupIds,
    TfArg<String>? snsTopicArn,
    TfArg<String>? subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<bool>? terminateInstanceOnFailure,
    ImagebuilderInfrastructureConfigurationInstanceMetadataOptions?
    instanceMetadataOptions,
    ImagebuilderInfrastructureConfigurationLogging? logging,
    ImagebuilderInfrastructureConfigurationPlacement? placement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'instance_profile_name': instanceProfileName,
           if (instanceTypes != null) 'instance_types': instanceTypes,
           if (keyPair != null) 'key_pair': keyPair,
           'name': name,
           if (region != null) 'region': region,
           if (resourceTags != null) 'resource_tags': resourceTags,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           if (snsTopicArn != null) 'sns_topic_arn': snsTopicArn,
           if (subnetId != null) 'subnet_id': subnetId,
           if (tags != null) 'tags': tags,
           if (terminateInstanceOnFailure != null)
             'terminate_instance_on_failure': terminateInstanceOnFailure,
           if (instanceMetadataOptions != null)
             'instance_metadata_options': TfArg.literal(
               instanceMetadataOptions.encode(),
             ),
           if (logging != null) 'logging': TfArg.literal(logging.encode()),
           if (placement != null)
             'placement': TfArg.literal(placement.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsImagebuilderInfrastructureConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `date_created` attribute.
  TfRef<String> get dateCreated =>
      TfRef.attribute<String>(this, 'date_created');

  /// Reference to `date_updated` attribute.
  TfRef<String> get dateUpdated =>
      TfRef.attribute<String>(this, 'date_updated');
}
