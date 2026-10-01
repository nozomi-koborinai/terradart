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

  final BcmdataexportsExportCompression compression;

  final BcmdataexportsExportFormat format;

  final BcmdataexportsExportOutputType outputType;

  final BcmdataexportsExportOverwrite overwrite;

  Map<String, Object?> encode() => {
    'compression': compression.toTfJson(),
    'format': format.toTfJson(),
    'output_type': outputType.toTfJson(),
    'overwrite': overwrite.toTfJson(),
  };
}

/// `compression` — derived from the provider schema description.
extension type const BcmdataexportsExportCompression._(TfArg<String> _)
    implements TfArg<String> {
  BcmdataexportsExportCompression.variable(String name)
    : this._(TfArg.variable(name));
  BcmdataexportsExportCompression.expression(String template)
    : this._(TfArg.expression(template));
  const BcmdataexportsExportCompression.arg(TfArg<String> arg) : this._(arg);

  static const gzip = BcmdataexportsExportCompression._(TfArgLiteral('GZIP'));
  static const parquet = BcmdataexportsExportCompression._(
    TfArgLiteral('PARQUET'),
  );
  static const zip = BcmdataexportsExportCompression._(TfArgLiteral('ZIP'));

  static const List<BcmdataexportsExportCompression> values = [
    gzip,
    parquet,
    zip,
  ];
}

/// `format` — derived from the provider schema description.
extension type const BcmdataexportsExportFormat._(TfArg<String> _)
    implements TfArg<String> {
  BcmdataexportsExportFormat.variable(String name)
    : this._(TfArg.variable(name));
  BcmdataexportsExportFormat.expression(String template)
    : this._(TfArg.expression(template));
  const BcmdataexportsExportFormat.arg(TfArg<String> arg) : this._(arg);

  static const textOrCsv = BcmdataexportsExportFormat._(
    TfArgLiteral('TEXT_OR_CSV'),
  );
  static const parquet = BcmdataexportsExportFormat._(TfArgLiteral('PARQUET'));

  static const List<BcmdataexportsExportFormat> values = [textOrCsv, parquet];
}

/// `output_type` — derived from the provider schema description.
extension type const BcmdataexportsExportOutputType._(TfArg<String> _)
    implements TfArg<String> {
  BcmdataexportsExportOutputType.variable(String name)
    : this._(TfArg.variable(name));
  BcmdataexportsExportOutputType.expression(String template)
    : this._(TfArg.expression(template));
  const BcmdataexportsExportOutputType.arg(TfArg<String> arg) : this._(arg);

  static const custom = BcmdataexportsExportOutputType._(
    TfArgLiteral('CUSTOM'),
  );
  static const athena = BcmdataexportsExportOutputType._(
    TfArgLiteral('ATHENA'),
  );
  static const redshift = BcmdataexportsExportOutputType._(
    TfArgLiteral('REDSHIFT'),
  );

  static const List<BcmdataexportsExportOutputType> values = [
    custom,
    athena,
    redshift,
  ];
}

/// `overwrite` — derived from the provider schema description.
extension type const BcmdataexportsExportOverwrite._(TfArg<String> _)
    implements TfArg<String> {
  BcmdataexportsExportOverwrite.variable(String name)
    : this._(TfArg.variable(name));
  BcmdataexportsExportOverwrite.expression(String template)
    : this._(TfArg.expression(template));
  const BcmdataexportsExportOverwrite.arg(TfArg<String> arg) : this._(arg);

  static const createNewReport = BcmdataexportsExportOverwrite._(
    TfArgLiteral('CREATE_NEW_REPORT'),
  );
  static const overwriteReport = BcmdataexportsExportOverwrite._(
    TfArgLiteral('OVERWRITE_REPORT'),
  );

  static const List<BcmdataexportsExportOverwrite> values = [
    createNewReport,
    overwriteReport,
  ];
}

/// Typed helper for the `export.refresh_cadence` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportRefreshCadence {
  const BcmdataexportsExportRefreshCadence({required this.frequency});

  final BcmdataexportsExportFrequency frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// `frequency` — derived from the provider schema description.
extension type const BcmdataexportsExportFrequency._(TfArg<String> _)
    implements TfArg<String> {
  BcmdataexportsExportFrequency.variable(String name)
    : this._(TfArg.variable(name));
  BcmdataexportsExportFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const BcmdataexportsExportFrequency.arg(TfArg<String> arg) : this._(arg);

  static const synchronous = BcmdataexportsExportFrequency._(
    TfArgLiteral('SYNCHRONOUS'),
  );

  static const List<BcmdataexportsExportFrequency> values = [synchronous];
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
