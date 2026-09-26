// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_timestreamwrite_database`.
const Set<String> _awsTimestreamwriteDatabaseSensitive = <String>{};

/// Factory wrapper for `aws_timestreamwrite_database`.
final class AwsTimestreamwriteDatabase extends Resource {
  static const String tfType = 'aws_timestreamwrite_database';

  AwsTimestreamwriteDatabase({
    required super.localName,
    required TfArg<String> databaseName,
    TfArg<String>? kmsKeyId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database_name': databaseName,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTimestreamwriteDatabaseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `table_count` attribute.
  TfRef<num> get tableCount => TfRef.attribute<num>(this, 'table_count');
}
