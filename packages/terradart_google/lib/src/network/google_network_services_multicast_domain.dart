// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_domain`.
const Set<String> _googleNetworkServicesMulticastDomainSensitive = <String>{};

/// Typed helper for the `connection_config` block of
/// `google_network_services_multicast_domain` (derived from provider schema).
@immutable
final class NetworkServicesMulticastDomainConnectionConfig {
  const NetworkServicesMulticastDomainConnectionConfig({
    required this.connectionType,
    this.nccHub,
  });

  final TfArg<String> connectionType;

  final TfArg<String>? nccHub;

  Map<String, Object?> encode() => {
    'connection_type': connectionType.toTfJson(),
    if (nccHub != null) 'ncc_hub': nccHub!.toTfJson(),
  };
}

/// Typed helper for the `ull_multicast_domain` block of
/// `google_network_services_multicast_domain` (derived from provider schema).
@immutable
final class NetworkServicesMulticastDomainUllMulticastDomain {
  const NetworkServicesMulticastDomainUllMulticastDomain({
    this.preconfiguredUllDomain,
  });

  final TfArg<String>? preconfiguredUllDomain;

  Map<String, Object?> encode() => {
    if (preconfiguredUllDomain != null)
      'preconfigured_ull_domain': preconfiguredUllDomain!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_multicast_domain`.
///
/// Create a multicast domain in the current project.
///
/// Network Services **multicast domain** — Cloud Multicast reliability domain.
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU (Networking
/// `E505-1604-58F8` list_skus keyword multicast / "Cloud Multicast" → 0; no
/// dedicated Multicast service). Docs
/// (https://cloud.google.com/vpc/docs/multicast): multicast infrastructure
/// is billed to admin projects with **domain activations** — billing starts
/// when a domain activation is created; plus multicast data processing on
/// consumer projects (and NCC Advanced Data Networking for producer→infra
/// traffic). Allowlisted GA product. billing-behavior: existence / usage
/// billed from activation. **Never** wire into apply-smoke.
final class GoogleNetworkServicesMulticastDomain extends Resource {
  static const String tfType = 'google_network_services_multicast_domain';

  GoogleNetworkServicesMulticastDomain({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> multicastDomainId,
    required TfArg<String> adminNetwork,
    required NetworkServicesMulticastDomainConnectionConfig connectionConfig,
    TfArg<String>? multicastDomainGroup,
    NetworkServicesMulticastDomainUllMulticastDomain? ullMulticastDomain,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'multicast_domain_id': multicastDomainId,
           'admin_network': adminNetwork,
           'connection_config': TfArg.literal(connectionConfig.encode()),
           if (multicastDomainGroup != null)
             'multicast_domain_group': multicastDomainGroup,
           if (ullMulticastDomain != null)
             'ull_multicast_domain': TfArg.literal(ullMulticastDomain.encode()),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesMulticastDomainSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<List<Map<String, Object?>>> get state =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
