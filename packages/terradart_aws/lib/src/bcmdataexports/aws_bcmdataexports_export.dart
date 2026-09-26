// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_bcmdataexports_export`.
const Set<String> _awsBcmdataexportsExportSensitive = <String>{};

/// Typed helper for the `export` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportExport {
  const BcmdataexportsExportExport({
    this.description,
    required this.name,
    this.dataQuery,
    this.destinationConfigurations,
    this.refreshCadence,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final List<BcmdataexportsExportExportDataQuery>? dataQuery;

  final List<BcmdataexportsExportExportDestinationConfigurations>?
  destinationConfigurations;

  final List<BcmdataexportsExportExportRefreshCadence>? refreshCadence;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
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
final class BcmdataexportsExportExportDataQuery {
  const BcmdataexportsExportExportDataQuery({
    required this.queryStatement,
    this.tableConfigurations,
  });

  final TfArg<String> queryStatement;

  final TfArg<Map<String, dynamic>>? tableConfigurations;

  Map<String, Object?> encode() => {
    'query_statement': queryStatement.toTfJson(),
    if (tableConfigurations != null)
      'table_configurations': tableConfigurations!.toTfJson(),
  };
}

/// Typed helper for the `export.destination_configurations` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportExportDestinationConfigurations {
  const BcmdataexportsExportExportDestinationConfigurations({
    this.s3Destination,
  });

  final List<BcmdataexportsExportExportDestinationConfigurationsS3Destination>?
  s3Destination;

  Map<String, Object?> encode() => {
    if (s3Destination != null)
      's3_destination': [for (final e in s3Destination!) e.encode()],
  };
}

/// Typed helper for the `export.destination_configurations.s3_destination` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportExportDestinationConfigurationsS3Destination {
  const BcmdataexportsExportExportDestinationConfigurationsS3Destination({
    required this.s3Bucket,
    required this.s3Prefix,
    required this.s3Region,
    this.s3OutputConfigurations,
  });

  final TfArg<String> s3Bucket;

  final TfArg<String> s3Prefix;

  final TfArg<String> s3Region;

  final List<
    BcmdataexportsExportExportDestinationConfigurationsS3DestinationS3OutputConfigurations
  >?
  s3OutputConfigurations;

  Map<String, Object?> encode() => {
    's3_bucket': s3Bucket.toTfJson(),
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
final class BcmdataexportsExportExportDestinationConfigurationsS3DestinationS3OutputConfigurations {
  const BcmdataexportsExportExportDestinationConfigurationsS3DestinationS3OutputConfigurations({
    required this.compression,
    required this.format,
    required this.outputType,
    required this.overwrite,
  });

  final TfArg<String> compression;

  final TfArg<String> format;

  final TfArg<String> outputType;

  final TfArg<String> overwrite;

  Map<String, Object?> encode() => {
    'compression': compression.toTfJson(),
    'format': format.toTfJson(),
    'output_type': outputType.toTfJson(),
    'overwrite': overwrite.toTfJson(),
  };
}

/// Typed helper for the `export.refresh_cadence` block of
/// `aws_bcmdataexports_export` (derived from provider schema).
@immutable
final class BcmdataexportsExportExportRefreshCadence {
  const BcmdataexportsExportExportRefreshCadence({required this.frequency});

  final TfArg<String> frequency;

  Map<String, Object?> encode() => {'frequency': frequency.toTfJson()};
}

/// Factory wrapper for `aws_bcmdataexports_export`.
final class AwsBcmdataexportsExport extends Resource {
  static const String tfType = 'aws_bcmdataexports_export';

  AwsBcmdataexportsExport({
    required super.localName,
    TfArg<Map<String, String>>? tags,
    List<BcmdataexportsExportExport>? export,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (tags != null) 'tags': tags,
           if (export != null)
             'export': TfArg.literal([for (final e in export) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBcmdataexportsExportSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
