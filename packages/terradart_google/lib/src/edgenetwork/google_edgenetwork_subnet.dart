// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_edgenetwork_subnet`.
const Set<String> _googleEdgenetworkSubnetSensitive = <String>{};

/// Edgenetwork Subnet enum for `state`.
enum EdgenetworkSubnetState implements TerraformEnum {
  statePending('STATE_PENDING'),
  stateProvisioning('STATE_PROVISIONING'),
  stateRunning('STATE_RUNNING'),
  stateSuspended('STATE_SUSPENDED'),
  stateDeleting('STATE_DELETING');

  const EdgenetworkSubnetState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_edgenetwork_subnet`.
///
/// A Distributed Cloud Edge subnet, which provides L2 isolation within a
/// network.
///
/// Distributed Cloud Edge **subnet** — CIDR range inside a
/// [GoogleEdgenetworkNetwork].
///
/// **Cost / apply:** Same GDCE hardware commitment surface
/// (`8A2D-5CB1-345B`, e.g. Connected Server Gen1 SKU `007E-2D86-E472`
/// **$3600/mo**). Requires a real edge network / zone absent on
/// `terradart-validate` — ships without a quickstart
/// (`tool/example_debt.yaml`). **Never** wire into apply-smoke.
///
/// Enable `edgenetwork.googleapis.com` via [GoogleProjectService] before
/// apply. [network] is the parent network resource name.
final class GoogleEdgenetworkSubnet extends Resource {
  static const String tfType = 'google_edgenetwork_subnet';

  GoogleEdgenetworkSubnet({
    required super.localName,
    required TfArg<String> subnetId,
    required TfArg<String> network,
    required TfArg<String> location,
    required TfArg<String> zone,
    TfArg<List<String>>? ipv4Cidr,
    TfArg<List<String>>? ipv6Cidr,
    TfArg<num>? vlanId,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subnet_id': subnetId,
           'network': network,
           'location': location,
           'zone': zone,
           if (ipv4Cidr != null) 'ipv4_cidr': ipv4Cidr,
           if (ipv6Cidr != null) 'ipv6_cidr': ipv6Cidr,
           if (vlanId != null) 'vlan_id': vlanId,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgenetworkSubnetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `subnet_id` / name segment.
  TfRef<String> get subnetIdRef => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
