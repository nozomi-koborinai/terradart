// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../guardduty/aws_guardduty_detector.dart';

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
  }) : super(terraformType: tfType, argMap: {'region': ?region, 'tags': ?tags});

  @override
  Set<String> get sensitiveFields => _awsGuarddutyDetectorSensitive;

  /// A reference to the `aws_guardduty_detector` this data source reads, for
  /// arguments typed `RefTo<AwsGuarddutyDetector>`.
  RefTo<AwsGuarddutyDetector> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
