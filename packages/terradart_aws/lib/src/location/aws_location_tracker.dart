// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_location_tracker`.
const Set<String> _awsLocationTrackerSensitive = <String>{};

/// Location Tracker Position enum for `position_filtering`.
enum LocationTrackerPositionFiltering implements TerraformEnum {
  timebased('TimeBased'),
  distancebased('DistanceBased'),
  accuracybased('AccuracyBased');

  const LocationTrackerPositionFiltering(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_location_tracker`.
final class AwsLocationTracker extends Resource {
  static const String tfType = 'aws_location_tracker';

  AwsLocationTracker({
    required super.localName,
    TfArg<String>? description,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<LocationTrackerPositionFiltering>? positionFiltering,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trackerName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'position_filtering': ?positionFiltering,
           'region': ?region,
           'tags': ?tags,
           'tracker_name': trackerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationTrackerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLocationTracker>`.
  RefTo<AwsLocationTracker> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `tracker_arn` attribute.
  TfRef<String> get trackerArn => TfRef.attribute<String>(this, 'tracker_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `position_filtering` attribute.
  TfRef<String> get positionFilteringRef =>
      TfRef.attribute<String>(this, 'position_filtering');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tracker_name` attribute.
  TfRef<String> get trackerNameRef =>
      TfRef.attribute<String>(this, 'tracker_name');
}
