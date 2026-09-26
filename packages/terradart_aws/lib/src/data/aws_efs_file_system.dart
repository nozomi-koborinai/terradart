// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_efs_file_system`.
const Set<String> _awsEfsFileSystemSensitive = <String>{};

/// Factory wrapper for `aws_efs_file_system`.
final class DataAwsEfsFileSystem extends Data {
  static const String tfType = 'aws_efs_file_system';

  DataAwsEfsFileSystem({
    required super.localName,
    TfArg<String>? creationToken,
    TfArg<String>? fileSystemId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (creationToken != null) 'creation_token': creationToken,
           if (fileSystemId != null) 'file_system_id': fileSystemId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsFileSystemSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `availability_zone_name` attribute.
  TfRef<String> get availabilityZoneName =>
      TfRef.attribute<String>(this, 'availability_zone_name');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `lifecycle_policy` attribute.
  TfRef<List<Map<String, Object?>>> get lifecyclePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'lifecycle_policy');

  /// Reference to `performance_mode` attribute.
  TfRef<String> get performanceMode =>
      TfRef.attribute<String>(this, 'performance_mode');

  /// Reference to `protection` attribute.
  TfRef<List<Map<String, Object?>>> get protection =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'protection');

  /// Reference to `provisioned_throughput_in_mibps` attribute.
  TfRef<num> get provisionedThroughputInMibps =>
      TfRef.attribute<num>(this, 'provisioned_throughput_in_mibps');

  /// Reference to `size_in_bytes` attribute.
  TfRef<num> get sizeInBytes => TfRef.attribute<num>(this, 'size_in_bytes');

  /// Reference to `throughput_mode` attribute.
  TfRef<String> get throughputMode =>
      TfRef.attribute<String>(this, 'throughput_mode');
}
