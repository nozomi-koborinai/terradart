// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_tracker_association`.
const Set<String> _awsLocationTrackerAssociationSensitive = <String>{};

/// Factory wrapper for `aws_location_tracker_association`.
final class DataAwsLocationTrackerAssociation extends Data {
  static const String tfType = 'aws_location_tracker_association';

  DataAwsLocationTrackerAssociation({
    required super.localName,
    required TfArg<String> consumerArn,
    TfArg<String>? region,
    required TfArg<String> trackerName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'consumer_arn': consumerArn,
           if (region != null) 'region': region,
           'tracker_name': trackerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationTrackerAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
