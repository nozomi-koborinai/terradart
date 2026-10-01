// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_tape_pool`.
const Set<String> _awsStoragegatewayTapePoolSensitive = <String>{};

/// Storagegateway Tape Pool Retention Lock enum for `retention_lock_type`.
extension type const StoragegatewayTapePoolRetentionLockType._(TfArg<String> _)
    implements TfArg<String> {
  StoragegatewayTapePoolRetentionLockType.variable(String name)
    : this._(TfArg.variable(name));
  StoragegatewayTapePoolRetentionLockType.expression(String template)
    : this._(TfArg.expression(template));
  const StoragegatewayTapePoolRetentionLockType.arg(TfArg<String> arg)
    : this._(arg);

  static const compliance = StoragegatewayTapePoolRetentionLockType._(
    TfArgLiteral('COMPLIANCE'),
  );
  static const governance = StoragegatewayTapePoolRetentionLockType._(
    TfArgLiteral('GOVERNANCE'),
  );
  static const none = StoragegatewayTapePoolRetentionLockType._(
    TfArgLiteral('NONE'),
  );

  static const List<StoragegatewayTapePoolRetentionLockType> values = [
    compliance,
    governance,
    none,
  ];
}

/// Storagegateway Tape Pool Storage enum for `storage_class`.
extension type const StoragegatewayTapePoolStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  StoragegatewayTapePoolStorageClass.variable(String name)
    : this._(TfArg.variable(name));
  StoragegatewayTapePoolStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const StoragegatewayTapePoolStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const deepArchive = StoragegatewayTapePoolStorageClass._(
    TfArgLiteral('DEEP_ARCHIVE'),
  );
  static const glacier = StoragegatewayTapePoolStorageClass._(
    TfArgLiteral('GLACIER'),
  );

  static const List<StoragegatewayTapePoolStorageClass> values = [
    deepArchive,
    glacier,
  ];
}

/// Factory wrapper for `aws_storagegateway_tape_pool`.
final class AwsStoragegatewayTapePool extends Resource {
  static const String tfType = 'aws_storagegateway_tape_pool';

  AwsStoragegatewayTapePool(
    super.localName, {
    required TfArg<String> poolName,
    TfArg<String>? region,
    TfArg<num>? retentionLockTimeInDays,
    StoragegatewayTapePoolRetentionLockType? retentionLockType,
    required StoragegatewayTapePoolStorageClass storageClass,
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
