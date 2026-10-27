// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_frontdoor`.
const Set<String> _azurermFrontdoorSensitive = <String>{};

/// Typed helper for the `backend_pool` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorBackendPool {
  const FrontdoorBackendPool({
    required this.healthProbeName,
    required this.loadBalancingName,
    required this.name,
    required this.backend,
  });

  final TfArg<String> healthProbeName;

  final TfArg<String> loadBalancingName;

  final TfArg<String> name;

  final List<FrontdoorBackend> backend;

  @internal
  Map<String, Object?> encode() => {
    'health_probe_name': healthProbeName.toTfJson(),
    'load_balancing_name': loadBalancingName.toTfJson(),
    'name': name.toTfJson(),
    'backend': [for (final e in backend) e.encode()],
  };
}

/// Typed helper for the `backend_pool.backend` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorBackend {
  const FrontdoorBackend({
    required this.address,
    this.enabled,
    required this.hostHeader,
    required this.httpPort,
    required this.httpsPort,
    this.priority,
    this.weight,
  });

  final TfArg<String> address;

  final TfArg<bool>? enabled;

  final TfArg<String> hostHeader;

  final TfArg<num> httpPort;

  final TfArg<num> httpsPort;

  final TfArg<num>? priority;

  final TfArg<num>? weight;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'host_header': hostHeader.toTfJson(),
    'http_port': httpPort.toTfJson(),
    'https_port': httpsPort.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// Typed helper for the `backend_pool_health_probe` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorBackendPoolHealthProbe {
  const FrontdoorBackendPoolHealthProbe({
    this.enabled,
    this.intervalInSeconds,
    required this.name,
    this.path,
    this.probeMethod,
    this.protocol,
  });

  final TfArg<bool>? enabled;

  final TfArg<num>? intervalInSeconds;

  final TfArg<String> name;

  final TfArg<String>? path;

  final TfArg<String>? probeMethod;

  final TfArg<String>? protocol;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'interval_in_seconds': ?intervalInSeconds?.toTfJson(),
    'name': name.toTfJson(),
    'path': ?path?.toTfJson(),
    'probe_method': ?probeMethod?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
  };
}

/// Typed helper for the `backend_pool_load_balancing` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorBackendPoolLoadBalancing {
  const FrontdoorBackendPoolLoadBalancing({
    this.additionalLatencyMilliseconds,
    required this.name,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  final TfArg<num>? additionalLatencyMilliseconds;

  final TfArg<String> name;

  final TfArg<num>? sampleSize;

  final TfArg<num>? successfulSamplesRequired;

  @internal
  Map<String, Object?> encode() => {
    'additional_latency_milliseconds': ?additionalLatencyMilliseconds
        ?.toTfJson(),
    'name': name.toTfJson(),
    'sample_size': ?sampleSize?.toTfJson(),
    'successful_samples_required': ?successfulSamplesRequired?.toTfJson(),
  };
}

/// Typed helper for the `backend_pool_settings` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorBackendPoolSettings {
  const FrontdoorBackendPoolSettings({
    this.backendPoolsSendReceiveTimeoutSeconds,
    required this.enforceBackendPoolsCertificateNameCheck,
  });

  final TfArg<num>? backendPoolsSendReceiveTimeoutSeconds;

  final TfArg<bool> enforceBackendPoolsCertificateNameCheck;

  @internal
  Map<String, Object?> encode() => {
    'backend_pools_send_receive_timeout_seconds':
        ?backendPoolsSendReceiveTimeoutSeconds?.toTfJson(),
    'enforce_backend_pools_certificate_name_check':
        enforceBackendPoolsCertificateNameCheck.toTfJson(),
  };
}

/// Typed helper for the `frontend_endpoint` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorFrontendEndpoint {
  const FrontdoorFrontendEndpoint({
    required this.hostName,
    required this.name,
    this.sessionAffinityEnabled,
    this.sessionAffinityTtlSeconds,
    this.webApplicationFirewallPolicyLinkId,
  });

  final TfArg<String> hostName;

  final TfArg<String> name;

  final TfArg<bool>? sessionAffinityEnabled;

  final TfArg<num>? sessionAffinityTtlSeconds;

  final TfArg<String>? webApplicationFirewallPolicyLinkId;

  @internal
  Map<String, Object?> encode() => {
    'host_name': hostName.toTfJson(),
    'name': name.toTfJson(),
    'session_affinity_enabled': ?sessionAffinityEnabled?.toTfJson(),
    'session_affinity_ttl_seconds': ?sessionAffinityTtlSeconds?.toTfJson(),
    'web_application_firewall_policy_link_id':
        ?webApplicationFirewallPolicyLinkId?.toTfJson(),
  };
}

/// Typed helper for the `routing_rule` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorRoutingRule {
  const FrontdoorRoutingRule({
    required this.acceptedProtocols,
    this.enabled,
    required this.frontendEndpoints,
    required this.name,
    required this.patternsToMatch,
    this.forwardingConfiguration,
    this.redirectConfiguration,
  });

  final TfArg<List<String>> acceptedProtocols;

  final TfArg<bool>? enabled;

  final TfArg<List<String>> frontendEndpoints;

  final TfArg<String> name;

  final TfArg<List<String>> patternsToMatch;

  final FrontdoorForwardingConfiguration? forwardingConfiguration;

  final FrontdoorRedirectConfiguration? redirectConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'accepted_protocols': acceptedProtocols.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'frontend_endpoints': frontendEndpoints.toTfJson(),
    'name': name.toTfJson(),
    'patterns_to_match': patternsToMatch.toTfJson(),
    'forwarding_configuration': ?forwardingConfiguration?.encode(),
    'redirect_configuration': ?redirectConfiguration?.encode(),
  };
}

/// Typed helper for the `routing_rule.forwarding_configuration` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorForwardingConfiguration {
  const FrontdoorForwardingConfiguration({
    required this.backendPoolName,
    this.cacheDuration,
    this.cacheEnabled,
    this.cacheQueryParameterStripDirective,
    this.cacheQueryParameters,
    this.cacheUseDynamicCompression,
    this.customForwardingPath,
    this.forwardingProtocol,
  });

  final TfArg<String> backendPoolName;

  final TfArg<String>? cacheDuration;

  final TfArg<bool>? cacheEnabled;

  final TfArg<String>? cacheQueryParameterStripDirective;

  final TfArg<List<String>>? cacheQueryParameters;

  final TfArg<bool>? cacheUseDynamicCompression;

  final TfArg<String>? customForwardingPath;

  final TfArg<String>? forwardingProtocol;

  @internal
  Map<String, Object?> encode() => {
    'backend_pool_name': backendPoolName.toTfJson(),
    'cache_duration': ?cacheDuration?.toTfJson(),
    'cache_enabled': ?cacheEnabled?.toTfJson(),
    'cache_query_parameter_strip_directive': ?cacheQueryParameterStripDirective
        ?.toTfJson(),
    'cache_query_parameters': ?cacheQueryParameters?.toTfJson(),
    'cache_use_dynamic_compression': ?cacheUseDynamicCompression?.toTfJson(),
    'custom_forwarding_path': ?customForwardingPath?.toTfJson(),
    'forwarding_protocol': ?forwardingProtocol?.toTfJson(),
  };
}

/// Typed helper for the `routing_rule.redirect_configuration` block of
/// `azurerm_frontdoor` (derived from provider schema).
@immutable
final class FrontdoorRedirectConfiguration {
  const FrontdoorRedirectConfiguration({
    this.customFragment,
    this.customHost,
    this.customPath,
    this.customQueryString,
    required this.redirectProtocol,
    required this.redirectType,
  });

  final TfArg<String>? customFragment;

  final TfArg<String>? customHost;

  final TfArg<String>? customPath;

  final TfArg<String>? customQueryString;

  final TfArg<String> redirectProtocol;

  final TfArg<String> redirectType;

  @internal
  Map<String, Object?> encode() => {
    'custom_fragment': ?customFragment?.toTfJson(),
    'custom_host': ?customHost?.toTfJson(),
    'custom_path': ?customPath?.toTfJson(),
    'custom_query_string': ?customQueryString?.toTfJson(),
    'redirect_protocol': redirectProtocol.toTfJson(),
    'redirect_type': redirectType.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_frontdoor`.
final class AzurermFrontdoor extends Resource {
  static const String tfType = 'azurerm_frontdoor';

  AzurermFrontdoor(
    super.localName, {
    TfArg<String>? friendlyName,
    TfArg<bool>? loadBalancerEnabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required List<FrontdoorBackendPool> backendPool,
    required List<FrontdoorBackendPoolHealthProbe> backendPoolHealthProbe,
    required List<FrontdoorBackendPoolLoadBalancing> backendPoolLoadBalancing,
    List<FrontdoorBackendPoolSettings>? backendPoolSettings,
    required List<FrontdoorFrontendEndpoint> frontendEndpoint,
    required List<FrontdoorRoutingRule> routingRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'friendly_name': ?friendlyName,
           'load_balancer_enabled': ?loadBalancerEnabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'backend_pool': TfArg.literal([
             for (final e in backendPool) e.encode(),
           ]),
           'backend_pool_health_probe': TfArg.literal([
             for (final e in backendPoolHealthProbe) e.encode(),
           ]),
           'backend_pool_load_balancing': TfArg.literal([
             for (final e in backendPoolLoadBalancing) e.encode(),
           ]),
           if (backendPoolSettings != null)
             'backend_pool_settings': TfArg.literal([
               for (final e in backendPoolSettings) e.encode(),
             ]),
           'frontend_endpoint': TfArg.literal([
             for (final e in frontendEndpoint) e.encode(),
           ]),
           'routing_rule': TfArg.literal([
             for (final e in routingRule) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFrontdoorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFrontdoor>`.
  RefTo<AzurermFrontdoor> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_pool_health_probes` attribute.
  TfRef<Map<String, String>> get backendPoolHealthProbes =>
      TfRef.attribute<Map<String, String>>(this, 'backend_pool_health_probes');

  /// Reference to `backend_pool_load_balancing_settings` attribute.
  TfRef<Map<String, String>> get backendPoolLoadBalancingSettings =>
      TfRef.attribute<Map<String, String>>(
        this,
        'backend_pool_load_balancing_settings',
      );

  /// Reference to `backend_pools` attribute.
  TfRef<Map<String, String>> get backendPools =>
      TfRef.attribute<Map<String, String>>(this, 'backend_pools');

  /// Reference to `cname` attribute.
  TfRef<String> get cname => TfRef.attribute<String>(this, 'cname');

  /// Reference to `explicit_resource_order` attribute.
  TfRef<List<Map<String, Object?>>> get explicitResourceOrder =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'explicit_resource_order',
      );

  /// Reference to `frontend_endpoints` attribute.
  TfRef<Map<String, String>> get frontendEndpoints =>
      TfRef.attribute<Map<String, String>>(this, 'frontend_endpoints');

  /// Reference to `header_frontdoor_id` attribute.
  TfRef<String> get headerFrontdoorId =>
      TfRef.attribute<String>(this, 'header_frontdoor_id');

  /// Reference to `routing_rules` attribute.
  TfRef<Map<String, String>> get routingRules =>
      TfRef.attribute<Map<String, String>>(this, 'routing_rules');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `load_balancer_enabled` attribute.
  TfRef<bool> get loadBalancerEnabled =>
      TfRef.attribute<bool>(this, 'load_balancer_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
