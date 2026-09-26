// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_geofence_collection`.
const Set<String> _awsLocationGeofenceCollectionSensitive = <String>{};

/// Factory wrapper for `aws_location_geofence_collection`.
final class AwsLocationGeofenceCollection extends Resource {
  static const String tfType = 'aws_location_geofence_collection';

  AwsLocationGeofenceCollection({
    required super.localName,
    required TfArg<String> collectionName,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'collection_name': collectionName,
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationGeofenceCollectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collection_arn` attribute.
  TfRef<String> get collectionArn =>
      TfRef.attribute<String>(this, 'collection_arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
