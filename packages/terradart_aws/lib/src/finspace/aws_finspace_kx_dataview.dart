// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_finspace_kx_dataview`.
const Set<String> _awsFinspaceKxDataviewSensitive = <String>{};

/// Typed helper for the `segment_configurations` block of
/// `aws_finspace_kx_dataview` (derived from provider schema).
@immutable
final class FinspaceKxDataviewSegmentConfigurations {
  const FinspaceKxDataviewSegmentConfigurations({
    required this.dbPaths,
    this.onDemand,
    required this.volumeName,
  });

  final TfArg<List<Object?>> dbPaths;

  final TfArg<bool>? onDemand;

  final TfArg<String> volumeName;

  Map<String, Object?> encode() => {
    'db_paths': dbPaths.toTfJson(),
    if (onDemand != null) 'on_demand': onDemand!.toTfJson(),
    'volume_name': volumeName.toTfJson(),
  };
}

/// Factory wrapper for `aws_finspace_kx_dataview`.
final class AwsFinspaceKxDataview extends Resource {
  static const String tfType = 'aws_finspace_kx_dataview';

  AwsFinspaceKxDataview({
    required super.localName,
    required TfArg<bool> autoUpdate,
    TfArg<String>? availabilityZoneId,
    required TfArg<String> azMode,
    TfArg<String>? changesetId,
    required TfArg<String> databaseName,
    TfArg<String>? description,
    required TfArg<String> environmentId,
    required TfArg<String> name,
    TfArg<bool>? readWrite,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<FinspaceKxDataviewSegmentConfigurations>? segmentConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_update': autoUpdate,
           if (availabilityZoneId != null)
             'availability_zone_id': availabilityZoneId,
           'az_mode': azMode,
           if (changesetId != null) 'changeset_id': changesetId,
           'database_name': databaseName,
           if (description != null) 'description': description,
           'environment_id': environmentId,
           'name': name,
           if (readWrite != null) 'read_write': readWrite,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (segmentConfigurations != null)
             'segment_configurations': TfArg.literal([
               for (final e in segmentConfigurations) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFinspaceKxDataviewSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_timestamp` attribute.
  TfRef<String> get createdTimestamp =>
      TfRef.attribute<String>(this, 'created_timestamp');

  /// Reference to `last_modified_timestamp` attribute.
  TfRef<String> get lastModifiedTimestamp =>
      TfRef.attribute<String>(this, 'last_modified_timestamp');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
