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
           'availability_zone_group': ?availabilityZoneGroup,
           'engine': engine,
           'engine_latest_version': ?engineLatestVersion,
           'engine_version': ?engineVersion,
           'instance_class': ?instanceClass,
           'license_model': ?licenseModel,
           'preferred_engine_versions': ?preferredEngineVersions,
           'preferred_instance_classes': ?preferredInstanceClasses,
           'read_replica_capable': ?readReplicaCapable,
           'region': ?region,
           'storage_type': ?storageType,
           'supported_engine_modes': ?supportedEngineModes,
           'supported_network_types': ?supportedNetworkTypes,
           'supports_clusters': ?supportsClusters,
           'supports_enhanced_monitoring': ?supportsEnhancedMonitoring,
           'supports_global_databases': ?supportsGlobalDatabases,
           'supports_iam_database_authentication':
               ?supportsIamDatabaseAuthentication,
           'supports_iops': ?supportsIops,
           'supports_kerberos_authentication': ?supportsKerberosAuthentication,
           'supports_multi_az': ?supportsMultiAz,
           'supports_performance_insights': ?supportsPerformanceInsights,
           'supports_storage_autoscaling': ?supportsStorageAutoscaling,
           'supports_storage_encryption': ?supportsStorageEncryption,
           'vpc': ?vpc,
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

  /// Reference to `availability_zone_group` attribute.
  TfRef<String> get availabilityZoneGroupRef =>
      TfRef.attribute<String>(this, 'availability_zone_group');

  /// Reference to `engine` attribute.
  TfRef<String> get engineRef => TfRef.attribute<String>(this, 'engine');

  /// Reference to `engine_latest_version` attribute.
  TfRef<bool> get engineLatestVersionRef =>
      TfRef.attribute<bool>(this, 'engine_latest_version');

  /// Reference to `engine_version` attribute.
  TfRef<String> get engineVersionRef =>
      TfRef.attribute<String>(this, 'engine_version');

  /// Reference to `instance_class` attribute.
  TfRef<String> get instanceClassRef =>
      TfRef.attribute<String>(this, 'instance_class');

  /// Reference to `license_model` attribute.
  TfRef<String> get licenseModelRef =>
      TfRef.attribute<String>(this, 'license_model');

  /// Reference to `preferred_engine_versions` attribute.
  TfRef<List<String>> get preferredEngineVersionsRef =>
      TfRef.attribute<List<String>>(this, 'preferred_engine_versions');

  /// Reference to `preferred_instance_classes` attribute.
  TfRef<List<String>> get preferredInstanceClassesRef =>
      TfRef.attribute<List<String>>(this, 'preferred_instance_classes');

  /// Reference to `read_replica_capable` attribute.
  TfRef<bool> get readReplicaCapableRef =>
      TfRef.attribute<bool>(this, 'read_replica_capable');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageTypeRef =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `supported_engine_modes` attribute.
  TfRef<List<String>> get supportedEngineModesRef =>
      TfRef.attribute<List<String>>(this, 'supported_engine_modes');

  /// Reference to `supported_network_types` attribute.
  TfRef<List<String>> get supportedNetworkTypesRef =>
      TfRef.attribute<List<String>>(this, 'supported_network_types');

  /// Reference to `supports_clusters` attribute.
  TfRef<bool> get supportsClustersRef =>
      TfRef.attribute<bool>(this, 'supports_clusters');

  /// Reference to `supports_enhanced_monitoring` attribute.
  TfRef<bool> get supportsEnhancedMonitoringRef =>
      TfRef.attribute<bool>(this, 'supports_enhanced_monitoring');

  /// Reference to `supports_global_databases` attribute.
  TfRef<bool> get supportsGlobalDatabasesRef =>
      TfRef.attribute<bool>(this, 'supports_global_databases');

  /// Reference to `supports_iam_database_authentication` attribute.
  TfRef<bool> get supportsIamDatabaseAuthenticationRef =>
      TfRef.attribute<bool>(this, 'supports_iam_database_authentication');

  /// Reference to `supports_iops` attribute.
  TfRef<bool> get supportsIopsRef =>
      TfRef.attribute<bool>(this, 'supports_iops');

  /// Reference to `supports_kerberos_authentication` attribute.
  TfRef<bool> get supportsKerberosAuthenticationRef =>
      TfRef.attribute<bool>(this, 'supports_kerberos_authentication');

  /// Reference to `supports_multi_az` attribute.
  TfRef<bool> get supportsMultiAzRef =>
      TfRef.attribute<bool>(this, 'supports_multi_az');

  /// Reference to `supports_performance_insights` attribute.
  TfRef<bool> get supportsPerformanceInsightsRef =>
      TfRef.attribute<bool>(this, 'supports_performance_insights');

  /// Reference to `supports_storage_autoscaling` attribute.
  TfRef<bool> get supportsStorageAutoscalingRef =>
      TfRef.attribute<bool>(this, 'supports_storage_autoscaling');

  /// Reference to `supports_storage_encryption` attribute.
  TfRef<bool> get supportsStorageEncryptionRef =>
      TfRef.attribute<bool>(this, 'supports_storage_encryption');

  /// Reference to `vpc` attribute.
  TfRef<bool> get vpcRef => TfRef.attribute<bool>(this, 'vpc');
}
