// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../timestreamwrite/aws_timestreamwrite_database.dart';

/// Sensitive field paths for `aws_timestreamwrite_database`.
const Set<String> _awsTimestreamwriteDatabaseSensitive = <String>{};

/// Factory wrapper for `aws_timestreamwrite_database`.
final class DataAwsTimestreamwriteDatabase extends Data {
  static const String tfType = 'aws_timestreamwrite_database';

  DataAwsTimestreamwriteDatabase({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name, 'region': ?region});

  @override
  Set<String> get sensitiveFields => _awsTimestreamwriteDatabaseSensitive;

  /// A reference to the `aws_timestreamwrite_database` this data source reads, for
  /// arguments typed `RefTo<AwsTimestreamwriteDatabase>`.
  RefTo<AwsTimestreamwriteDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `table_count` attribute.
  TfRef<num> get tableCount => TfRef.attribute<num>(this, 'table_count');
}
