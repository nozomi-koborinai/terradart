// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_backups`.
const Set<String> _awsDynamodbBackupsSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_backups`.
final class DataAwsDynamodbBackups extends Data {
  static const String tfType = 'aws_dynamodb_backups';

  DataAwsDynamodbBackups(
    super.localName, {
    TfArg<String>? backupType,
    TfArg<String>? region,
    TfArg<String>? tableName,
    TfArg<String>? timeRangeLowerBound,
    TfArg<String>? timeRangeUpperBound,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_type': ?backupType,
           'region': ?region,
           'table_name': ?tableName,
           'time_range_lower_bound': ?timeRangeLowerBound,
           'time_range_upper_bound': ?timeRangeUpperBound,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbBackupsSensitive;

  /// Reference to `backup_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get backupSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_summaries');

  /// Reference to `backup_type` attribute.
  TfRef<String> get backupType => TfRef.attribute<String>(this, 'backup_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `table_name` attribute.
  TfRef<String> get tableName => TfRef.attribute<String>(this, 'table_name');

  /// Reference to `time_range_lower_bound` attribute.
  TfRef<String> get timeRangeLowerBound =>
      TfRef.attribute<String>(this, 'time_range_lower_bound');

  /// Reference to `time_range_upper_bound` attribute.
  TfRef<String> get timeRangeUpperBound =>
      TfRef.attribute<String>(this, 'time_range_upper_bound');
}
