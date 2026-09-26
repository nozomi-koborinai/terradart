// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_replication_configuration`.
const Set<String> _awsEfsReplicationConfigurationSensitive = <String>{};

/// Typed helper for the `destination` block of
/// `aws_efs_replication_configuration` (derived from provider schema).
@immutable
final class EfsReplicationConfigurationDestination {
  const EfsReplicationConfigurationDestination({
    this.availabilityZoneName,
    this.fileSystemId,
    this.kmsKeyId,
    this.region,
  });

  final TfArg<String>? availabilityZoneName;

  final TfArg<String>? fileSystemId;

  final TfArg<String>? kmsKeyId;

  final TfArg<String>? region;

  Map<String, Object?> encode() => {
    if (availabilityZoneName != null)
      'availability_zone_name': availabilityZoneName!.toTfJson(),
    if (fileSystemId != null) 'file_system_id': fileSystemId!.toTfJson(),
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    if (region != null) 'region': region!.toTfJson(),
  };
}

/// Factory wrapper for `aws_efs_replication_configuration`.
final class AwsEfsReplicationConfiguration extends Resource {
  static const String tfType = 'aws_efs_replication_configuration';

  AwsEfsReplicationConfiguration({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> sourceFileSystemId,
    required EfsReplicationConfigurationDestination destination,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'source_file_system_id': sourceFileSystemId,
           'destination': TfArg.literal(destination.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsReplicationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `original_source_file_system_arn` attribute.
  TfRef<String> get originalSourceFileSystemArn =>
      TfRef.attribute<String>(this, 'original_source_file_system_arn');

  /// Reference to `source_file_system_arn` attribute.
  TfRef<String> get sourceFileSystemArn =>
      TfRef.attribute<String>(this, 'source_file_system_arn');

  /// Reference to `source_file_system_region` attribute.
  TfRef<String> get sourceFileSystemRegion =>
      TfRef.attribute<String>(this, 'source_file_system_region');
}
