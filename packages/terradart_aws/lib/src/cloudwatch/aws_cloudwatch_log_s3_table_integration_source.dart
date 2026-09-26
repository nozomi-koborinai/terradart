// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_s3_table_integration_source`.
const Set<String> _awsCloudwatchLogS3TableIntegrationSourceSensitive =
    <String>{};

/// Typed helper for the `data_source` block of
/// `aws_cloudwatch_log_s3_table_integration_source` (derived from provider schema).
@immutable
final class CloudwatchLogS3TableIntegrationSourceDataSource {
  const CloudwatchLogS3TableIntegrationSourceDataSource({
    required this.name,
    required this.type,
  });

  final TfArg<String> name;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_log_s3_table_integration_source`.
final class AwsCloudwatchLogS3TableIntegrationSource extends Resource {
  static const String tfType = 'aws_cloudwatch_log_s3_table_integration_source';

  AwsCloudwatchLogS3TableIntegrationSource({
    required super.localName,
    required TfArg<String> integrationArn,
    TfArg<String>? region,
    List<CloudwatchLogS3TableIntegrationSourceDataSource>? dataSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'integration_arn': integrationArn,
           if (region != null) 'region': region,
           if (dataSource != null)
             'data_source': TfArg.literal([
               for (final e in dataSource) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudwatchLogS3TableIntegrationSourceSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
