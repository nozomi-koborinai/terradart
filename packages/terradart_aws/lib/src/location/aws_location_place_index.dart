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

  final TfArg<LocationPlaceIndexIntendedUse>? intendedUse;

  Map<String, Object?> encode() => {'intended_use': ?intendedUse?.toTfJson()};
}

/// `intended_use` — derived from the provider schema description.
enum LocationPlaceIndexIntendedUse implements TerraformEnum {
  singleuse('SingleUse'),
  storage('Storage');

  const LocationPlaceIndexIntendedUse(this.terraformValue);
  @override
  final String terraformValue;
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
           'description': ?description,
           'index_name': indexName,
           'region': ?region,
           'tags': ?tags,
           if (dataSourceConfiguration != null)
             'data_source_configuration': TfArg.literal(
               dataSourceConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationPlaceIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLocationPlaceIndex>`.
  RefTo<AwsLocationPlaceIndex> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `index_arn` attribute.
  TfRef<String> get indexArn => TfRef.attribute<String>(this, 'index_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `index_name` attribute.
  TfRef<String> get indexName => TfRef.attribute<String>(this, 'index_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
