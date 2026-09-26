// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cur_report_definition`.
const Set<String> _awsCurReportDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_cur_report_definition`.
final class DataAwsCurReportDefinition extends Data {
  static const String tfType = 'aws_cur_report_definition';

  DataAwsCurReportDefinition({
    required super.localName,
    required TfArg<String> reportName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'report_name': reportName, if (tags != null) 'tags': tags},
       );

  @override
  Set<String> get sensitiveFields => _awsCurReportDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_artifacts` attribute.
  TfRef<List<String>> get additionalArtifacts =>
      TfRef.attribute<List<String>>(this, 'additional_artifacts');

  /// Reference to `additional_schema_elements` attribute.
  TfRef<List<String>> get additionalSchemaElements =>
      TfRef.attribute<List<String>>(this, 'additional_schema_elements');

  /// Reference to `compression` attribute.
  TfRef<String> get compression => TfRef.attribute<String>(this, 'compression');

  /// Reference to `format` attribute.
  TfRef<String> get format => TfRef.attribute<String>(this, 'format');

  /// Reference to `refresh_closed_reports` attribute.
  TfRef<bool> get refreshClosedReports =>
      TfRef.attribute<bool>(this, 'refresh_closed_reports');

  /// Reference to `report_versioning` attribute.
  TfRef<String> get reportVersioning =>
      TfRef.attribute<String>(this, 'report_versioning');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3Bucket => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `s3_prefix` attribute.
  TfRef<String> get s3Prefix => TfRef.attribute<String>(this, 's3_prefix');

  /// Reference to `s3_region` attribute.
  TfRef<String> get s3Region => TfRef.attribute<String>(this, 's3_region');

  /// Reference to `time_unit` attribute.
  TfRef<String> get timeUnit => TfRef.attribute<String>(this, 'time_unit');
}
