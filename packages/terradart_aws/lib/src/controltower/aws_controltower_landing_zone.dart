// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_controltower_landing_zone`.
const Set<String> _awsControltowerLandingZoneSensitive = <String>{};

/// Controltower Landing Zone Remediation enum for `remediation_types`.
enum ControltowerLandingZoneRemediationTypes implements TerraformEnum {
  inheritanceDrift('INHERITANCE_DRIFT');

  const ControltowerLandingZoneRemediationTypes(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_controltower_landing_zone`.
final class AwsControltowerLandingZone extends Resource {
  static const String tfType = 'aws_controltower_landing_zone';

  AwsControltowerLandingZone({
    required super.localName,
    required TfArg<String> manifestJson,
    TfArg<String>? region,
    List<TfArg<ControltowerLandingZoneRemediationTypes>>? remediationTypes,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> version,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'manifest_json': manifestJson,
           if (region != null) 'region': region,
           if (remediationTypes != null)
             'remediation_types': TfArg.literal([
               for (final e in remediationTypes) e.toTfJson(),
             ]),
           if (tags != null) 'tags': tags,
           'version': version,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsControltowerLandingZoneSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsControltowerLandingZone>`.
  RefTo<AwsControltowerLandingZone> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `drift_status` attribute.
  TfRef<List<Map<String, Object?>>> get driftStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'drift_status');

  /// Reference to `latest_available_version` attribute.
  TfRef<String> get latestAvailableVersion =>
      TfRef.attribute<String>(this, 'latest_available_version');
}
