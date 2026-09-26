// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_memorydb_snapshot`.
const Set<String> _awsMemorydbSnapshotSensitive = <String>{};

/// Factory wrapper for `aws_memorydb_snapshot`.
final class AwsMemorydbSnapshot extends Resource {
  static const String tfType = 'aws_memorydb_snapshot';

  AwsMemorydbSnapshot({
    required super.localName,
    required TfArg<String> clusterName,
    TfArg<String>? kmsKeyArn,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_name': clusterName,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMemorydbSnapshotSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `cluster_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get clusterConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'cluster_configuration',
      );

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
