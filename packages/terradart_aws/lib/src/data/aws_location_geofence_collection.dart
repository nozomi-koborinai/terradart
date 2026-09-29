// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../location/aws_location_geofence_collection.dart';
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_location_geofence_collection`.
const Set<String> _awsLocationGeofenceCollectionSensitive = <String>{};

/// Factory wrapper for `aws_location_geofence_collection`.
final class DataAwsLocationGeofenceCollection extends Data {
  static const String tfType = 'aws_location_geofence_collection';

  DataAwsLocationGeofenceCollection({
    required super.localName,
    required TfArg<String> collectionName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection_name': collectionName,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationGeofenceCollectionSensitive;

  /// A reference to the `aws_location_geofence_collection` this data source reads, for
  /// arguments typed `RefTo<AwsLocationGeofenceCollection>`.
  RefTo<AwsLocationGeofenceCollection> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collection_arn` attribute.
  TfRef<String> get collectionArn =>
      TfRef.attribute<String>(this, 'collection_arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
