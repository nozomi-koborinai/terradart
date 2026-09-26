// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_location_tracker_associations`.
const Set<String> _awsLocationTrackerAssociationsSensitive = <String>{};

/// Factory wrapper for `aws_location_tracker_associations`.
final class DataAwsLocationTrackerAssociations extends Data {
  static const String tfType = 'aws_location_tracker_associations';

  DataAwsLocationTrackerAssociations({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> trackerName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'tracker_name': trackerName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLocationTrackerAssociationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `consumer_arns` attribute.
  TfRef<List<String>> get consumerArns =>
      TfRef.attribute<List<String>>(this, 'consumer_arns');
}
