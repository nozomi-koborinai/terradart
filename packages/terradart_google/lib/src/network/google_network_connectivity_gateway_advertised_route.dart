// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_connectivity_gateway_advertised_route`.
const Set<String> _googleNetworkConnectivityGatewayAdvertisedRouteSensitive =
    <String>{};

/// Network Connectivity Gateway Advertised Route enum for `recipient`.
enum NetworkConnectivityGatewayAdvertisedRouteRecipient
    implements TerraformEnum {
  recipientUnspecified('RECIPIENT_UNSPECIFIED'),
  advertiseToHub('ADVERTISE_TO_HUB');

  const NetworkConnectivityGatewayAdvertisedRouteRecipient(this.terraformValue);
  @override
  final String terraformValue;
}

/// Network Connectivity Gateway Advertised Route enum for `state`.
enum NetworkConnectivityGatewayAdvertisedRouteState implements TerraformEnum {
  stateUnspecified('STATE_UNSPECIFIED'),
  creating('CREATING'),
  active('ACTIVE'),
  deleting('DELETING'),
  accepting('ACCEPTING'),
  rejecting('REJECTING'),
  updating('UPDATING'),
  inactive('INACTIVE'),
  obsolete('OBSOLETE'),
  failed('FAILED');

  const NetworkConnectivityGatewayAdvertisedRouteState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_connectivity_gateway_advertised_route`.
///
/// A gateway advertised route is a route that a gateway spoke advertises
/// somewhere.
///
/// Network Connectivity **gateway advertised route** — advertises an IP
/// prefix from an NCC **gateway** spoke to the hub (or a recipient).
///
/// Requires a spoke whose attachment is
/// [NetworkConnectivitySpokeGateway] (capacity-billed; never apply-smoke).
///
/// **Cost / apply:** gcp-cost: no Cloud Billing Catalog SKU for the route
/// itself (NCC `7BEB-7A51-4223` `list_skus` keyword=gateway/route → 0;
/// catalog only lists Partner CCI Managed Transport hourly SKUs).
/// billing-behavior: route metadata is free, but the parent gateway spoke
/// is capacity-billed — same never_apply path as
/// [NetworkConnectivitySpokeGateway]. Ships via `tool/example_debt.yaml`.
final class GoogleNetworkConnectivityGatewayAdvertisedRoute extends Resource {
  static const String tfType =
      'google_network_connectivity_gateway_advertised_route';

  GoogleNetworkConnectivityGatewayAdvertisedRoute({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> spoke,
    TfArg<String>? ipRange,
    TfArg<NetworkConnectivityGatewayAdvertisedRouteRecipient>? recipient,
    TfArg<num>? priority,
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
           'spoke': spoke,
           if (ipRange != null) 'ip_range': ipRange,
           if (recipient != null) 'recipient': recipient,
           if (priority != null) 'priority': priority,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkConnectivityGatewayAdvertisedRouteSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
