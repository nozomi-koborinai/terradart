// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_tracker`.
const Set<String> _awsLocationTrackerSensitive = <String>{};

/// Factory wrapper for `aws_location_tracker`.
final class AwsLocationTracker extends Resource {
  static const String tfType = 'aws_location_tracker';

  AwsLocationTracker({
    required super.localName,
    TfArg<String>? description,
    TfArg<String>? kmsKeyId,
    TfArg<String>? positionFiltering,
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
           if (description != null) 'description': description,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (positionFiltering != null)
             'position_filtering': positionFiltering,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'tracker_name': trackerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationTrackerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `tracker_arn` attribute.
  TfRef<String> get trackerArn => TfRef.attribute<String>(this, 'tracker_arn');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
