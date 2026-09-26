// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_threatintelset`.
const Set<String> _awsGuarddutyThreatintelsetSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_threatintelset`.
final class AwsGuarddutyThreatintelset extends Resource {
  static const String tfType = 'aws_guardduty_threatintelset';

  AwsGuarddutyThreatintelset({
    required super.localName,
    required TfArg<bool> activate,
    required TfArg<String> detectorId,
    required TfArg<String> format,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'activate': activate,
           'detector_id': detectorId,
           'format': format,
           'location': location,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyThreatintelsetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `threat_intel_set_id` attribute.
  TfRef<String> get threatIntelSetId =>
      TfRef.attribute<String>(this, 'threat_intel_set_id');
}
