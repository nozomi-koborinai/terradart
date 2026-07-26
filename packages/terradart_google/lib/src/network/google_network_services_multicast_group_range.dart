// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_multicast_group_range`.
const Set<String> _googleNetworkServicesMulticastGroupRangeSensitive =
    <String>{};

/// Typed helper for the `log_config` block of
/// `google_network_services_multicast_group_range` (derived from provider schema).
@immutable
final class NetworkServicesMulticastGroupRangeLogConfig {
  const NetworkServicesMulticastGroupRangeLogConfig({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Factory wrapper for `google_network_services_multicast_group_range`.
///
/// Create a multicast group range in the current project.
///
/// Network Services **multicast group range** — multicast group IP CIDR on a domain.
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
final class GoogleNetworkServicesMulticastGroupRange extends Resource {
  static const String tfType = 'google_network_services_multicast_group_range';

  GoogleNetworkServicesMulticastGroupRange({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> multicastGroupRangeId,
    required TfArg<String> multicastDomain,
    required TfArg<String> reservedInternalRange,
    TfArg<String>? distributionScope,
    TfArg<bool>? requireExplicitAccept,
    TfArg<List<String>>? consumerAcceptList,
    NetworkServicesMulticastGroupRangeLogConfig? logConfig,
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
           'multicast_group_range_id': multicastGroupRangeId,
           'multicast_domain': multicastDomain,
           'reserved_internal_range': reservedInternalRange,
           if (distributionScope != null)
             'distribution_scope': distributionScope,
           if (requireExplicitAccept != null)
             'require_explicit_accept': requireExplicitAccept,
           if (consumerAcceptList != null)
             'consumer_accept_list': consumerAcceptList,
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
      _googleNetworkServicesMulticastGroupRangeSensitive;

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
