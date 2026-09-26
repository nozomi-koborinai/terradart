// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securitylake_data_lake`.
const Set<String> _awsSecuritylakeDataLakeSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_securitylake_data_lake` (derived from provider schema).
@immutable
final class SecuritylakeDataLakeConfiguration {
  const SecuritylakeDataLakeConfiguration({
    this.encryptionConfiguration,
    required this.region,
    this.lifecycleConfiguration,
    this.replicationConfiguration,
  });

  final TfArg<List<Object?>>? encryptionConfiguration;

  final TfArg<String> region;

  final List<SecuritylakeDataLakeConfigurationLifecycleConfiguration>?
  lifecycleConfiguration;

  final List<SecuritylakeDataLakeConfigurationReplicationConfiguration>?
  replicationConfiguration;

  Map<String, Object?> encode() => {
    if (encryptionConfiguration != null)
      'encryption_configuration': encryptionConfiguration!.toTfJson(),
    'region': region.toTfJson(),
    if (lifecycleConfiguration != null)
      'lifecycle_configuration': [
        for (final e in lifecycleConfiguration!) e.encode(),
      ],
    if (replicationConfiguration != null)
      'replication_configuration': [
        for (final e in replicationConfiguration!) e.encode(),
      ],
  };
}

/// Typed helper for the `configuration.lifecycle_configuration` block of
/// `aws_securitylake_data_lake` (derived from provider schema).
@immutable
final class SecuritylakeDataLakeConfigurationLifecycleConfiguration {
  const SecuritylakeDataLakeConfigurationLifecycleConfiguration({
    this.expiration,
    this.transition,
  });

  final List<SecuritylakeDataLakeConfigurationLifecycleConfigurationExpiration>?
  expiration;

  final List<SecuritylakeDataLakeConfigurationLifecycleConfigurationTransition>?
  transition;

  Map<String, Object?> encode() => {
    if (expiration != null)
      'expiration': [for (final e in expiration!) e.encode()],
    if (transition != null)
      'transition': [for (final e in transition!) e.encode()],
  };
}

/// Typed helper for the `configuration.lifecycle_configuration.expiration` block of
/// `aws_securitylake_data_lake` (derived from provider schema).
@immutable
final class SecuritylakeDataLakeConfigurationLifecycleConfigurationExpiration {
  const SecuritylakeDataLakeConfigurationLifecycleConfigurationExpiration({
    this.days,
  });

  final TfArg<num>? days;

  Map<String, Object?> encode() => {if (days != null) 'days': days!.toTfJson()};
}

/// Typed helper for the `configuration.lifecycle_configuration.transition` block of
/// `aws_securitylake_data_lake` (derived from provider schema).
@immutable
final class SecuritylakeDataLakeConfigurationLifecycleConfigurationTransition {
  const SecuritylakeDataLakeConfigurationLifecycleConfigurationTransition({
    this.days,
    this.storageClass,
  });

  final TfArg<num>? days;

  final TfArg<String>? storageClass;

  Map<String, Object?> encode() => {
    if (days != null) 'days': days!.toTfJson(),
    if (storageClass != null) 'storage_class': storageClass!.toTfJson(),
  };
}

/// Typed helper for the `configuration.replication_configuration` block of
/// `aws_securitylake_data_lake` (derived from provider schema).
@immutable
final class SecuritylakeDataLakeConfigurationReplicationConfiguration {
  const SecuritylakeDataLakeConfigurationReplicationConfiguration({
    this.regions,
    this.roleArn,
  });

  final TfArg<List<Object?>>? regions;

  final TfArg<String>? roleArn;

  Map<String, Object?> encode() => {
    if (regions != null) 'regions': regions!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
  };
}

/// Factory wrapper for `aws_securitylake_data_lake`.
final class AwsSecuritylakeDataLake extends Resource {
  static const String tfType = 'aws_securitylake_data_lake';

  AwsSecuritylakeDataLake({
    required super.localName,
    required TfArg<String> metaStoreManagerRoleArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<SecuritylakeDataLakeConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'meta_store_manager_role_arn': metaStoreManagerRoleArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecuritylakeDataLakeSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `s3_bucket_arn` attribute.
  TfRef<String> get s3BucketArn =>
      TfRef.attribute<String>(this, 's3_bucket_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
