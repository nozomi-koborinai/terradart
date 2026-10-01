// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_group_range_activation`.
const Set<String> _googleNetworkServicesMulticastGroupRangeActivationSensitive =
    <String>{};

/// Typed helper for the `log_config` block of
/// `google_network_services_multicast_group_range_activation` (derived from provider schema).
@immutable
final class NetworkServicesMulticastGroupRangeActivationLogConfig {
  const NetworkServicesMulticastGroupRangeActivationLogConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Factory wrapper for `google_network_services_multicast_group_range_activation`.
///
/// Create a multicast group range activation in the specified location of the
/// current project.
///
/// Network Services **multicast group range activation** — activates a group range on a domain activation.
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
final class GoogleNetworkServicesMulticastGroupRangeActivation
    extends Resource {
  static const String tfType =
      'google_network_services_multicast_group_range_activation';

  GoogleNetworkServicesMulticastGroupRangeActivation(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> multicastGroupRangeActivationId,
    required TfArg<String> multicastGroupRange,
    required TfArg<String> multicastDomainActivation,
    NetworkServicesMulticastGroupRangeActivationLogConfig? logConfig,
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
           'multicast_group_range_activation_id':
               multicastGroupRangeActivationId,
           'multicast_group_range': multicastGroupRange,
           'multicast_domain_activation': multicastDomainActivation,
           if (logConfig != null)
             'log_config': TfArg.literal(logConfig.encode()),
           'description': ?description,
           'labels': ?labels,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesMulticastGroupRangeActivationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesMulticastGroupRangeActivation>`.
  RefTo<GoogleNetworkServicesMulticastGroupRangeActivation> get ref =>
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

  /// Reference to `ip_cidr_range` attribute.
  TfRef<String> get ipCidrRange =>
      TfRef.attribute<String>(this, 'ip_cidr_range');

  /// Reference to `multicast_group_consumer_activations` attribute.
  TfRef<List<String>> get multicastGroupConsumerActivations =>
      TfRef.attribute<List<String>>(
        this,
        'multicast_group_consumer_activations',
      );

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

  /// Reference to `multicast_domain_activation` attribute.
  TfRef<String> get multicastDomainActivation =>
      TfRef.attribute<String>(this, 'multicast_domain_activation');

  /// Reference to `multicast_group_range` attribute.
  TfRef<String> get multicastGroupRange =>
      TfRef.attribute<String>(this, 'multicast_group_range');

  /// Reference to `multicast_group_range_activation_id` attribute.
  TfRef<String> get multicastGroupRangeActivationId =>
      TfRef.attribute<String>(this, 'multicast_group_range_activation_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
