// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> status;

  final S3BucketReplicationConfigurationRuleDeleteMarkerReplication?
  deleteMarkerReplication;

  final S3BucketReplicationConfigurationRuleDestination destination;

  final S3BucketReplicationConfigurationRuleExistingObjectReplication?
  existingObjectReplication;

  final S3BucketReplicationConfigurationRuleFilter? filter;

  final S3BucketReplicationConfigurationRuleSourceSelectionCriteria?
  sourceSelectionCriteria;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    'status': status.toTfJson(),
    if (deleteMarkerReplication != null)
      'delete_marker_replication': deleteMarkerReplication!.encode(),
    'destination': destination.encode(),
    if (existingObjectReplication != null)
      'existing_object_replication': existingObjectReplication!.encode(),
    if (filter != null) 'filter': filter!.encode(),
    if (sourceSelectionCriteria != null)
      'source_selection_criteria': sourceSelectionCriteria!.encode(),
  };
}

/// Typed helper for the `rule.delete_marker_replication` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDeleteMarkerReplication {
  const S3BucketReplicationConfigurationRuleDeleteMarkerReplication({
    required this.status,
  });

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `rule.destination` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDestination {
  const S3BucketReplicationConfigurationRuleDestination({
    this.account,
    required this.bucket,
    this.storageClass,
    this.accessControlTranslation,
    this.encryptionConfiguration,
    this.metrics,
    this.replicationTime,
  });

  final TfArg<String>? account;

  final TfArg<String> bucket;

  final TfArg<String>? storageClass;

  final S3BucketReplicationConfigurationRuleDestinationAccessControlTranslation?
  accessControlTranslation;

  final S3BucketReplicationConfigurationRuleDestinationEncryptionConfiguration?
  encryptionConfiguration;

  final S3BucketReplicationConfigurationRuleDestinationMetrics? metrics;

  final S3BucketReplicationConfigurationRuleDestinationReplicationTime?
  replicationTime;

  Map<String, Object?> encode() => {
    if (account != null) 'account': account!.toTfJson(),
    'bucket': bucket.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
    if (accessControlTranslation != null)
      'access_control_translation': accessControlTranslation!.encode(),
    if (encryptionConfiguration != null)
      'encryption_configuration': encryptionConfiguration!.encode(),
    if (metrics != null) 'metrics': metrics!.encode(),
    if (replicationTime != null) 'replication_time': replicationTime!.encode(),
  };
}

/// Typed helper for the `rule.destination.access_control_translation` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDestinationAccessControlTranslation {
  const S3BucketReplicationConfigurationRuleDestinationAccessControlTranslation({
    required this.owner,
  });

  final TfArg<String> owner;

  Map<String, Object?> encode() => {'owner': owner.toTfJson()};
}

/// Typed helper for the `rule.destination.encryption_configuration` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDestinationEncryptionConfiguration {
  const S3BucketReplicationConfigurationRuleDestinationEncryptionConfiguration({
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
final class S3BucketReplicationConfigurationRuleDestinationMetrics {
  const S3BucketReplicationConfigurationRuleDestinationMetrics({
    required this.status,
    this.eventThreshold,
  });

  final TfArg<String> status;

  final S3BucketReplicationConfigurationRuleDestinationMetricsEventThreshold?
  eventThreshold;

  Map<String, Object?> encode() => {
    'status': status.toTfJson(),
    if (eventThreshold != null) 'event_threshold': eventThreshold!.encode(),
  };
}

/// Typed helper for the `rule.destination.metrics.event_threshold` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDestinationMetricsEventThreshold {
  const S3BucketReplicationConfigurationRuleDestinationMetricsEventThreshold({
    required this.minutes,
  });

  final TfArg<num> minutes;

  Map<String, Object?> encode() => {'minutes': minutes.toTfJson()};
}

/// Typed helper for the `rule.destination.replication_time` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDestinationReplicationTime {
  const S3BucketReplicationConfigurationRuleDestinationReplicationTime({
    required this.status,
    required this.time,
  });

  final TfArg<String> status;

  final S3BucketReplicationConfigurationRuleDestinationReplicationTimeTime time;

  Map<String, Object?> encode() => {
    'status': status.toTfJson(),
    'time': time.encode(),
  };
}

/// Typed helper for the `rule.destination.replication_time.time` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleDestinationReplicationTimeTime {
  const S3BucketReplicationConfigurationRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  final TfArg<num> minutes;

  Map<String, Object?> encode() => {'minutes': minutes.toTfJson()};
}

/// Typed helper for the `rule.existing_object_replication` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleExistingObjectReplication {
  const S3BucketReplicationConfigurationRuleExistingObjectReplication({
    required this.status,
  });

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `rule.filter` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleFilter {
  const S3BucketReplicationConfigurationRuleFilter({
    this.prefix,
    this.and,
    this.tag,
  });

  final TfArg<String>? prefix;

  final S3BucketReplicationConfigurationRuleFilterAnd? and;

  final S3BucketReplicationConfigurationRuleFilterTag? tag;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (and != null) 'and': and!.encode(),
    if (tag != null) 'tag': tag!.encode(),
  };
}

/// Typed helper for the `rule.filter.and` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleFilterAnd {
  const S3BucketReplicationConfigurationRuleFilterAnd({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Typed helper for the `rule.filter.tag` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleFilterTag {
  const S3BucketReplicationConfigurationRuleFilterTag({
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
final class S3BucketReplicationConfigurationRuleSourceSelectionCriteria {
  const S3BucketReplicationConfigurationRuleSourceSelectionCriteria({
    this.replicaModifications,
    this.sseKmsEncryptedObjects,
  });

  final S3BucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModifications?
  replicaModifications;

  final S3BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects?
  sseKmsEncryptedObjects;

  Map<String, Object?> encode() => {
    if (replicaModifications != null)
      'replica_modifications': replicaModifications!.encode(),
    if (sseKmsEncryptedObjects != null)
      'sse_kms_encrypted_objects': sseKmsEncryptedObjects!.encode(),
  };
}

/// Typed helper for the `rule.source_selection_criteria.replica_modifications` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModifications {
  const S3BucketReplicationConfigurationRuleSourceSelectionCriteriaReplicaModifications({
    required this.status,
  });

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Typed helper for the `rule.source_selection_criteria.sse_kms_encrypted_objects` block of
/// `aws_s3_bucket_replication_configuration` (derived from provider schema).
@immutable
final class S3BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects {
  const S3BucketReplicationConfigurationRuleSourceSelectionCriteriaSseKmsEncryptedObjects({
    required this.status,
  });

  final TfArg<String> status;

  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// Factory wrapper for `aws_s3_bucket_replication_configuration`.
final class AwsS3BucketReplicationConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_replication_configuration';

  AwsS3BucketReplicationConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? region,
    required TfArg<String> role,
    TfArg<String>? token,
    required List<S3BucketReplicationConfigurationRule> rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (region != null) 'region': region,
           'role': role,
           if (token != null) 'token': token,
           'rule': TfArg.literal([for (final e in rule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketReplicationConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
