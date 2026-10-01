// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_group_producer_activation`.
const Set<String>
_googleNetworkServicesMulticastGroupProducerActivationSensitive = <String>{};

/// Factory wrapper for `google_network_services_multicast_group_producer_activation`.
///
/// Create a multicast group producer activation in the specified location of
/// the current project.
///
/// Network Services **multicast group producer activation** — enables producer send on a group range.
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
final class GoogleNetworkServicesMulticastGroupProducerActivation
    extends Resource {
  static const String tfType =
      'google_network_services_multicast_group_producer_activation';

  GoogleNetworkServicesMulticastGroupProducerActivation(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> multicastGroupProducerActivationId,
    required TfArg<String> multicastProducerAssociation,
    required TfArg<String> multicastGroupRangeActivation,
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
           'multicast_group_producer_activation_id':
               multicastGroupProducerActivationId,
           'multicast_producer_association': multicastProducerAssociation,
           'multicast_group_range_activation': multicastGroupRangeActivation,
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesMulticastGroupProducerActivationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesMulticastGroupProducerActivation>`.
  RefTo<GoogleNetworkServicesMulticastGroupProducerActivation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `multicast_group_producer_activation_id` attribute.
  TfRef<String> get multicastGroupProducerActivationId =>
      TfRef.attribute<String>(this, 'multicast_group_producer_activation_id');

  /// Reference to `multicast_group_range_activation` attribute.
  TfRef<String> get multicastGroupRangeActivation =>
      TfRef.attribute<String>(this, 'multicast_group_range_activation');

  /// Reference to `multicast_producer_association` attribute.
  TfRef<String> get multicastProducerAssociation =>
      TfRef.attribute<String>(this, 'multicast_producer_association');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
