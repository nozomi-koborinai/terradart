// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_edgenetwork_network`.
const Set<String> _googleEdgenetworkNetworkSensitive = <String>{};

/// Factory wrapper for `google_edgenetwork_network`.
///
/// A Distributed Cloud Edge network, which provides L3 isolation within a zone.
///
/// Distributed Cloud Edge **network** — L3 isolation within a GDCE zone.
///
/// **Cost / apply:** Same Google Distributed Cloud Edge hardware surface as
/// [GoogleEdgecontainerCluster] (`8A2D-5CB1-345B`, e.g. Connected Server
/// Gen1 SKU `007E-2D86-E472` **$3600/mo**). Requires physical GDCE zones
/// absent on `terradart-validate` — ships without a quickstart
/// (`tool/example_debt.yaml`). **Never** wire into apply-smoke.
///
/// Enable `edgenetwork.googleapis.com` via [GoogleProjectService] before
/// apply. [zone] is a GDCE zone (e.g. `us-central1-edge-customer-a`).
final class GoogleEdgenetworkNetwork extends Resource {
  static const String tfType = 'google_edgenetwork_network';

  GoogleEdgenetworkNetwork({
    required super.localName,
    required TfArg<String> networkId,
    required TfArg<String> location,
    required TfArg<String> zone,
    TfArg<String>? description,
    TfArg<num>? mtu,
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
           'network_id': networkId,
           'location': location,
           'zone': zone,
           'description': ?description,
           'mtu': ?mtu,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEdgenetworkNetworkSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleEdgenetworkNetwork>`.
  RefTo<GoogleEdgenetworkNetwork> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

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

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labelsRef =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `mtu` attribute.
  TfRef<num> get mtuRef => TfRef.attribute<num>(this, 'mtu');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zoneRef => TfRef.attribute<String>(this, 'zone');

  /// Reference to `network_id` / name segment.
  TfRef<String> get networkIdRef => TfRef.attribute<String>(this, 'network_id');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
