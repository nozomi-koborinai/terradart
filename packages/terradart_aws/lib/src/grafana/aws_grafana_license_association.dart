// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_license_association`.
const Set<String> _awsGrafanaLicenseAssociationSensitive = <String>{};

/// Factory wrapper for `aws_grafana_license_association`.
final class AwsGrafanaLicenseAssociation extends Resource {
  static const String tfType = 'aws_grafana_license_association';

  AwsGrafanaLicenseAssociation({
    required super.localName,
    TfArg<String>? grafanaToken,
    required TfArg<String> licenseType,
    TfArg<String>? region,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (grafanaToken != null) 'grafana_token': grafanaToken,
           'license_type': licenseType,
           if (region != null) 'region': region,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaLicenseAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `free_trial_expiration` attribute.
  TfRef<String> get freeTrialExpiration =>
      TfRef.attribute<String>(this, 'free_trial_expiration');

  /// Reference to `license_expiration` attribute.
  TfRef<String> get licenseExpiration =>
      TfRef.attribute<String>(this, 'license_expiration');
}
