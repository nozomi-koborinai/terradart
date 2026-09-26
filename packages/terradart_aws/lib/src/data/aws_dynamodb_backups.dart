// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dynamodb_backups`.
const Set<String> _awsDynamodbBackupsSensitive = <String>{};

/// Factory wrapper for `aws_dynamodb_backups`.
final class DataAwsDynamodbBackups extends Data {
  static const String tfType = 'aws_dynamodb_backups';

  DataAwsDynamodbBackups({
    required super.localName,
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
           if (backupType != null) 'backup_type': backupType,
           if (region != null) 'region': region,
           if (tableName != null) 'table_name': tableName,
           if (timeRangeLowerBound != null)
             'time_range_lower_bound': timeRangeLowerBound,
           if (timeRangeUpperBound != null)
             'time_range_upper_bound': timeRangeUpperBound,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDynamodbBackupsSensitive;

  /// Reference to `backup_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get backupSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'backup_summaries');
}
