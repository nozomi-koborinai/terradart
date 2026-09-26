// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_orderable_db_instance`.
const Set<String> _awsRdsOrderableDbInstanceSensitive = <String>{};

/// Factory wrapper for `aws_rds_orderable_db_instance`.
final class DataAwsRdsOrderableDbInstance extends Data {
  static const String tfType = 'aws_rds_orderable_db_instance';

  DataAwsRdsOrderableDbInstance({
    required super.localName,
    TfArg<String>? availabilityZoneGroup,
    required TfArg<String> engine,
    TfArg<bool>? engineLatestVersion,
    TfArg<String>? engineVersion,
    TfArg<String>? instanceClass,
    TfArg<String>? licenseModel,
    TfArg<List<String>>? preferredEngineVersions,
    TfArg<List<String>>? preferredInstanceClasses,
    TfArg<bool>? readReplicaCapable,
    TfArg<String>? region,
    TfArg<String>? storageType,
    TfArg<List<String>>? supportedEngineModes,
    TfArg<List<String>>? supportedNetworkTypes,
    TfArg<bool>? supportsClusters,
    TfArg<bool>? supportsEnhancedMonitoring,
    TfArg<bool>? supportsGlobalDatabases,
    TfArg<bool>? supportsIamDatabaseAuthentication,
    TfArg<bool>? supportsIops,
    TfArg<bool>? supportsKerberosAuthentication,
    TfArg<bool>? supportsMultiAz,
    TfArg<bool>? supportsPerformanceInsights,
    TfArg<bool>? supportsStorageAutoscaling,
    TfArg<bool>? supportsStorageEncryption,
    TfArg<bool>? vpc,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (availabilityZoneGroup != null)
             'availability_zone_group': availabilityZoneGroup,
           'engine': engine,
           if (engineLatestVersion != null)
             'engine_latest_version': engineLatestVersion,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (instanceClass != null) 'instance_class': instanceClass,
           if (licenseModel != null) 'license_model': licenseModel,
           if (preferredEngineVersions != null)
             'preferred_engine_versions': preferredEngineVersions,
           if (preferredInstanceClasses != null)
             'preferred_instance_classes': preferredInstanceClasses,
           if (readReplicaCapable != null)
             'read_replica_capable': readReplicaCapable,
           if (region != null) 'region': region,
           if (storageType != null) 'storage_type': storageType,
           if (supportedEngineModes != null)
             'supported_engine_modes': supportedEngineModes,
           if (supportedNetworkTypes != null)
             'supported_network_types': supportedNetworkTypes,
           if (supportsClusters != null) 'supports_clusters': supportsClusters,
           if (supportsEnhancedMonitoring != null)
             'supports_enhanced_monitoring': supportsEnhancedMonitoring,
           if (supportsGlobalDatabases != null)
             'supports_global_databases': supportsGlobalDatabases,
           if (supportsIamDatabaseAuthentication != null)
             'supports_iam_database_authentication':
                 supportsIamDatabaseAuthentication,
           if (supportsIops != null) 'supports_iops': supportsIops,
           if (supportsKerberosAuthentication != null)
             'supports_kerberos_authentication': supportsKerberosAuthentication,
           if (supportsMultiAz != null) 'supports_multi_az': supportsMultiAz,
           if (supportsPerformanceInsights != null)
             'supports_performance_insights': supportsPerformanceInsights,
           if (supportsStorageAutoscaling != null)
             'supports_storage_autoscaling': supportsStorageAutoscaling,
           if (supportsStorageEncryption != null)
             'supports_storage_encryption': supportsStorageEncryption,
           if (vpc != null) 'vpc': vpc,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsOrderableDbInstanceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `availability_zones` attribute.
  TfRef<List<String>> get availabilityZones =>
      TfRef.attribute<List<String>>(this, 'availability_zones');

  /// Reference to `max_iops_per_db_instance` attribute.
  TfRef<num> get maxIopsPerDbInstance =>
      TfRef.attribute<num>(this, 'max_iops_per_db_instance');

  /// Reference to `max_iops_per_gib` attribute.
  TfRef<num> get maxIopsPerGib =>
      TfRef.attribute<num>(this, 'max_iops_per_gib');

  /// Reference to `max_storage_size` attribute.
  TfRef<num> get maxStorageSize =>
      TfRef.attribute<num>(this, 'max_storage_size');

  /// Reference to `min_iops_per_db_instance` attribute.
  TfRef<num> get minIopsPerDbInstance =>
      TfRef.attribute<num>(this, 'min_iops_per_db_instance');

  /// Reference to `min_iops_per_gib` attribute.
  TfRef<num> get minIopsPerGib =>
      TfRef.attribute<num>(this, 'min_iops_per_gib');

  /// Reference to `min_storage_size` attribute.
  TfRef<num> get minStorageSize =>
      TfRef.attribute<num>(this, 'min_storage_size');

  /// Reference to `multi_az_capable` attribute.
  TfRef<bool> get multiAzCapable =>
      TfRef.attribute<bool>(this, 'multi_az_capable');

  /// Reference to `outpost_capable` attribute.
  TfRef<bool> get outpostCapable =>
      TfRef.attribute<bool>(this, 'outpost_capable');
}
