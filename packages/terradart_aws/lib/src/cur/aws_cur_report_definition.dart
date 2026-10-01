// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_cur_report_definition`.
const Set<String> _awsCurReportDefinitionSensitive = <String>{};

/// Cur Report Definition Additional enum for `additional_artifacts`.
extension type const CurReportDefinitionAdditionalArtifacts._(TfArg<String> _)
    implements TfArg<String> {
  CurReportDefinitionAdditionalArtifacts.variable(String name)
    : this._(TfArg.variable(name));
  CurReportDefinitionAdditionalArtifacts.expression(String template)
    : this._(TfArg.expression(template));
  const CurReportDefinitionAdditionalArtifacts.arg(TfArg<String> arg)
    : this._(arg);

  static const redshift = CurReportDefinitionAdditionalArtifacts._(
    TfArgLiteral('REDSHIFT'),
  );
  static const quicksight = CurReportDefinitionAdditionalArtifacts._(
    TfArgLiteral('QUICKSIGHT'),
  );
  static const athena = CurReportDefinitionAdditionalArtifacts._(
    TfArgLiteral('ATHENA'),
  );

  static const List<CurReportDefinitionAdditionalArtifacts> values = [
    redshift,
    quicksight,
    athena,
  ];
}

/// Cur Report Definition Additional Schema enum for `additional_schema_elements`.
extension type const CurReportDefinitionAdditionalSchemaElements._(
  TfArg<String> _
) implements TfArg<String> {
  CurReportDefinitionAdditionalSchemaElements.variable(String name)
    : this._(TfArg.variable(name));
  CurReportDefinitionAdditionalSchemaElements.expression(String template)
    : this._(TfArg.expression(template));
  const CurReportDefinitionAdditionalSchemaElements.arg(TfArg<String> arg)
    : this._(arg);

  static const resources = CurReportDefinitionAdditionalSchemaElements._(
    TfArgLiteral('RESOURCES'),
  );
  static const splitCostAllocationData =
      CurReportDefinitionAdditionalSchemaElements._(
        TfArgLiteral('SPLIT_COST_ALLOCATION_DATA'),
      );
  static const manualDiscountCompatibility =
      CurReportDefinitionAdditionalSchemaElements._(
        TfArgLiteral('MANUAL_DISCOUNT_COMPATIBILITY'),
      );

  static const List<CurReportDefinitionAdditionalSchemaElements> values = [
    resources,
    splitCostAllocationData,
    manualDiscountCompatibility,
  ];
}

/// Cur Report Definition enum for `compression`.
extension type const CurReportDefinitionCompression._(TfArg<String> _)
    implements TfArg<String> {
  CurReportDefinitionCompression.variable(String name)
    : this._(TfArg.variable(name));
  CurReportDefinitionCompression.expression(String template)
    : this._(TfArg.expression(template));
  const CurReportDefinitionCompression.arg(TfArg<String> arg) : this._(arg);

  static const zip = CurReportDefinitionCompression._(TfArgLiteral('ZIP'));
  static const gzip = CurReportDefinitionCompression._(TfArgLiteral('GZIP'));
  static const parquet = CurReportDefinitionCompression._(
    TfArgLiteral('Parquet'),
  );

  static const List<CurReportDefinitionCompression> values = [
    zip,
    gzip,
    parquet,
  ];
}

/// Cur Report Definition enum for `format`.
extension type const CurReportDefinitionFormat._(TfArg<String> _)
    implements TfArg<String> {
  CurReportDefinitionFormat.variable(String name)
    : this._(TfArg.variable(name));
  CurReportDefinitionFormat.expression(String template)
    : this._(TfArg.expression(template));
  const CurReportDefinitionFormat.arg(TfArg<String> arg) : this._(arg);

  static const textorcsv = CurReportDefinitionFormat._(
    TfArgLiteral('textORcsv'),
  );
  static const parquet = CurReportDefinitionFormat._(TfArgLiteral('Parquet'));

  static const List<CurReportDefinitionFormat> values = [textorcsv, parquet];
}

/// Cur Report Definition Report enum for `report_versioning`.
extension type const CurReportDefinitionReportVersioning._(TfArg<String> _)
    implements TfArg<String> {
  CurReportDefinitionReportVersioning.variable(String name)
    : this._(TfArg.variable(name));
  CurReportDefinitionReportVersioning.expression(String template)
    : this._(TfArg.expression(template));
  const CurReportDefinitionReportVersioning.arg(TfArg<String> arg)
    : this._(arg);

  static const createNewReport = CurReportDefinitionReportVersioning._(
    TfArgLiteral('CREATE_NEW_REPORT'),
  );
  static const overwriteReport = CurReportDefinitionReportVersioning._(
    TfArgLiteral('OVERWRITE_REPORT'),
  );

  static const List<CurReportDefinitionReportVersioning> values = [
    createNewReport,
    overwriteReport,
  ];
}

/// Cur Report Definition Time enum for `time_unit`.
extension type const CurReportDefinitionTimeUnit._(TfArg<String> _)
    implements TfArg<String> {
  CurReportDefinitionTimeUnit.variable(String name)
    : this._(TfArg.variable(name));
  CurReportDefinitionTimeUnit.expression(String template)
    : this._(TfArg.expression(template));
  const CurReportDefinitionTimeUnit.arg(TfArg<String> arg) : this._(arg);

  static const hourly = CurReportDefinitionTimeUnit._(TfArgLiteral('HOURLY'));
  static const daily = CurReportDefinitionTimeUnit._(TfArgLiteral('DAILY'));
  static const monthly = CurReportDefinitionTimeUnit._(TfArgLiteral('MONTHLY'));

  static const List<CurReportDefinitionTimeUnit> values = [
    hourly,
    daily,
    monthly,
  ];
}

/// Factory wrapper for `aws_cur_report_definition`.
final class AwsCurReportDefinition extends Resource {
  static const String tfType = 'aws_cur_report_definition';

  AwsCurReportDefinition(
    super.localName, {
    List<CurReportDefinitionAdditionalArtifacts>? additionalArtifacts,
    required List<CurReportDefinitionAdditionalSchemaElements>
    additionalSchemaElements,
    required CurReportDefinitionCompression compression,
    required CurReportDefinitionFormat format,
    TfArg<bool>? refreshClosedReports,
    required TfArg<String> reportName,
    CurReportDefinitionReportVersioning? reportVersioning,
    required RefTo<AwsS3Bucket> s3Bucket,
    required TfArg<String> s3Prefix,
    required TfArg<String> s3Region,
    TfArg<Map<String, String>>? tags,
    required CurReportDefinitionTimeUnit timeUnit,
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

  /// Reference to `report_name` attribute.
  TfRef<String> get reportName => TfRef.attribute<String>(this, 'report_name');

  /// Reference to `report_versioning` attribute.
  TfRef<String> get reportVersioning =>
      TfRef.attribute<String>(this, 'report_versioning');

  /// Reference to `s3_bucket` attribute.
  TfRef<String> get s3Bucket => TfRef.attribute<String>(this, 's3_bucket');

  /// Reference to `s3_prefix` attribute.
  TfRef<String> get s3Prefix => TfRef.attribute<String>(this, 's3_prefix');

  /// Reference to `s3_region` attribute.
  TfRef<String> get s3Region => TfRef.attribute<String>(this, 's3_region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `time_unit` attribute.
  TfRef<String> get timeUnit => TfRef.attribute<String>(this, 'time_unit');
}
