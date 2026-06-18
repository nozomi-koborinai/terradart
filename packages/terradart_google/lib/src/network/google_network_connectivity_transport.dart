// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_transport`.
const Set<String> _googleNetworkConnectivityTransportSensitive = <String>{};

/// Terraform `deletion_policy` for Network Connectivity transports.
enum NetworkConnectivityTransportDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const NetworkConnectivityTransportDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// IP stack for `google_network_connectivity_transport.stack_type`.
enum NetworkConnectivityTransportStackType implements TerraformEnum {
  ipv4Ipv6('IPV4_IPV6'),
  ipv4Only('IPV4_ONLY');

  const NetworkConnectivityTransportStackType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_connectivity_transport`.
///
/// The Transport resource is a top-level resource used by customers to control
/// Partner Cross-Cloud Interconnect (CCI) connections.
///
/// Partner Cross-Cloud Interconnect (CCI) transport for Network Connectivity.
///
/// Enable `networkconnectivity.googleapis.com` via [GoogleProjectService]
/// before apply. [network] must reference an existing VPC; [remoteProfile]
/// is the full URL of a `remoteTransportProfiles` resource in the same region.
///
/// Example:
/// ```dart
/// GoogleNetworkConnectivityTransport(
///   localName: 'aws_cci',
///   name: TfArg.literal('my-transport'),
///   region: TfArg.literal('us-east4'),
///   network: TfArg.ref(vpc.nameRef),
///   remoteProfile: TfArg.literal(
///     'https://networkconnectivity.googleapis.com/v1/projects/my-project/locations/us-east4/remoteTransportProfiles/aws-us-east-1',
///   ),
///   bandwidth: TfArg.literal('BPS_1G'),
/// );
/// ```
final class GoogleNetworkConnectivityTransport extends Resource {
  static const String tfType = 'google_network_connectivity_transport';

  GoogleNetworkConnectivityTransport({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> region,
    required TfArg<String> network,
    required TfArg<String> remoteProfile,
    TfArg<String>? description,
    TfArg<String>? bandwidth,
    TfArg<String>? remoteAccountId,
    TfArg<String>? providedActivationKey,
    TfArg<List<String>>? advertisedRoutes,
    TfArg<NetworkConnectivityTransportStackType>? stackType,
    TfArg<num>? mtuLimit,
    TfArg<Map<String, String>>? labels,
    TfArg<NetworkConnectivityTransportDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'region': region,
           'network': network,
           'remote_profile': remoteProfile,
           if (description != null) 'description': description,
           if (bandwidth != null) 'bandwidth': bandwidth,
           if (remoteAccountId != null) 'remote_account_id': remoteAccountId,
           if (providedActivationKey != null)
             'provided_activation_key': providedActivationKey,
           if (advertisedRoutes != null) 'advertised_routes': advertisedRoutes,
           if (stackType != null) 'stack_type': stackType,
           if (mtuLimit != null) 'mtu_limit': mtuLimit,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityTransportSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `generated_activation_key` attribute.
  TfRef<String> get generatedActivationKey =>
      TfRef.attribute<String>(this, 'generated_activation_key');

  /// Reference to `peering_network` attribute.
  TfRef<String> get peeringNetwork =>
      TfRef.attribute<String>(this, 'peering_network');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
