// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_neptune_orderable_db_instance`.
const Set<String> _awsNeptuneOrderableDbInstanceSensitive = <String>{};

/// Factory wrapper for `aws_neptune_orderable_db_instance`.
final class DataAwsNeptuneOrderableDbInstance extends Data {
  static const String tfType = 'aws_neptune_orderable_db_instance';

  DataAwsNeptuneOrderableDbInstance({
    required super.localName,
    TfArg<String>? engine,
    TfArg<String>? engineVersion,
    TfArg<String>? instanceClass,
    TfArg<String>? licenseModel,
    TfArg<List<String>>? preferredInstanceClasses,
    TfArg<String>? region,
    TfArg<bool>? vpc,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engine != null) 'engine': engine,
           if (engineVersion != null) 'engine_version': engineVersion,
           if (instanceClass != null) 'instance_class': instanceClass,
           if (licenseModel != null) 'license_model': licenseModel,
           if (preferredInstanceClasses != null)
             'preferred_instance_classes': preferredInstanceClasses,
           if (region != null) 'region': region,
           if (vpc != null) 'vpc': vpc,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsNeptuneOrderableDbInstanceSensitive;

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

  /// Reference to `read_replica_capable` attribute.
  TfRef<bool> get readReplicaCapable =>
      TfRef.attribute<bool>(this, 'read_replica_capable');

  /// Reference to `storage_type` attribute.
  TfRef<String> get storageType =>
      TfRef.attribute<String>(this, 'storage_type');

  /// Reference to `supports_enhanced_monitoring` attribute.
  TfRef<bool> get supportsEnhancedMonitoring =>
      TfRef.attribute<bool>(this, 'supports_enhanced_monitoring');

  /// Reference to `supports_iam_database_authentication` attribute.
  TfRef<bool> get supportsIamDatabaseAuthentication =>
      TfRef.attribute<bool>(this, 'supports_iam_database_authentication');

  /// Reference to `supports_iops` attribute.
  TfRef<bool> get supportsIops => TfRef.attribute<bool>(this, 'supports_iops');

  /// Reference to `supports_performance_insights` attribute.
  TfRef<bool> get supportsPerformanceInsights =>
      TfRef.attribute<bool>(this, 'supports_performance_insights');

  /// Reference to `supports_storage_encryption` attribute.
  TfRef<bool> get supportsStorageEncryption =>
      TfRef.attribute<bool>(this, 'supports_storage_encryption');
}
