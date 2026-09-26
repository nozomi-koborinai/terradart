// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> bucketName;

  final TfArg<String>? kmsKeyArn;

  final TfArg<String>? prefix;

  final TfArg<String> region;

  final TfArg<String>? syncFormat;

  final SsmResourceDataSyncS3DestinationDestinationDataSharing?
  destinationDataSharing;

  Map<String, Object?> encode() => {
    'bucket_name': bucketName.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'region': region.toTfJson(),
    if (syncFormat != null) 'sync_format': syncFormat!.toTfJson(),
    if (destinationDataSharing != null)
      'destination_data_sharing': destinationDataSharing!.encode(),
  };
}

/// Typed helper for the `s3_destination.destination_data_sharing` block of
/// `aws_ssm_resource_data_sync` (derived from provider schema).
@immutable
final class SsmResourceDataSyncS3DestinationDestinationDataSharing {
  const SsmResourceDataSyncS3DestinationDestinationDataSharing({
    this.destinationDataSharingType,
  });

  final TfArg<String>? destinationDataSharingType;

  Map<String, Object?> encode() => {
    if (destinationDataSharingType != null)
      'destination_data_sharing_type': destinationDataSharingType!.toTfJson(),
  };
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
           if (region != null) 'region': region,
           's3_destination': TfArg.literal(s3Destination.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSsmResourceDataSyncSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
