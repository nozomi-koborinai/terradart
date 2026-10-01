// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_tape_pool`.
const Set<String> _awsStoragegatewayTapePoolSensitive = <String>{};

/// Storagegateway Tape Pool Retention Lock enum for `retention_lock_type`.
enum StoragegatewayTapePoolRetentionLockType implements TerraformEnum {
  compliance('COMPLIANCE'),
  governance('GOVERNANCE'),
  none('NONE');

  const StoragegatewayTapePoolRetentionLockType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Tape Pool Storage enum for `storage_class`.
enum StoragegatewayTapePoolStorageClass implements TerraformEnum {
  deepArchive('DEEP_ARCHIVE'),
  glacier('GLACIER');

  const StoragegatewayTapePoolStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_storagegateway_tape_pool`.
final class AwsStoragegatewayTapePool extends Resource {
  static const String tfType = 'aws_storagegateway_tape_pool';

  AwsStoragegatewayTapePool(
    super.localName, {
    required TfArg<String> poolName,
    TfArg<String>? region,
    TfArg<num>? retentionLockTimeInDays,
    TfArg<StoragegatewayTapePoolRetentionLockType>? retentionLockType,
    required TfArg<StoragegatewayTapePoolStorageClass> storageClass,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pool_name': poolName,
           'region': ?region,
           'retention_lock_time_in_days': ?retentionLockTimeInDays,
           'retention_lock_type': ?retentionLockType,
           'storage_class': storageClass,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayTapePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsStoragegatewayTapePool>`.
  RefTo<AwsStoragegatewayTapePool> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolName => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `retention_lock_time_in_days` attribute.
  TfRef<num> get retentionLockTimeInDays =>
      TfRef.attribute<num>(this, 'retention_lock_time_in_days');

  /// Reference to `retention_lock_type` attribute.
  TfRef<String> get retentionLockType =>
      TfRef.attribute<String>(this, 'retention_lock_type');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
