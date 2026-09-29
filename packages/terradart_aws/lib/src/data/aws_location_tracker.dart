// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../location/aws_location_tracker.dart';

/// Sensitive field paths for `aws_location_tracker`.
const Set<String> _awsLocationTrackerSensitive = <String>{};

/// Factory wrapper for `aws_location_tracker`.
final class DataAwsLocationTracker extends Data {
  static const String tfType = 'aws_location_tracker';

  DataAwsLocationTracker({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> trackerName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
           'tags': ?tags,
           'tracker_name': trackerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationTrackerSensitive;

  /// A reference to the `aws_location_tracker` this data source reads, for
  /// arguments typed `RefTo<AwsLocationTracker>`.
  RefTo<AwsLocationTracker> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `position_filtering` attribute.
  TfRef<String> get positionFiltering =>
      TfRef.attribute<String>(this, 'position_filtering');

  /// Reference to `tracker_arn` attribute.
  TfRef<String> get trackerArn => TfRef.attribute<String>(this, 'tracker_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
