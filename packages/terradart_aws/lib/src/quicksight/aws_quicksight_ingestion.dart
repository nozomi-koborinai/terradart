// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_ingestion`.
const Set<String> _awsQuicksightIngestionSensitive = <String>{};

/// Quicksight Ingestion enum for `ingestion_type`.
enum QuicksightIngestionType implements TerraformEnum {
  incrementalRefresh('INCREMENTAL_REFRESH'),
  fullRefresh('FULL_REFRESH');

  const QuicksightIngestionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_quicksight_ingestion`.
final class AwsQuicksightIngestion extends Resource {
  static const String tfType = 'aws_quicksight_ingestion';

  AwsQuicksightIngestion({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> dataSetId,
    required TfArg<String> ingestionId,
    required TfArg<QuicksightIngestionType> ingestionType,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'data_set_id': dataSetId,
           'ingestion_id': ingestionId,
           'ingestion_type': ingestionType,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightIngestionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightIngestion>`.
  RefTo<AwsQuicksightIngestion> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ingestion_status` attribute.
  TfRef<String> get ingestionStatus =>
      TfRef.attribute<String>(this, 'ingestion_status');

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `data_set_id` attribute.
  TfRef<String> get dataSetId => TfRef.attribute<String>(this, 'data_set_id');

  /// Reference to `ingestion_id` attribute.
  TfRef<String> get ingestionId =>
      TfRef.attribute<String>(this, 'ingestion_id');

  /// Reference to `ingestion_type` attribute.
  TfRef<String> get ingestionType =>
      TfRef.attribute<String>(this, 'ingestion_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
