// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;
import '../compute/google_compute_subnetwork.dart' show GoogleComputeSubnetwork;

/// Sensitive field paths for `google_network_connectivity_regional_endpoint`.
const Set<String> _googleNetworkConnectivityRegionalEndpointSensitive =
    <String>{};

/// Network Connectivity Regional Endpoint Access enum for `access_type`.
extension type const NetworkConnectivityRegionalEndpointAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkConnectivityRegionalEndpointAccessType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkConnectivityRegionalEndpointAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkConnectivityRegionalEndpointAccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const global = NetworkConnectivityRegionalEndpointAccessType._(
    TfArgLiteral('GLOBAL'),
  );
  static const regional = NetworkConnectivityRegionalEndpointAccessType._(
    TfArgLiteral('REGIONAL'),
  );

  static const List<NetworkConnectivityRegionalEndpointAccessType> values = [
    global,
    regional,
  ];
}

/// Factory wrapper for `google_network_connectivity_regional_endpoint`.
///
/// Regional Private Service Connect (PSC) endpoint resource.
///
/// Network Connectivity **regional endpoint** — private PSC endpoint for a
/// Google API (`{service}.{region}.rep.googleapis.com`).
///
/// Example:
/// ```dart
/// GoogleNetworkConnectivityRegionalEndpoint(
///   'storage_rep',
///   name: TfArg.literal('terradart-storage-rep'),
///   location: TfArg.literal('us-central1'),
///   targetGoogleApi: TfArg.literal('storage.us-central1.rep.googleapis.com'),
///   accessType: NetworkConnectivityRegionalEndpointAccessType.regional,
///   network: vpc.ref,
///   subnetwork: subnet.ref,
/// );
/// ```
final class GoogleNetworkConnectivityRegionalEndpoint extends Resource {
  static const String tfType = 'google_network_connectivity_regional_endpoint';

  GoogleNetworkConnectivityRegionalEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> targetGoogleApi,
    required NetworkConnectivityRegionalEndpointAccessType accessType,
    RefTo<GoogleComputeNetwork>? network,
    RefTo<GoogleComputeSubnetwork>? subnetwork,
    TfArg<String>? address,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'target_google_api': targetGoogleApi,
           'access_type': accessType,
           'network': ?network?.encodeAs('id'),
           'subnetwork': ?subnetwork?.encodeAs('id'),
           'address': ?address,
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityRegionalEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityRegionalEndpoint>`.
  RefTo<GoogleNetworkConnectivityRegionalEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `psc_forwarding_rule` attribute.
  TfRef<String> get pscForwardingRule =>
      TfRef.attribute<String>(this, 'psc_forwarding_rule');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `access_type` attribute.
  TfRef<String> get accessType => TfRef.attribute<String>(this, 'access_type');

  /// Reference to `address` attribute.
  TfRef<String> get address => TfRef.attribute<String>(this, 'address');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `subnetwork` attribute.
  TfRef<String> get subnetwork => TfRef.attribute<String>(this, 'subnetwork');

  /// Reference to `target_google_api` attribute.
  TfRef<String> get targetGoogleApi =>
      TfRef.attribute<String>(this, 'target_google_api');
}
