// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_tracker_association`.
const Set<String> _awsLocationTrackerAssociationSensitive = <String>{};

/// Factory wrapper for `aws_location_tracker_association`.
final class AwsLocationTrackerAssociation extends Resource {
  static const String tfType = 'aws_location_tracker_association';

  AwsLocationTrackerAssociation({
    required super.localName,
    required TfArg<String> consumerArn,
    TfArg<String>? region,
    required TfArg<String> trackerName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consumer_arn': consumerArn,
           'region': ?region,
           'tracker_name': trackerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationTrackerAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLocationTrackerAssociation>`.
  RefTo<AwsLocationTrackerAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `consumer_arn` attribute.
  TfRef<String> get consumerArnRef =>
      TfRef.attribute<String>(this, 'consumer_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tracker_name` attribute.
  TfRef<String> get trackerNameRef =>
      TfRef.attribute<String>(this, 'tracker_name');
}
