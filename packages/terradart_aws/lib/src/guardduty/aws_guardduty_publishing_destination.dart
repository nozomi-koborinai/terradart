// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_publishing_destination`.
const Set<String> _awsGuarddutyPublishingDestinationSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_publishing_destination`.
final class AwsGuarddutyPublishingDestination extends Resource {
  static const String tfType = 'aws_guardduty_publishing_destination';

  AwsGuarddutyPublishingDestination({
    required super.localName,
    required TfArg<String> destinationArn,
    TfArg<String>? destinationType,
    required TfArg<String> detectorId,
    required TfArg<String> kmsKeyArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_arn': destinationArn,
           if (destinationType != null) 'destination_type': destinationType,
           'detector_id': detectorId,
           'kms_key_arn': kmsKeyArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsGuarddutyPublishingDestinationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_id` attribute.
  TfRef<String> get destinationId =>
      TfRef.attribute<String>(this, 'destination_id');
}
