// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_guardduty_finding_ids`.
const Set<String> _awsGuarddutyFindingIdsSensitive = <String>{};

/// Factory wrapper for `aws_guardduty_finding_ids`.
final class DataAwsGuarddutyFindingIds extends Data {
  static const String tfType = 'aws_guardduty_finding_ids';

  DataAwsGuarddutyFindingIds({
    required super.localName,
    required TfArg<String> detectorId,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'detector_id': detectorId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGuarddutyFindingIdsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `finding_ids` attribute.
  TfRef<List<String>> get findingIds =>
      TfRef.attribute<List<String>>(this, 'finding_ids');

  /// Reference to `has_findings` attribute.
  TfRef<bool> get hasFindings => TfRef.attribute<bool>(this, 'has_findings');
}
