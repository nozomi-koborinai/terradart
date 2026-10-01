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
final class NetworkServicesLbTrafficExtensionChains {
  const NetworkServicesLbTrafficExtensionChains({
    required this.name,
    required this.extensions,
    required this.matchCondition,
  });

  final TfArg<String> name;

  final List<NetworkServicesLbTrafficExtensionExtensions> extensions;

  final NetworkServicesLbTrafficExtensionMatchCondition matchCondition;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'extensions': [for (final e in extensions) e.encode()],
    'match_condition': matchCondition.encode(),
  };
}

/// Typed helper for the `extension_chains.extensions` block of
/// `google_network_services_lb_traffic_extension` (derived from provider schema).
@immutable
final class NetworkServicesLbTrafficExtensionExtensions {
  const NetworkServicesLbTrafficExtensionExtensions({
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

  final TfArg<List<String>>? forwardAttributes;

  final TfArg<List<String>>? forwardHeaders;

  final TfArg<Map<String, String>>? metadata;

  final TfArg<String> name;

  final TfArg<String> service;

  final TfArg<List<String>>? supportedEvents;

  final TfArg<String>? timeout;

  Map<String, Object?> encode() => {
    'authority': ?authority?.toTfJson(),
    'fail_open': ?failOpen?.toTfJson(),
    'forward_attributes': ?forwardAttributes?.toTfJson(),
    'forward_headers': ?forwardHeaders?.toTfJson(),
    'metadata': ?metadata?.toTfJson(),
    'name': name.toTfJson(),
    'service': service.toTfJson(),
    'supported_events': ?supportedEvents?.toTfJson(),
    'timeout': ?timeout?.toTfJson(),
  };
}

/// Typed helper for the `extension_chains.match_condition` block of
/// `google_network_services_lb_traffic_extension` (derived from provider schema).
@immutable
final class NetworkServicesLbTrafficExtensionMatchCondition {
  const NetworkServicesLbTrafficExtensionMatchCondition({
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

  GoogleNetworkServicesLbTrafficExtension(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<NetworkServicesLbTrafficExtensionLoadBalancingScheme>
    loadBalancingScheme,
    required TfArg<List<String>> forwardingRules,
    required List<NetworkServicesLbTrafficExtensionChains> extensionChains,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
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
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesLbTrafficExtensionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesLbTrafficExtension>`.
  RefTo<GoogleNetworkServicesLbTrafficExtension> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `forwarding_rules` attribute.
  TfRef<List<String>> get forwardingRules =>
      TfRef.attribute<List<String>>(this, 'forwarding_rules');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_scheme` attribute.
  TfRef<String> get loadBalancingScheme =>
      TfRef.attribute<String>(this, 'load_balancing_scheme');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
