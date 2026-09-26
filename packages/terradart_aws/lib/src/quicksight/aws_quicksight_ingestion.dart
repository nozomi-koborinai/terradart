// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_ingestion`.
const Set<String> _awsQuicksightIngestionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_ingestion`.
final class AwsQuicksightIngestion extends Resource {
  static const String tfType = 'aws_quicksight_ingestion';

  AwsQuicksightIngestion({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    required TfArg<String> ingestionId,
    required TfArg<String> ingestionType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'data_set_id': dataSetId,
           'ingestion_id': ingestionId,
           'ingestion_type': ingestionType,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightIngestionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ingestion_status` attribute.
  TfRef<String> get ingestionStatus =>
      TfRef.attribute<String>(this, 'ingestion_status');
}
