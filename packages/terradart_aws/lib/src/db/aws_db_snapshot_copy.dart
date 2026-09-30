// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_db_snapshot_copy`.
const Set<String> _awsDbSnapshotCopySensitive = <String>{};

/// Factory wrapper for `aws_db_snapshot_copy`.
final class AwsDbSnapshotCopy extends Resource {
  static const String tfType = 'aws_db_snapshot_copy';

  AwsDbSnapshotCopy({
    required super.localName,
    TfArg<bool>? copyTags,
    TfArg<String>? destinationRegion,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? optionGroupName,
    TfArg<String>? presignedUrl,
    TfArg<String>? region,
    TfArg<List<String>>? sharedAccounts,
    required TfArg<String> sourceDbSnapshotIdentifier,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? targetCustomAvailabilityZone,
    required TfArg<String> targetDbSnapshotIdentifier,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'copy_tags': ?copyTags,
           'destination_region': ?destinationRegion,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'option_group_name': ?optionGroupName,
           'presigned_url': ?presignedUrl,
           'region': ?region,
           'shared_accounts': ?sharedAccounts,
           'source_db_snapshot_identifier': sourceDbSnapshotIdentifier,
           'tags': ?tags,
           'target_custom_availability_zone': ?targetCustomAvailabilityZone,
           'target_db_snapshot_identifier': targetDbSnapshotIdentifier,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDbSnapshotCopySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDbSnapshotCopy>`.
  RefTo<AwsDbSnapshotCopy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocated_storage` attribute.
  TfRef<num> get allocatedStorage =>
      TfRef.attribute<num>(this, 'allocated_storage');

  /// Reference to `availability_zone` attribute.
  TfRef<String> get availabilityZone =>
      TfRef.attribute<String>(this, 'availability_zone');

  /// Reference to `db_snapshot_arn` attribute.
  TfRef<String> get dbSnapshotArn =>
      TfRef.attribute<String>(this, 'db_snapshot_arn');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `engine` attribute.
  TfRef<String> get engine => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersion =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `iops` attribute.
  TfRef<num> get iops => TfRef.attribute<num>(this, 'iops');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModel =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `snapshot_type` attribute.
  TfRef<String> get snapshotType =>
      TfRef.attribute<String>(this, 'snapshot_type');

  /// Reference to `source_region` attribute.
  TfRef<String> get sourceRegion =>
      TfRef.attribute<String>(this, 'source_region');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');

  /// Reference to `copy_tags` attribute.
  TfRef<bool> get copyTagsRef => TfRef.attribute<bool>(this, 'copy_tags');

  /// Reference to `destination_region` attribute.
  TfRef<String> get destinationRegionRef =>
      TfRef.attribute<String>(this, 'destination_region');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `option_group_name` attribute.
  TfRef<String> get optionGroupNameRef =>
      TfRef.attribute<String>(this, 'option_group_name');

  /// Reference to `presigned_url` attribute.
  TfRef<String> get presignedUrlRef =>
      TfRef.attribute<String>(this, 'presigned_url');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `shared_accounts` attribute.
  TfRef<List<String>> get sharedAccountsRef =>
      TfRef.attribute<List<String>>(this, 'shared_accounts');

  /// Reference to `source_db_snapshot_identifier` attribute.
  TfRef<String> get sourceDbSnapshotIdentifierRef =>
      TfRef.attribute<String>(this, 'source_db_snapshot_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `target_custom_availability_zone` attribute.
  TfRef<String> get targetCustomAvailabilityZoneRef =>
      TfRef.attribute<String>(this, 'target_custom_availability_zone');

  /// Reference to `target_db_snapshot_identifier` attribute.
  TfRef<String> get targetDbSnapshotIdentifierRef =>
      TfRef.attribute<String>(this, 'target_db_snapshot_identifier');
}
