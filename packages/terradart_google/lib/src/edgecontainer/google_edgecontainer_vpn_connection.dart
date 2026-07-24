// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_edgecontainer_vpn_connection`.
const Set<String> _googleEdgecontainerVpnConnectionSensitive = <String>{};

/// Typed helper for the `vpc_project` block of
/// `google_edgecontainer_vpn_connection` (derived from provider schema).
@immutable
final class EdgecontainerVpnConnectionVpcProject {
  const EdgecontainerVpnConnectionVpcProject({this.projectId});

  final TfArg<String>? projectId;

  Map<String, Object?> encode() => {
    if (projectId != null) 'project_id': projectId!.toTfJson(),
  };
}

/// Factory wrapper for `google_edgecontainer_vpn_connection`.
///
/// A VPN connection
///
/// Google Distributed Cloud Edge **VPN connection** — links a
/// [GoogleEdgecontainerCluster] to a Cloud VPC via Cloud Router.
///
/// **Cost / apply:** Same GDCE hardware commitment surface as the parent
/// cluster (`8A2D-5CB1-345B`, e.g. Connected Server Gen1 SKU
/// `007E-2D86-E472` **$3600/mo**), plus Cloud VPN / Router when wired.
/// Requires a real edge cluster absent on `terradart-validate` — ships
/// without a quickstart (`tool/example_debt.yaml`). **Never** wire into
/// apply-smoke.
///
/// Enable `edgecontainer.googleapis.com` via [GoogleProjectService] before
/// apply. [cluster] is the parent cluster resource name; [vpc] / [router]
/// identify the Cloud side.
final class GoogleEdgecontainerVpnConnection extends Resource {
  static const String tfType = 'google_edgecontainer_vpn_connection';

  GoogleEdgecontainerVpnConnection({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> cluster,
    required TfArg<String> location,
    TfArg<String>? vpc,
    TfArg<String>? router,
    EdgecontainerVpnConnectionVpcProject? vpcProject,
    TfArg<bool>? enableHighAvailability,
    TfArg<String>? natGatewayIp,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'cluster': cluster,
           'location': location,
           if (vpc != null) 'vpc': vpc,
           if (router != null) 'router': router,
           if (vpcProject != null)
             'vpc_project': TfArg.literal(vpcProject.encode()),
           if (enableHighAvailability != null)
             'enable_high_availability': enableHighAvailability,
           if (natGatewayIp != null) 'nat_gateway_ip': natGatewayIp,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgecontainerVpnConnectionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `details` attribute.
  TfRef<List<Map<String, Object?>>> get details =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'details');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
