// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../location/aws_location_map.dart';

/// Sensitive field paths for `aws_location_map`.
const Set<String> _awsLocationMapSensitive = <String>{};

/// Factory wrapper for `aws_location_map`.
final class DataAwsLocationMap extends Data {
  static const String tfType = 'aws_location_map';

  DataAwsLocationMap(
    super.localName, {
    required TfArg<String> mapName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'map_name': mapName, 'region': ?region, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsLocationMapSensitive;

  /// A reference to the `aws_location_map` this data source reads, for
  /// arguments typed `RefTo<AwsLocationMap>`.
  RefTo<AwsLocationMap> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration` attribute.
  TfRef<List<Map<String, Object?>>> get configuration =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'configuration');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `map_arn` attribute.
  TfRef<String> get mapArn => TfRef.attribute<String>(this, 'map_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `map_name` attribute.
  TfRef<String> get mapName => TfRef.attribute<String>(this, 'map_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
