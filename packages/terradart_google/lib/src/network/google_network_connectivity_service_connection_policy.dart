// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_service_connection_policy`.
const Set<String> _googleNetworkConnectivityServiceConnectionPolicySensitive =
    <String>{};

/// Typed helper for the `psc_config` block of
/// `google_network_connectivity_service_connection_policy` (derived from provider schema).
@immutable
final class NetworkConnectivityServiceConnectionPolicyPscConfig {
  const NetworkConnectivityServiceConnectionPolicyPscConfig({
    this.allowedGoogleProducersResourceHierarchyLevel,
    this.limit,
    this.producerInstanceLocation,
    required this.subnetworks,
  });

  final TfArg<List<Object?>>? allowedGoogleProducersResourceHierarchyLevel;

  final TfArg<String>? limit;

  final TfArg<
    NetworkConnectivityServiceConnectionPolicyPscConfigProducerInstanceLocation
  >?
  producerInstanceLocation;

  final TfArg<List<Object?>> subnetworks;

  Map<String, Object?> encode() => {
    if (allowedGoogleProducersResourceHierarchyLevel != null)
      'allowed_google_producers_resource_hierarchy_level':
          allowedGoogleProducersResourceHierarchyLevel!.toTfJson(),
    if (limit != null) 'limit': limit!.toTfJson(),
    if (producerInstanceLocation != null)
      'producer_instance_location': producerInstanceLocation!.toTfJson(),
    'subnetworks': subnetworks.toTfJson(),
  };
}

/// `producer_instance_location` — derived from the provider schema description.
enum NetworkConnectivityServiceConnectionPolicyPscConfigProducerInstanceLocation
    implements TerraformEnum {
  producerInstanceLocationUnspecified('PRODUCER_INSTANCE_LOCATION_UNSPECIFIED'),
  customResourceHierarchyLevels('CUSTOM_RESOURCE_HIERARCHY_LEVELS');

  const NetworkConnectivityServiceConnectionPolicyPscConfigProducerInstanceLocation(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_connectivity_service_connection_policy`.
///
/// Manage Service Connection Policies.
///
/// Network Connectivity **service connection policy** — consumer-side PSC
/// policy that authorizes Private Service Connect connections for a
/// producer [serviceClass] into a VPC / subnet set.
///
/// [serviceClass] is a producer-published identifier (not inventable
/// in-stack on a standalone project without an external producer).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU for the policy
/// (NCC `7BEB-7A51-4223` `list_skus` keyword=connection/service → 0;
/// catalog only lists Partner CCI Managed Transport hourly SKUs).
/// billing-behavior: policy metadata — no existence/hourly charge; PSC
/// data-plane usage bills under ordinary networking. Not
/// standalone-project applyable without a real producer `service_class`.
/// Ships via `tool/example_debt.yaml`.
final class GoogleNetworkConnectivityServiceConnectionPolicy extends Resource {
  static const String tfType =
      'google_network_connectivity_service_connection_policy';

  GoogleNetworkConnectivityServiceConnectionPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> network,
    required TfArg<String> serviceClass,
    NetworkConnectivityServiceConnectionPolicyPscConfig? pscConfig,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'network': network,
           'service_class': serviceClass,
           if (pscConfig != null)
             'psc_config': TfArg.literal(pscConfig.encode()),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityServiceConnectionPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `infrastructure` attribute.
  TfRef<String> get infrastructure =>
      TfRef.attribute<String>(this, 'infrastructure');

  /// Reference to `psc_connections` attribute.
  TfRef<List<Map<String, Object?>>> get pscConnections =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'psc_connections');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
