// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_regional_endpoint`.
const Set<String> _googleNetworkConnectivityRegionalEndpointSensitive =
    <String>{};

/// Network Connectivity Regional Endpoint Access enum for `access_type`.
enum NetworkConnectivityRegionalEndpointAccessType implements TerraformEnum {
  global('GLOBAL'),
  regional('REGIONAL');

  const NetworkConnectivityRegionalEndpointAccessType(this.terraformValue);
  @override
  final String terraformValue;
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
///   localName: 'storage_rep',
///   name: TfArg.literal('terradart-storage-rep'),
///   location: TfArg.literal('us-central1'),
///   targetGoogleApi: TfArg.literal('storage.us-central1.rep.googleapis.com'),
///   accessType: TfArg.literal(
///     NetworkConnectivityRegionalEndpointAccessType.regional,
///   ),
///   network: TfArg.ref(vpc.id),
///   subnetwork: TfArg.ref(subnet.id),
/// );
/// ```
final class GoogleNetworkConnectivityRegionalEndpoint extends Resource {
  static const String tfType = 'google_network_connectivity_regional_endpoint';

  GoogleNetworkConnectivityRegionalEndpoint({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> targetGoogleApi,
    required TfArg<NetworkConnectivityRegionalEndpointAccessType> accessType,
    TfArg<String>? network,
    TfArg<String>? subnetwork,
    TfArg<String>? address,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'target_google_api': targetGoogleApi,
           'access_type': accessType,
           if (network != null) 'network': network,
           if (subnetwork != null) 'subnetwork': subnetwork,
           if (address != null) 'address': address,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityRegionalEndpointSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
