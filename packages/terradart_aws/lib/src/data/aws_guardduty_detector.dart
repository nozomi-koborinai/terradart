// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_detector`.
const Set<String> _awsGuarddutyDetectorSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_detector`.
final class DataAwsGuarddutyDetector extends Data {
  static const String tfType = 'aws_guardduty_detector';

  DataAwsGuarddutyDetector({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyDetectorSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `features` attribute.
  TfRef<List<Map<String, Object?>>> get features =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'features');

  /// Reference to `finding_publishing_frequency` attribute.
  TfRef<String> get findingPublishingFrequency =>
      TfRef.attribute<String>(this, 'finding_publishing_frequency');

  /// Reference to `service_role_arn` attribute.
  TfRef<String> get serviceRoleArn =>
      TfRef.attribute<String>(this, 'service_role_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
