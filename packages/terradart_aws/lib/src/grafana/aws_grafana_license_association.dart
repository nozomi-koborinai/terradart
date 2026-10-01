// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_grafana_license_association`.
const Set<String> _awsGrafanaLicenseAssociationSensitive = <String>{};

/// Grafana License Association License enum for `license_type`.
extension type const GrafanaLicenseAssociationLicenseType._(TfArg<String> _)
    implements TfArg<String> {
  GrafanaLicenseAssociationLicenseType.variable(String name)
    : this._(TfArg.variable(name));
  GrafanaLicenseAssociationLicenseType.expression(String template)
    : this._(TfArg.expression(template));
  const GrafanaLicenseAssociationLicenseType.arg(TfArg<String> arg)
    : this._(arg);

  static const enterprise = GrafanaLicenseAssociationLicenseType._(
    TfArgLiteral('ENTERPRISE'),
  );
  static const enterpriseFreeTrial = GrafanaLicenseAssociationLicenseType._(
    TfArgLiteral('ENTERPRISE_FREE_TRIAL'),
  );

  static const List<GrafanaLicenseAssociationLicenseType> values = [
    enterprise,
    enterpriseFreeTrial,
  ];
}

/// Factory wrapper for `aws_grafana_license_association`.
final class AwsGrafanaLicenseAssociation extends Resource {
  static const String tfType = 'aws_grafana_license_association';

  AwsGrafanaLicenseAssociation(
    super.localName, {
    TfArg<String>? grafanaToken,
    required GrafanaLicenseAssociationLicenseType licenseType,
    TfArg<String>? region,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'grafana_token': ?grafanaToken,
           'license_type': licenseType,
           'region': ?region,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsGrafanaLicenseAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsGrafanaLicenseAssociation>`.
  RefTo<AwsGrafanaLicenseAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `free_trial_expiration` attribute.
  TfRef<String> get freeTrialExpiration =>
      TfRef.attribute<String>(this, 'free_trial_expiration');

  /// Reference to `license_expiration` attribute.
  TfRef<String> get licenseExpiration =>
      TfRef.attribute<String>(this, 'license_expiration');

  /// Reference to `grafana_token` attribute.
  TfRef<String> get grafanaToken =>
      TfRef.attribute<String>(this, 'grafana_token');

  /// Reference to `license_type` attribute.
  TfRef<String> get licenseType =>
      TfRef.attribute<String>(this, 'license_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
