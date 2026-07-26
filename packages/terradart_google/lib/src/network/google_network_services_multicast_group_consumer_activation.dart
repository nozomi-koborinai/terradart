// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_group_consumer_activation`.
const Set<String>
_googleNetworkServicesMulticastGroupConsumerActivationSensitive = <String>{};

/// Typed helper for the `log_config` block of
/// `google_network_services_multicast_group_consumer_activation` (derived from provider schema).
@immutable
final class NetworkServicesMulticastGroupConsumerActivationLogConfig {
  const NetworkServicesMulticastGroupConsumerActivationLogConfig({
    this.enabled,
  });

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_multicast_group_consumer_activation`.
///
/// Create a multicast group consumer activation in the specified location of
/// the current project.
///
/// Network Services **multicast group consumer activation** — enables consumer receive on a group range.
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
final class GoogleNetworkServicesMulticastGroupConsumerActivation
    extends Resource {
  static const String tfType =
      'google_network_services_multicast_group_consumer_activation';

  GoogleNetworkServicesMulticastGroupConsumerActivation({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> multicastGroupConsumerActivationId,
    required TfArg<String> multicastConsumerAssociation,
    required TfArg<String> multicastGroupRangeActivation,
    NetworkServicesMulticastGroupConsumerActivationLogConfig? logConfig,
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
           'multicast_group_consumer_activation_id':
               multicastGroupConsumerActivationId,
           'multicast_consumer_association': multicastConsumerAssociation,
           'multicast_group_range_activation': multicastGroupRangeActivation,
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesMulticastGroupConsumerActivationSensitive;

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
