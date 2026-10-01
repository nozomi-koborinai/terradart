// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_codebuild_report_group`.
const Set<String> _awsCodebuildReportGroupSensitive = <String>{};

/// Codebuild Report Group enum for `type`.
enum CodebuildReportGroupType implements TerraformEnum {
  test('TEST'),
  codeCoverage('CODE_COVERAGE');

  const CodebuildReportGroupType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `export_config` block of
/// `aws_codebuild_report_group` (derived from provider schema).
@immutable
final class CodebuildReportGroupExportConfig {
  const CodebuildReportGroupExportConfig({
    required this.type,
    this.s3Destination,
  });

  final TfArg<CodebuildReportGroupExportConfigType> type;

  final CodebuildReportGroupS3Destination? s3Destination;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    's3_destination': ?s3Destination?.encode(),
  };
}

/// `type` — derived from the provider schema description.
enum CodebuildReportGroupExportConfigType implements TerraformEnum {
  s3('S3'),
  noExport('NO_EXPORT');

  const CodebuildReportGroupExportConfigType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `export_config.s3_destination` block of
/// `aws_codebuild_report_group` (derived from provider schema).
@immutable
final class CodebuildReportGroupS3Destination {
  const CodebuildReportGroupS3Destination({
    required this.bucket,
    this.encryptionDisabled,
    required this.encryptionKey,
    this.packaging,
    this.path,
  });

  final RefTo<AwsS3Bucket> bucket;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String> encryptionKey;

  final TfArg<CodebuildReportGroupPackaging>? packaging;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket': bucket.encodeAs('id').toTfJson(),
    'encryption_disabled': ?encryptionDisabled?.toTfJson(),
    'encryption_key': encryptionKey.toTfJson(),
    'packaging': ?packaging?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// `packaging` — derived from the provider schema description.
enum CodebuildReportGroupPackaging implements TerraformEnum {
  zip('ZIP'),
  none('NONE');

  const CodebuildReportGroupPackaging(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_codebuild_report_group`.
final class AwsCodebuildReportGroup extends Resource {
  static const String tfType = 'aws_codebuild_report_group';

  AwsCodebuildReportGroup({
    required super.localName,
    TfArg<bool>? deleteReports,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<CodebuildReportGroupType> type,
    required CodebuildReportGroupExportConfig exportConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'delete_reports': ?deleteReports,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'type': type,
           'export_config': TfArg.literal(exportConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildReportGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCodebuildReportGroup>`.
  RefTo<AwsCodebuildReportGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `delete_reports` attribute.
  TfRef<bool> get deleteReports =>
      TfRef.attribute<bool>(this, 'delete_reports');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
