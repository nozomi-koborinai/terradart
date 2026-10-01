// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_timestreamwrite_database`.
const Set<String> _awsTimestreamwriteDatabaseSensitive = <String>{};

/// Factory wrapper for `aws_timestreamwrite_database`.
final class AwsTimestreamwriteDatabase extends Resource {
  static const String tfType = 'aws_timestreamwrite_database';

  AwsTimestreamwriteDatabase(
    super.localName, {
    required TfArg<String> databaseName,
    RefTo<AwsKmsKey>? kmsKeyId,
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
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTimestreamwriteDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTimestreamwriteDatabase>`.
  RefTo<AwsTimestreamwriteDatabase> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `table_count` attribute.
  TfRef<num> get tableCount => TfRef.attribute<num>(this, 'table_count');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
