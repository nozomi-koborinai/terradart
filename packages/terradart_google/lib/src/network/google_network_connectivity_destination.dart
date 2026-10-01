// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_destination`.
const Set<String> _googleNetworkConnectivityDestinationSensitive = <String>{};

/// Typed helper for the `endpoints` block of
/// `google_network_connectivity_destination` (derived from provider schema).
@immutable
final class NetworkConnectivityDestinationEndpoints {
  const NetworkConnectivityDestinationEndpoints({
    required this.asn,
    required this.csp,
  });

  final TfArg<String> asn;

  final TfArg<String> csp;

  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'csp': csp.toTfJson(),
  };
}

/// Factory wrapper for `google_network_connectivity_destination`.
///
/// 'Manage Multicloud Data Transfer Destinations'
///
/// Network Connectivity **destination** — IP prefix destination under a
/// multicloud data-transfer config (Partner Cross-Cloud Interconnect path).
///
/// **Cost / apply:** requires never_apply
/// `google_network_connectivity_multicloud_data_transfer_config`. gcp-cost:
/// Network Connectivity Center `7BEB-7A51-4223` Partner Cross Cloud
/// Interconnect Managed Transport 10Gbps us-east4 SKU `AAE5-BD60-3575`
/// **$17.30/h**. billing-behavior: destinations configure the never_apply
/// CCI / multicloud data-transfer path. **Never** wire into apply-smoke.
final class GoogleNetworkConnectivityDestination extends Resource {
  static const String tfType = 'google_network_connectivity_destination';

  GoogleNetworkConnectivityDestination(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> multicloudDataTransferConfig,
    required TfArg<String> ipPrefix,
    required List<NetworkConnectivityDestinationEndpoints> endpoints,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'multicloud_data_transfer_config': multicloudDataTransferConfig,
           'ip_prefix': ipPrefix,
           'endpoints': TfArg.literal([for (final e in endpoints) e.encode()]),
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkConnectivityDestination>`.
  RefTo<GoogleNetworkConnectivityDestination> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state_timeline` attribute.
  TfRef<List<Map<String, Object?>>> get stateTimeline =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state_timeline');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ip_prefix` attribute.
  TfRef<String> get ipPrefix => TfRef.attribute<String>(this, 'ip_prefix');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `multicloud_data_transfer_config` attribute.
  TfRef<String> get multicloudDataTransferConfig =>
      TfRef.attribute<String>(this, 'multicloud_data_transfer_config');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
