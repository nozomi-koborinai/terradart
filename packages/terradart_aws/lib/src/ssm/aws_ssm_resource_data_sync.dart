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

  final SsmResourceDataSyncFormat? syncFormat;

  final SsmResourceDataSyncDestinationDataSharing? destinationDataSharing;

  @internal
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
extension type const SsmResourceDataSyncFormat._(TfArg<String> _)
    implements TfArg<String> {
  SsmResourceDataSyncFormat.variable(String name)
    : this._(TfArg.variable(name));
  SsmResourceDataSyncFormat.expression(String template)
    : this._(TfArg.expression(template));
  const SsmResourceDataSyncFormat.arg(TfArg<String> arg) : this._(arg);

  static const jsonserde = SsmResourceDataSyncFormat._(
    TfArgLiteral('JsonSerDe'),
  );

  static const List<SsmResourceDataSyncFormat> values = [jsonserde];
}

/// Typed helper for the `s3_destination.destination_data_sharing` block of
/// `aws_ssm_resource_data_sync` (derived from provider schema).
@immutable
final class SsmResourceDataSyncDestinationDataSharing {
  const SsmResourceDataSyncDestinationDataSharing({
    this.destinationDataSharingType,
  });

  final SsmResourceDataSyncDestinationDataSharingType?
  destinationDataSharingType;

  @internal
  Map<String, Object?> encode() => {
    'destination_data_sharing_type': ?destinationDataSharingType?.toTfJson(),
  };
}

/// `destination_data_sharing_type` — derived from the provider schema description.
extension type const SsmResourceDataSyncDestinationDataSharingType._(
  TfArg<String> _
) implements TfArg<String> {
  SsmResourceDataSyncDestinationDataSharingType.variable(String name)
    : this._(TfArg.variable(name));
  SsmResourceDataSyncDestinationDataSharingType.expression(String template)
    : this._(TfArg.expression(template));
  const SsmResourceDataSyncDestinationDataSharingType.arg(TfArg<String> arg)
    : this._(arg);

  static const organization = SsmResourceDataSyncDestinationDataSharingType._(
    TfArgLiteral('Organization'),
  );

  static const List<SsmResourceDataSyncDestinationDataSharingType> values = [
    organization,
  ];
}

/// Factory wrapper for `aws_ssm_resource_data_sync`.
final class AwsSsmResourceDataSync extends Resource {
  static const String tfType = 'aws_ssm_resource_data_sync';

  AwsSsmResourceDataSync(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
