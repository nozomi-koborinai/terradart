// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_ssm_resource_data_sync`.
const Set<String> _awsSsmResourceDataSyncSensitive = <String>{};

/// Typed helper for the `s3_destination` block of
/// `aws_ssm_resource_data_sync` (derived from provider schema).
@immutable
final class SsmResourceDataSyncS3Destination {
  const SsmResourceDataSyncS3Destination({
    required this.bucketName,
    this.kmsKeyArn,
    this.prefix,
    required this.region,
    this.syncFormat,
    this.destinationDataSharing,
  });

  final RefTo<AwsS3Bucket> bucketName;

  final RefTo<AwsKmsKey>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> region;

  final TfArg<SsmResourceDataSyncS3DestinationSyncFormat>? syncFormat;

  final SsmResourceDataSyncS3DestinationDestinationDataSharing?
  destinationDataSharing;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.encodeAs('id').toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.encodeAs('arn').toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'region': region.toTfJson(),
    'sync_format': ?syncFormat?.toTfJson(),
    'destination_data_sharing': ?destinationDataSharing?.encode(),
  };
}

/// `sync_format` — derived from the provider schema description.
enum SsmResourceDataSyncS3DestinationSyncFormat implements TerraformEnum {
  jsonserde('JsonSerDe');

  const SsmResourceDataSyncS3DestinationSyncFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `s3_destination.destination_data_sharing` block of
/// `aws_ssm_resource_data_sync` (derived from provider schema).
@immutable
final class SsmResourceDataSyncS3DestinationDestinationDataSharing {
  const SsmResourceDataSyncS3DestinationDestinationDataSharing({
    this.destinationDataSharingType,
  });

  final TfArg<
    SsmResourceDataSyncS3DestinationDestinationDataSharingDestinationDataSharingType
  >?
  destinationDataSharingType;

  Map<String, Object?> encode() => {
    'destination_data_sharing_type': ?destinationDataSharingType?.toTfJson(),
  };
}

/// `destination_data_sharing_type` — derived from the provider schema description.
enum SsmResourceDataSyncS3DestinationDestinationDataSharingDestinationDataSharingType
    implements TerraformEnum {
  organization('Organization');

  const SsmResourceDataSyncS3DestinationDestinationDataSharingDestinationDataSharingType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ssm_resource_data_sync`.
final class AwsSsmResourceDataSync extends Resource {
  static const String tfType = 'aws_ssm_resource_data_sync';

  AwsSsmResourceDataSync({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required SsmResourceDataSyncS3Destination s3Destination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': ?region,
           's3_destination': TfArg.literal(s3Destination.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmResourceDataSyncSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSsmResourceDataSync>`.
  RefTo<AwsSsmResourceDataSync> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
