// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_place_index`.
const Set<String> _awsLocationPlaceIndexSensitive = <String>{};

/// Typed helper for the `data_source_configuration` block of
/// `aws_location_place_index` (derived from provider schema).
@immutable
final class LocationPlaceIndexDataSourceConfiguration {
  const LocationPlaceIndexDataSourceConfiguration({this.intendedUse});

  final TfArg<String>? intendedUse;

  Map<String, Object?> encode() => {
    if (intendedUse != null) 'intended_use': intendedUse!.toTfJson(),
  };
}

/// Factory wrapper for `aws_location_place_index`.
final class AwsLocationPlaceIndex extends Resource {
  static const String tfType = 'aws_location_place_index';

  AwsLocationPlaceIndex({
    required super.localName,
    required TfArg<String> dataSource,
    TfArg<String>? description,
    required TfArg<String> indexName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    LocationPlaceIndexDataSourceConfiguration? dataSourceConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_source': dataSource,
           if (description != null) 'description': description,
           'index_name': indexName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (dataSourceConfiguration != null)
             'data_source_configuration': TfArg.literal(
               dataSourceConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationPlaceIndexSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `index_arn` attribute.
  TfRef<String> get indexArn => TfRef.attribute<String>(this, 'index_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
