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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'subnet_id': subnetId,
           'network': network,
           'location': location,
           'zone': zone,
           'ipv4_cidr': ?ipv4Cidr,
           'ipv6_cidr': ?ipv6Cidr,
           'vlan_id': ?vlanId,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgenetworkSubnetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEdgenetworkSubnet>`.
  RefTo<GoogleEdgenetworkSubnet> get ref => RefTo.of(this);

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `ipv4_cidr` attribute.
  TfRef<List<String>> get ipv4CidrRef =>
      TfRef.attribute<List<String>>(this, 'ipv4_cidr');

  /// Reference to `ipv6_cidr` attribute.
  TfRef<List<String>> get ipv6CidrRef =>
      TfRef.attribute<List<String>>(this, 'ipv6_cidr');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get networkRef => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `vlan_id` attribute.
  TfRef<num> get vlanIdRef => TfRef.attribute<num>(this, 'vlan_id');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');

  /// Reference to `subnet_id` / name segment.
  TfRef<String> get subnetIdRef => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
