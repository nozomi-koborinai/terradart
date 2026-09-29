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

  AwsStoragegatewayTapePool({
    required super.localName,
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
}
