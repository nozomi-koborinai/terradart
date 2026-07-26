// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_consumer_association`.
const Set<String> _googleNetworkServicesMulticastConsumerAssociationSensitive =
    <String>{};

/// Factory wrapper for `google_network_services_multicast_consumer_association`.
///
/// Create a multicast consumer association in the specified location of the
/// current project.
///
/// Network Services **multicast consumer association** — binds a VPC as multicast consumer.
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
final class GoogleNetworkServicesMulticastConsumerAssociation extends Resource {
  static const String tfType =
      'google_network_services_multicast_consumer_association';

  GoogleNetworkServicesMulticastConsumerAssociation({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> multicastConsumerAssociationId,
    required TfArg<String> multicastDomainActivation,
    required TfArg<String> network,
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
           'multicast_consumer_association_id': multicastConsumerAssociationId,
           'multicast_domain_activation': multicastDomainActivation,
           'network': network,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesMulticastConsumerAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `placement_policy` attribute.
  TfRef<String> get placementPolicy =>
      TfRef.attribute<String>(this, 'placement_policy');

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
