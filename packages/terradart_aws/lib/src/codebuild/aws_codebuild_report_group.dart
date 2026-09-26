// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_codebuild_report_group`.
const Set<String> _awsCodebuildReportGroupSensitive = <String>{};

/// Typed helper for the `export_config` block of
/// `aws_codebuild_report_group` (derived from provider schema).
@immutable
final class CodebuildReportGroupExportConfig {
  const CodebuildReportGroupExportConfig({
    required this.type,
    this.s3Destination,
  });

  final TfArg<String> type;

  final CodebuildReportGroupExportConfigS3Destination? s3Destination;

  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    if (s3Destination != null) 's3_destination': s3Destination!.encode(),
  };
}

/// Typed helper for the `export_config.s3_destination` block of
/// `aws_codebuild_report_group` (derived from provider schema).
@immutable
final class CodebuildReportGroupExportConfigS3Destination {
  const CodebuildReportGroupExportConfigS3Destination({
    required this.bucket,
    this.encryptionDisabled,
    required this.encryptionKey,
    this.packaging,
    this.path,
  });

  final TfArg<String> bucket;

  final TfArg<bool>? encryptionDisabled;

  final TfArg<String> encryptionKey;

  final TfArg<String>? packaging;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'bucket': bucket.toTfJson(),
    if (encryptionDisabled != null)
      'encryption_disabled': encryptionDisabled!.toTfJson(),
    'encryption_key': encryptionKey.toTfJson(),
    if (packaging != null) 'packaging': packaging!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
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
    required TfArg<String> type,
    required CodebuildReportGroupExportConfig exportConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deleteReports != null) 'delete_reports': deleteReports,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'type': type,
           'export_config': TfArg.literal(exportConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCodebuildReportGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');
}
