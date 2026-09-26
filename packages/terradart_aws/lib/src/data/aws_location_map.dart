// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_map`.
const Set<String> _awsLocationMapSensitive = <String>{};

/// Factory wrapper for `aws_location_map`.
final class DataAwsLocationMap extends Data {
  static const String tfType = 'aws_location_map';

  DataAwsLocationMap({
    required super.localName,
    required TfArg<String> mapName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'map_name': mapName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationMapSensitive;

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
}
