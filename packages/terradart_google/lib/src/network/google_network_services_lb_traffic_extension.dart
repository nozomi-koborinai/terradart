// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_lb_traffic_extension`.
const Set<String> _googleNetworkServicesLbTrafficExtensionSensitive =
    <String>{};

/// Network Services Lb Traffic Extension Load Balancing enum for `load_balancing_scheme`.
enum NetworkServicesLbTrafficExtensionLoadBalancingScheme
    implements TerraformEnum {
  internalManaged('INTERNAL_MANAGED'),
  externalManaged('EXTERNAL_MANAGED');

  const NetworkServicesLbTrafficExtensionLoadBalancingScheme(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `extension_chains` block of
/// `google_network_services_lb_traffic_extension` (derived from provider schema).
@immutable
final class NetworkServicesLbTrafficExtensionExtensionChains {
  const NetworkServicesLbTrafficExtensionExtensionChains({
    required this.name,
    required this.extensions,
    required this.matchCondition,
  });

  final TfArg<String> name;

  final List<NetworkServicesLbTrafficExtensionExtensionChainsExtensions>
  extensions;

  final NetworkServicesLbTrafficExtensionExtensionChainsMatchCondition
  matchCondition;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'extensions': [for (final e in extensions) e.encode()],
    'match_condition': matchCondition.encode(),
  };
}

/// Typed helper for the `extension_chains.extensions` block of
/// `google_network_services_lb_traffic_extension` (derived from provider schema).
@immutable
final class NetworkServicesLbTrafficExtensionExtensionChainsExtensions {
  const NetworkServicesLbTrafficExtensionExtensionChainsExtensions({
    this.authority,
    this.failOpen,
    this.forwardAttributes,
    this.forwardHeaders,
    this.metadata,
    required this.name,
    required this.service,
    this.supportedEvents,
    this.timeout,
  });

  final TfArg<String>? authority;

  final TfArg<bool>? failOpen;

  final TfArg<List<Object?>>? forwardAttributes;

  final TfArg<List<Object?>>? forwardHeaders;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String> name;

  final TfArg<String> service;

  final TfArg<List<Object?>>? supportedEvents;

  final TfArg<String>? timeout;

  Map<String, Object?> encode() => {
    if (authority != null) 'authority': authority!.toTfJson(),
    if (failOpen != null) 'fail_open': failOpen!.toTfJson(),
    if (forwardAttributes != null)
      'forward_attributes': forwardAttributes!.toTfJson(),
    if (forwardHeaders != null) 'forward_headers': forwardHeaders!.toTfJson(),
    if (metadata != null) 'metadata': metadata!.toTfJson(),
    'name': name.toTfJson(),
    'service': service.toTfJson(),
    if (supportedEvents != null)
      'supported_events': supportedEvents!.toTfJson(),
    if (timeout != null) 'timeout': timeout!.toTfJson(),
  };
}

/// Typed helper for the `extension_chains.match_condition` block of
/// `google_network_services_lb_traffic_extension` (derived from provider schema).
@immutable
final class NetworkServicesLbTrafficExtensionExtensionChainsMatchCondition {
  const NetworkServicesLbTrafficExtensionExtensionChainsMatchCondition({
    required this.celExpression,
  });

  final TfArg<String> celExpression;

  Map<String, Object?> encode() => {'cel_expression': celExpression.toTfJson()};
}

/// Factory wrapper for `google_network_services_lb_traffic_extension`.
///
/// LbTrafficExtension is a resource that lets the extension service modify the
/// headers and payloads of both requests and responses without impacting the
/// choice of backend services or any other security policies associated with
/// the backend service.
///
/// Service Extensions **LbTrafficExtension** — traffic callout / plugin
/// chain attached to Application Load Balancer forwarding rules.
///
/// Schema requires `forwarding_rules` (min 1) and `extension_chains`
/// with a callout `service` (BackendService or Wasm plugin). Do **not**
/// wire this into apply-smoke: Cloud LB Forwarding Rule Minimum (Iowa
/// `8295-248B-132F`) is **$0.025/h**.
///
/// **Cost:** gcp-cost: Networking `E505-1604-58F8` Service Extensions
/// Load Balancer Callouts `3C5D-59B9-2035` **$0.10/count**; Plugin
/// Invocations `4C0F-EF59-605D` **$0 until 2e6 then $0.10/count**.
/// billing-behavior: the extension object is invocation-metered — no
/// existence/hourly charge until attached LB traffic invokes it.
/// Enable `networkservices.googleapis.com` before apply.
final class GoogleNetworkServicesLbTrafficExtension extends Resource {
  static const String tfType = 'google_network_services_lb_traffic_extension';

  GoogleNetworkServicesLbTrafficExtension({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> loadBalancingScheme,
    required TfArg<List<String>> forwardingRules,
    required List<NetworkServicesLbTrafficExtensionExtensionChains>
    extensionChains,
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
           'load_balancing_scheme': loadBalancingScheme,
           'forwarding_rules': forwardingRules,
           'extension_chains': TfArg.literal([
             for (final e in extensionChains) e.encode(),
           ]),
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesLbTrafficExtensionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
