// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_multicloud_data_transfer_config`.
const Set<String>
_googleNetworkConnectivityMulticloudDataTransferConfigSensitive = <String>{};

/// Typed helper for the `services` block of
/// `google_network_connectivity_multicloud_data_transfer_config` (derived from provider schema).
@immutable
final class NetworkConnectivityMulticloudDataTransferConfigServices {
  const NetworkConnectivityMulticloudDataTransferConfigServices({
    required this.serviceName,
  });

  final TfArg<String> serviceName;

  Map<String, Object?> encode() => {'service_name': serviceName.toTfJson()};
}

/// Factory wrapper for `google_network_connectivity_multicloud_data_transfer_config`.
///
/// 'Manage Multicloud Data Transfer Configs'
///
/// Network Connectivity **multicloud data transfer config** — Partner
/// Cross-Cloud Interconnect / multicloud data-transfer configuration.
///
/// **Cost / apply:** gcp-cost: Network Connectivity Center `7BEB-7A51-4223`
/// Partner Cross Cloud Interconnect Managed Transport 10Gbps us-east4 SKU
/// `AAE5-BD60-3575` **$17.30/h** (100Gbps us-west1 `0ED2-0975-EF6E`
/// **$26.40/h**). billing-behavior: Cross-Site / wire-group / multicloud
/// data-transfer configs are the control plane for Partner Cross-Cloud
/// Interconnect managed transport; working stacks imply those circuit-hour
/// charges. **Never** wire into apply-smoke.
final class GoogleNetworkConnectivityMulticloudDataTransferConfig
    extends Resource {
  static const String tfType =
      'google_network_connectivity_multicloud_data_transfer_config';

  GoogleNetworkConnectivityMulticloudDataTransferConfig({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? description,
    List<NetworkConnectivityMulticloudDataTransferConfigServices>? services,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           if (description != null) 'description': description,
           if (services != null)
             'services': TfArg.literal([for (final e in services) e.encode()]),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityMulticloudDataTransferConfigSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `destinations_active_count` attribute.
  TfRef<num> get destinationsActiveCount =>
      TfRef.attribute<num>(this, 'destinations_active_count');

  /// Reference to `destinations_count` attribute.
  TfRef<num> get destinationsCount =>
      TfRef.attribute<num>(this, 'destinations_count');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `uid` attribute.
  TfRef<String> get uidRef => TfRef.attribute<String>(this, 'uid');
}
