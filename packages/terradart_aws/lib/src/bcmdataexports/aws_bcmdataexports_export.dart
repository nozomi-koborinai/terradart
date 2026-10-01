// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_bcmdataexports_export`.
const Set<String> _awsBcmdataexportsExportSensitive = <String>{};

/// Typed helper for the `export` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExport {
  const BcmdataexportsExport({
    this.description,
    required this.name,
    this.dataQuery,
    this.destinationConfigurations,
    this.refreshCadence,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<BcmdataexportsExportDataQuery>? dataQuery;

  final List<BcmdataexportsExportDestinationConfigurations>?
  destinationConfigurations;

  final List<BcmdataexportsExportRefreshCadence>? refreshCadence;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    if (dataQuery != null)
      'data_query': [for (final e in dataQuery!) e.encode()],
    if (destinationConfigurations != null)
      'destination_configurations': [
        for (final e in destinationConfigurations!) e.encode(),
      ],
    if (refreshCadence != null)
      'refresh_cadence': [for (final e in refreshCadence!) e.encode()],
  };
}

/// Typed helper for the `export.data_query` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportDataQuery {
  const BcmdataexportsExportDataQuery({
    required this.queryStatement,
    this.tableConfigurations,
  });

  final TfArg<String> queryStatement;

  final TfArg<Map<String, dynamic>>? tableConfigurations;

  Map<String, Object?> encode() => {
    'query_statement': queryStatement.toTfJson(),
    'table_configurations': ?tableConfigurations?.toTfJson(),
  };
}

/// Typed helper for the `export.destination_configurations` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportDestinationConfigurations {
  const BcmdataexportsExportDestinationConfigurations({this.s3Destination});

  final List<BcmdataexportsExportS3Destination>? s3Destination;

  Map<String, Object?> encode() => {
    if (s3Destination != null)
      's3_destination': [for (final e in s3Destination!) e.encode()],
  };
}

/// Typed helper for the `export.destination_configurations.s3_destination` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportS3Destination {
  const BcmdataexportsExportS3Destination({
    required this.s3Bucket,
    required this.s3Prefix,
    required this.s3Region,
    this.s3OutputConfigurations,
  });

  final RefTo<AwsS3Bucket> s3Bucket;

  final TfArg<String> s3Prefix;

  final TfArg<String> s3Region;

  final List<BcmdataexportsExportS3OutputConfigurations>?
  s3OutputConfigurations;

  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.encodeAs('id').toTfJson(),
    's3_prefix': s3Prefix.toTfJson(),
    's3_region': s3Region.toTfJson(),
    if (s3OutputConfigurations != null)
      's3_output_configurations': [
        for (final e in s3OutputConfigurations!) e.encode(),
      ],
  };
}

/// Typed helper for the `export.destination_configurations.s3_destination.s3_output_configurations` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportS3OutputConfigurations {
  const BcmdataexportsExportS3OutputConfigurations({
    required this.compression,
    required this.format,
    required this.outputType,
    required this.overwrite,
  });

  final TfArg<BcmdataexportsExportCompression> compression;

  final TfArg<BcmdataexportsExportFormat> format;

  final TfArg<BcmdataexportsExportOutputType> outputType;

  final TfArg<BcmdataexportsExportOverwrite> overwrite;

  Map<String, Object?> encode() => {
    'compression': compression.toTfJson(),
    'format': format.toTfJson(),
    'output_type': outputType.toTfJson(),
    'overwrite': overwrite.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
enum BcmdataexportsExportCompression implements TerraformEnum {
  gzip('GZIP'),
  parquet('PARQUET'),
  zip('ZIP');

  const BcmdataexportsExportCompression(this.terraformValue);
  @override
  final String terraformValue;
}

/// `format` — derived from the provider schema description.
enum BcmdataexportsExportFormat implements TerraformEnum {
  textOrCsv('TEXT_OR_CSV'),
  parquet('PARQUET');

  const BcmdataexportsExportFormat(this.terraformValue);
  @override
  final String terraformValue;
}

/// `output_type` — derived from the provider schema description.
enum BcmdataexportsExportOutputType implements TerraformEnum {
  custom('CUSTOM'),
  athena('ATHENA'),
  redshift('REDSHIFT');

  const BcmdataexportsExportOutputType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `overwrite` — derived from the provider schema description.
enum BcmdataexportsExportOverwrite implements TerraformEnum {
  createNewReport('CREATE_NEW_REPORT'),
  overwriteReport('OVERWRITE_REPORT');

  const BcmdataexportsExportOverwrite(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `export.refresh_cadence` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportRefreshCadence {
  const BcmdataexportsExportRefreshCadence({required this.frequency});

  final TfArg<BcmdataexportsExportFrequency> frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
enum BcmdataexportsExportFrequency implements TerraformEnum {
  synchronous('SYNCHRONOUS');

  const BcmdataexportsExportFrequency(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_bcmdataexports_export`.
final class AwsBcmdataexportsExport extends Resource {
  static const String tfType = 'aws_bcmdataexports_export';

  AwsBcmdataexportsExport(
    super.localName, {
    TfArg<Map<String, String>>? tags,
    List<BcmdataexportsExport>? export,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tags': ?tags,
           if (export != null)
             'export': TfArg.literal([for (final e in export) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBcmdataexportsExportSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBcmdataexportsExport>`.
  RefTo<AwsBcmdataexportsExport> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
