// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../location/aws_location_tracker_association.dart';

/// Sensitive field paths for `aws_location_tracker_association`.
const Set<String> _awsLocationTrackerAssociationSensitive = <String>{};

/// Factory wrapper for `aws_location_tracker_association`.
final class DataAwsLocationTrackerAssociation extends Data {
  static const String tfType = 'aws_location_tracker_association';

  DataAwsLocationTrackerAssociation(
    super.localName, {
    required TfArg<String> consumerArn,
    TfArg<String>? region,
    required TfArg<String> trackerName,
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

  /// A reference to the `aws_location_tracker_association` this data source reads, for
  /// arguments typed `RefTo<AwsLocationTrackerAssociation>`.
  RefTo<AwsLocationTrackerAssociation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `consumer_arn` attribute.
  TfRef<String> get consumerArn =>
      TfRef.attribute<String>(this, 'consumer_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tracker_name` attribute.
  TfRef<String> get trackerName =>
      TfRef.attribute<String>(this, 'tracker_name');
}
