// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_replication_configuration`.
const Set<String> _awsS3BucketReplicationConfigurationSensitive = <String>{
  'token',
};

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRule {
  const S3BucketReplicationConfigurationRule({
    this.id,
    this.prefix,
    this.priority,
    required this.status,
    this.deleteMarkerReplication,
    required this.destination,
    this.existingObjectReplication,
    this.filter,
    this.sourceSelectionCriteria,
  });

  final TfArg<String>? id;

  final TfArg<String>? prefix;

  final TfArg<num>? priority;

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  final S3BucketReplicationConfigurationDeleteMarkerReplication?
  deleteMarkerReplication;

  final S3BucketReplicationConfigurationDestination destination;

  final S3BucketReplicationConfigurationExistingObjectReplication?
  existingObjectReplication;

  final S3BucketReplicationConfigurationFilter? filter;

  final S3BucketReplicationConfigurationSourceSelectionCriteria?
  sourceSelectionCriteria;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'status': status.toTfJson(),
    'delete_marker_replication': ?deleteMarkerReplication?.encode(),
    'destination': destination.encode(),
    'existing_object_replication': ?existingObjectReplication?.encode(),
    'filter': ?filter?.encode(),
    'source_selection_criteria': ?sourceSelectionCriteria?.encode(),
  };
}

/// `status` — derived from the provider schema description.
enum S3BucketReplicationConfigurationStatus implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const S3BucketReplicationConfigurationStatus(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.delete_marker_replication` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationDeleteMarkerReplication {
  const S3BucketReplicationConfigurationDeleteMarkerReplication({
    required this.status,
  });

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `rule.destination` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationDestination {
  const S3BucketReplicationConfigurationDestination({
    this.account,
    required this.bucket,
    this.storageClass,
    this.accessControlTranslation,
    this.encryptionConfiguration,
    this.metrics,
    this.replicationTime,
  });

  final TfArg<String>? account;

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<S3BucketReplicationConfigurationStorageClass>? storageClass;

  final S3BucketReplicationConfigurationAccessControlTranslation?
  accessControlTranslation;

  final S3BucketReplicationConfigurationEncryptionConfiguration?
  encryptionConfiguration;

  final S3BucketReplicationConfigurationMetrics? metrics;

  final S3BucketReplicationConfigurationReplicationTime? replicationTime;

  Map<String, Object?> encode() => {
    'account': ?account?.toTfJson(),
    'bucket': bucket.encodeAs('arn').toTfJson(),
    'storage_class': ?storageClass?.toTfJson(),
    'access_control_translation': ?accessControlTranslation?.encode(),
    'encryption_configuration': ?encryptionConfiguration?.encode(),
    'metrics': ?metrics?.encode(),
    'replication_time': ?replicationTime?.encode(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum S3BucketReplicationConfigurationStorageClass implements TerraformEnum {
  standard('STANDARD'),
  reducedRedundancy('REDUCED_REDUNDANCY'),
  standardIa('STANDARD_IA'),
  onezoneIa('ONEZONE_IA'),
  intelligentTiering('INTELLIGENT_TIERING'),
  glacier('GLACIER'),
  deepArchive('DEEP_ARCHIVE'),
  outposts('OUTPOSTS'),
  glacierIr('GLACIER_IR'),
  snow('SNOW'),
  expressOnezone('EXPRESS_ONEZONE'),
  fsxOpenzfs('FSX_OPENZFS'),
  fsxOntap('FSX_ONTAP'),
  awsBackupWarm('AWS_BACKUP_WARM'),
  awsBackupLowCostWarm('AWS_BACKUP_LOW_COST_WARM');

  const S3BucketReplicationConfigurationStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination.access_control_translation` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationAccessControlTranslation {
  const S3BucketReplicationConfigurationAccessControlTranslation({
    required this.owner,
  });

  final TfArg<S3BucketReplicationConfigurationOwner> owner;

  Map<String, Object?> encode() => {'owner': owner.toTfJson()};
}

/// `owner` — derived from the provider schema description.
enum S3BucketReplicationConfigurationOwner implements TerraformEnum {
  destination('Destination');

  const S3BucketReplicationConfigurationOwner(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rule.destination.encryption_configuration` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationEncryptionConfiguration {
  const S3BucketReplicationConfigurationEncryptionConfiguration({
    required this.replicaKmsKeyId,
  });

  final TfArg<String> replicaKmsKeyId;

  Map<String, Object?> encode() => {
    'replica_kms_key_id': replicaKmsKeyId.toTfJson(),
  };
}

/// Typed helper for the `rule.destination.metrics` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationMetrics {
  const S3BucketReplicationConfigurationMetrics({
    required this.status,
    this.eventThreshold,
  });

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  final S3BucketReplicationConfigurationEventThreshold? eventThreshold;

  Map<String, Object?> encode() => {
    'status': status.toTfJson(),
    'event_threshold': ?eventThreshold?.encode(),
  };
}

/// Typed helper for the `rule.destination.metrics.event_threshold` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationEventThreshold {
  const S3BucketReplicationConfigurationEventThreshold({required this.minutes});

  final TfArg<num> minutes;

  Map<String, Object?> encode() => {'minutes': minutes.toTfJson()};
}

/// Typed helper for the `rule.destination.replication_time` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationReplicationTime {
  const S3BucketReplicationConfigurationReplicationTime({
    required this.status,
    required this.time,
  });

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  final S3BucketReplicationConfigurationTime time;

  Map<String, Object?> encode() => {
    'status': status.toTfJson(),
    'time': time.encode(),
  };
}

/// Typed helper for the `rule.destination.replication_time.time` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationTime {
  const S3BucketReplicationConfigurationTime({required this.minutes});

  final TfArg<num> minutes;

  Map<String, Object?> encode() => {'minutes': minutes.toTfJson()};
}

/// Typed helper for the `rule.existing_object_replication` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationExistingObjectReplication {
  const S3BucketReplicationConfigurationExistingObjectReplication({
    required this.status,
  });

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `rule.filter` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationFilter {
  const S3BucketReplicationConfigurationFilter({
    this.prefix,
    this.and,
    this.tag,
  });

  final TfArg<String>? prefix;

  final S3BucketReplicationConfigurationAnd? and;

  final S3BucketReplicationConfigurationTag? tag;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'and': ?and?.encode(),
    'tag': ?tag?.encode(),
  };
}

/// Typed helper for the `rule.filter.and` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationAnd {
  const S3BucketReplicationConfigurationAnd({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
  };
}

/// Typed helper for the `rule.filter.tag` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationTag {
  const S3BucketReplicationConfigurationTag({
    required this.key,
    required this.value,
  });

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Typed helper for the `rule.source_selection_criteria` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationSourceSelectionCriteria {
  const S3BucketReplicationConfigurationSourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  final S3BucketReplicationConfigurationReplicaModifications?
  replicaModifications;

  final S3BucketReplicationConfigurationSseKmsEncryptedObjects?
  sseKmsEncryptedObjects;

  Map<String, Object?> encode() => {
    'replica_modifications': ?replicaModifications?.encode(),
    'sse_kms_encrypted_objects': ?sseKmsEncryptedObjects?.encode(),
  };
}

/// Typed helper for the `rule.source_selection_criteria.replica_modifications` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationReplicaModifications {
  const S3BucketReplicationConfigurationReplicaModifications({
    required this.status,
  });

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `rule.source_selection_criteria.sse_kms_encrypted_objects` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationSseKmsEncryptedObjects {
  const S3BucketReplicationConfigurationSseKmsEncryptedObjects({
    required this.status,
  });

  final TfArg<S3BucketReplicationConfigurationStatus> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_s3_bucket_replication_configuration`.
final class AwsS3BucketReplicationConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_replication_configuration';

  AwsS3BucketReplicationConfiguration(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? region,
    required RefTo<AwsIamRole> role,
    TfArg<String>? token,
    required List<S3BucketReplicationConfigurationRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'region': ?region,
           'role': role.encodeAs('arn'),
           'token': ?token,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketReplicationConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketReplicationConfiguration>`.
  RefTo<AwsS3BucketReplicationConfiguration> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `token` attribute.
  TfRef<String> get token => TfRef.attribute<String>(this, 'token');
}
