// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_place_index`.
const Set<String> _awsLocationPlaceIndexSensitive = <String>{};

/// Factory wrapper for `aws_location_place_index`.
final class DataAwsLocationPlaceIndex extends Data {
  static const String tfType = 'aws_location_place_index';

  DataAwsLocationPlaceIndex({
    required super.localName,
    required TfArg<String> indexName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'index_name': indexName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationPlaceIndexSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `data_source` attribute.
  TfRef<String> get dataSource => TfRef.attribute<String>(this, 'data_source');

  /// Reference to `data_source_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get dataSourceConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'data_source_configuration',
      );

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `index_arn` attribute.
  TfRef<String> get indexArn => TfRef.attribute<String>(this, 'index_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
