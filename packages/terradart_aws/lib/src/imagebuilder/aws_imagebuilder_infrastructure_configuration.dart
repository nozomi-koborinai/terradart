// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;
import '../sns/aws_sns_topic.dart' show AwsSnsTopic;

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

  final TfArg<
    ImagebuilderInfrastructureConfigurationInstanceMetadataOptionsHttpTokens
  >?
  httpTokens;

  Map<String, Object?> encode() => {
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
  };
}

/// `http_tokens` — derived from the provider schema description.
enum ImagebuilderInfrastructureConfigurationInstanceMetadataOptionsHttpTokens
    implements TerraformEnum {
  required('required'),
  optional('optional');

  const ImagebuilderInfrastructureConfigurationInstanceMetadataOptionsHttpTokens(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final RefTo<AwsS3Bucket> s3BucketName;

  final TfArg<String>? s3KeyPrefix;

  Map<String, Object?> encode() => {
    's3_bucket_name': s3BucketName.encodeAs('id').toTfJson(),
    's3_key_prefix': ?s3KeyPrefix?.toTfJson(),
  };
}

/// Typed helper for the `placement` block of
/// `aws_imagebuilder_infrastructure_configuration` (derived from provider schema).
@immutable
final class ImagebuilderInfrastructureConfigurationPlacement {
  const ImagebuilderInfrastructureConfigurationPlacement({
    this.availabilityZone,
    this.host,
    this.tenancy,
  });

  final TfArg<String>? availabilityZone;

  final ImagebuilderInfrastructureConfigurationPlacementHost? host;

  final TfArg<ImagebuilderInfrastructureConfigurationPlacementTenancy>? tenancy;

  Map<String, Object?> encode() => {
    'availability_zone': ?availabilityZone?.toTfJson(),
    ...?host?.encode(),
    'tenancy': ?tenancy?.toTfJson(),
  };
}

/// At most one of `host_id`, `host_resource_group_arn` on the `placement` block of `aws_imagebuilder_infrastructure_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.hostId(...)`.
sealed class ImagebuilderInfrastructureConfigurationPlacementHost {
  const ImagebuilderInfrastructureConfigurationPlacementHost();

  /// Sets `host_id`.
  const factory ImagebuilderInfrastructureConfigurationPlacementHost.hostId(
    TfArg<String> hostId,
  ) = ImagebuilderInfrastructureConfigurationPlacementHostHostId;

  /// Sets `host_resource_group_arn`.
  const factory ImagebuilderInfrastructureConfigurationPlacementHost.hostResourceGroupArn(
    TfArg<String> hostResourceGroupArn,
  ) = ImagebuilderInfrastructureConfigurationPlacementHostHostResourceGroupArn;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ImagebuilderInfrastructureConfigurationPlacementHost.hostId] choice: sets `host_id`.
final class ImagebuilderInfrastructureConfigurationPlacementHostHostId
    extends ImagebuilderInfrastructureConfigurationPlacementHost {
  const ImagebuilderInfrastructureConfigurationPlacementHostHostId(this.hostId);

  final TfArg<String> hostId;

  @override
  String get blockKey => 'host_id';

  @override
  Map<String, Object?> encode() => {'host_id': hostId.toTfJson()};
}

/// The [ImagebuilderInfrastructureConfigurationPlacementHost.hostResourceGroupArn] choice: sets `host_resource_group_arn`.
final class ImagebuilderInfrastructureConfigurationPlacementHostHostResourceGroupArn
    extends ImagebuilderInfrastructureConfigurationPlacementHost {
  const ImagebuilderInfrastructureConfigurationPlacementHostHostResourceGroupArn(
    this.hostResourceGroupArn,
  );

  final TfArg<String> hostResourceGroupArn;

  @override
  String get blockKey => 'host_resource_group_arn';

  @override
  Map<String, Object?> encode() => {
    'host_resource_group_arn': hostResourceGroupArn.toTfJson(),
  };
}

/// `tenancy` — derived from the provider schema description.
enum ImagebuilderInfrastructureConfigurationPlacementTenancy
    implements TerraformEnum {
  defaultCase('default'),
  dedicated('dedicated'),
  host('host');

  const ImagebuilderInfrastructureConfigurationPlacementTenancy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    RefTo<AwsSnsTopic>? snsTopicArn,
    RefTo<AwsSubnet>? subnetId,
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
           'description': ?description,
           'instance_profile_name': instanceProfileName,
           'instance_types': ?instanceTypes,
           'key_pair': ?keyPair,
           'name': name,
           'region': ?region,
           'resource_tags': ?resourceTags,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'sns_topic_arn': ?snsTopicArn?.encodeAs('arn'),
           'subnet_id': ?subnetId?.encodeAs('id'),
           'tags': ?tags,
           'terminate_instance_on_failure': ?terminateInstanceOnFailure,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsImagebuilderInfrastructureConfiguration>`.
  RefTo<AwsImagebuilderInfrastructureConfiguration> get ref => RefTo.of(this);

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
