// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_detector_feature`.
const Set<String> _awsGuarddutyDetectorFeatureSensitive = <String>{};

/// Typed helper for the `additional_configuration` block of
/// `aws_guardduty_detector_feature` (derived from provider schema).
@immutable
final class GuarddutyDetectorFeatureAdditionalConfiguration {
  const GuarddutyDetectorFeatureAdditionalConfiguration({
    required this.name,
    required this.status,
  });

  final TfArg<String> name;

  final TfArg<String> status;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// Factory wrapper for `aws_guardduty_detector_feature`.
final class AwsGuarddutyDetectorFeature extends Resource {
  static const String tfType = 'aws_guardduty_detector_feature';

  AwsGuarddutyDetectorFeature({
    required super.localName,
    required TfArg<String> detectorId,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> status,
    List<GuarddutyDetectorFeatureAdditionalConfiguration>?
    additionalConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detector_id': detectorId,
           'name': name,
           if (region != null) 'region': region,
           'status': status,
           if (additionalConfiguration != null)
             'additional_configuration': TfArg.literal([
               for (final e in additionalConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyDetectorFeatureSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
