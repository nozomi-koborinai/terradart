// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cur_report_definition`.
const Set<String> _awsCurReportDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_cur_report_definition`.
final class AwsCurReportDefinition extends Resource {
  static const String tfType = 'aws_cur_report_definition';

  AwsCurReportDefinition({
    required super.localName,
    TfArg<List<String>>? additionalArtifacts,
    required TfArg<List<String>> additionalSchemaElements,
    required TfArg<String> compression,
    required TfArg<String> format,
    TfArg<bool>? refreshClosedReports,
    required TfArg<String> reportName,
    TfArg<String>? reportVersioning,
    required TfArg<String> s3Bucket,
    required TfArg<String> s3Prefix,
    required TfArg<String> s3Region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> timeUnit,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalArtifacts != null)
             'additional_artifacts': additionalArtifacts,
           'additional_schema_elements': additionalSchemaElements,
           'compression': compression,
           'format': format,
           if (refreshClosedReports != null)
             'refresh_closed_reports': refreshClosedReports,
           'report_name': reportName,
           if (reportVersioning != null) 'report_versioning': reportVersioning,
           's3_bucket': s3Bucket,
           's3_prefix': s3Prefix,
           's3_region': s3Region,
           if (tags != null) 'tags': tags,
           'time_unit': timeUnit,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCurReportDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
