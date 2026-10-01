// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_location_geofence_collection`.
const Set<String> _awsLocationGeofenceCollectionSensitive = <String>{};

/// Factory wrapper for `aws_location_geofence_collection`.
final class AwsLocationGeofenceCollection extends Resource {
  static const String tfType = 'aws_location_geofence_collection';

  AwsLocationGeofenceCollection(
    super.localName, {
    required TfArg<String> collectionName,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
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
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationGeofenceCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLocationGeofenceCollection>`.
  RefTo<AwsLocationGeofenceCollection> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `collection_arn` attribute.
  TfRef<String> get collectionArn =>
      TfRef.attribute<String>(this, 'collection_arn');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `collection_name` attribute.
  TfRef<String> get collectionName =>
      TfRef.attribute<String>(this, 'collection_name');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
