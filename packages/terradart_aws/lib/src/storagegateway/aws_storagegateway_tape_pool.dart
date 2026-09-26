// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_tape_pool`.
const Set<String> _awsStoragegatewayTapePoolSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_tape_pool`.
final class AwsStoragegatewayTapePool extends Resource {
  static const String tfType = 'aws_storagegateway_tape_pool';

  AwsStoragegatewayTapePool({
    required super.localName,
    required TfArg<String> poolName,
    TfArg<String>? region,
    TfArg<num>? retentionLockTimeInDays,
    TfArg<String>? retentionLockType,
    required TfArg<String> storageClass,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'pool_name': poolName,
           if (region != null) 'region': region,
           if (retentionLockTimeInDays != null)
             'retention_lock_time_in_days': retentionLockTimeInDays,
           if (retentionLockType != null)
             'retention_lock_type': retentionLockType,
           'storage_class': storageClass,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayTapePoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
