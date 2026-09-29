// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cur_report_definition`.
const Set<String> _awsCurReportDefinitionSensitive = <String>{};

/// Cur Report Definition Additional enum for `additional_artifacts`.
enum CurReportDefinitionAdditionalArtifacts implements TerraformEnum {
  redshift('REDSHIFT'),
  quicksight('QUICKSIGHT'),
  athena('ATHENA');

  const CurReportDefinitionAdditionalArtifacts(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cur Report Definition Additional Schema enum for `additional_schema_elements`.
enum CurReportDefinitionAdditionalSchemaElements implements TerraformEnum {
  resources('RESOURCES'),
  splitCostAllocationData('SPLIT_COST_ALLOCATION_DATA'),
  manualDiscountCompatibility('MANUAL_DISCOUNT_COMPATIBILITY');

  const CurReportDefinitionAdditionalSchemaElements(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cur Report Definition enum for `compression`.
enum CurReportDefinitionCompression implements TerraformEnum {
  zip('ZIP'),
  gzip('GZIP'),
  parquet('Parquet');

  const CurReportDefinitionCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cur Report Definition enum for `format`.
enum CurReportDefinitionFormat implements TerraformEnum {
  textorcsv('textORcsv'),
  parquet('Parquet');

  const CurReportDefinitionFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cur Report Definition Report enum for `report_versioning`.
enum CurReportDefinitionReportVersioning implements TerraformEnum {
  createNewReport('CREATE_NEW_REPORT'),
  overwriteReport('OVERWRITE_REPORT');

  const CurReportDefinitionReportVersioning(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cur Report Definition Time enum for `time_unit`.
enum CurReportDefinitionTimeUnit implements TerraformEnum {
  hourly('HOURLY'),
  daily('DAILY'),
  monthly('MONTHLY');

  const CurReportDefinitionTimeUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cur_report_definition`.
final class AwsCurReportDefinition extends Resource {
  static const String tfType = 'aws_cur_report_definition';

  AwsCurReportDefinition({
    required super.localName,
    List<TfArg<CurReportDefinitionAdditionalArtifacts>>? additionalArtifacts,
    required List<TfArg<CurReportDefinitionAdditionalSchemaElements>>
    additionalSchemaElements,
    required TfArg<CurReportDefinitionCompression> compression,
    required TfArg<CurReportDefinitionFormat> format,
    TfArg<bool>? refreshClosedReports,
    required TfArg<String> reportName,
    TfArg<CurReportDefinitionReportVersioning>? reportVersioning,
    required RefTo<AwsS3Bucket> s3Bucket,
    required TfArg<String> s3Prefix,
    required TfArg<String> s3Region,
    TfArg<Map<String, String>>? tags,
    required TfArg<CurReportDefinitionTimeUnit> timeUnit,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (additionalArtifacts != null)
             'additional_artifacts': TfArg.literal([
               for (final e in additionalArtifacts) e.toTfJson(),
             ]),
           'additional_schema_elements': TfArg.literal([
             for (final e in additionalSchemaElements) e.toTfJson(),
           ]),
           'compression': compression,
           'format': format,
           'refresh_closed_reports': ?refreshClosedReports,
           'report_name': reportName,
           'report_versioning': ?reportVersioning,
           's3_bucket': s3Bucket.encodeAs('id'),
           's3_prefix': s3Prefix,
           's3_region': s3Region,
           'tags': ?tags,
           'time_unit': timeUnit,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCurReportDefinitionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCurReportDefinition>`.
  RefTo<AwsCurReportDefinition> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
