// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_service_lb_policies`.
const Set<String> _googleNetworkServicesServiceLbPoliciesSensitive = <String>{};

/// Network Services Service Lb Policies Load Balancing enum for `load_balancing_algorithm`.
enum NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm
    implements TerraformEnum {
  sprayToRegion('SPRAY_TO_REGION'),
  sprayToWorld('SPRAY_TO_WORLD'),
  waterfallByRegion('WATERFALL_BY_REGION'),
  waterfallByZone('WATERFALL_BY_ZONE');

  const NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `auto_capacity_drain` block of
/// `google_network_services_service_lb_policies` (derived from provider schema).
@immutable
final class NetworkServicesServiceLbPoliciesAutoCapacityDrain {
  const NetworkServicesServiceLbPoliciesAutoCapacityDrain({this.enable});

  final TfArg<bool>? enable;

  Map<String, Object?> encode() => {'enable': ?enable?.toTfJson()};
}

/// Typed helper for the `failover_config` block of
/// `google_network_services_service_lb_policies` (derived from provider schema).
@immutable
final class NetworkServicesServiceLbPoliciesFailoverConfig {
  const NetworkServicesServiceLbPoliciesFailoverConfig({
    required this.failoverHealthThreshold,
  });

  final TfArg<num> failoverHealthThreshold;

  Map<String, Object?> encode() => {
    'failover_health_threshold': failoverHealthThreshold.toTfJson(),
  };
}

/// Typed helper for the `isolation_config` block of
/// `google_network_services_service_lb_policies` (derived from provider schema).
@immutable
final class NetworkServicesServiceLbPoliciesIsolationConfig {
  const NetworkServicesServiceLbPoliciesIsolationConfig({
    this.isolationGranularity,
    this.isolationMode,
  });

  final TfArg<
    NetworkServicesServiceLbPoliciesIsolationConfigIsolationGranularity
  >?
  isolationGranularity;

  final TfArg<NetworkServicesServiceLbPoliciesIsolationConfigIsolationMode>?
  isolationMode;

  Map<String, Object?> encode() => {
    'isolation_granularity': ?isolationGranularity?.toTfJson(),
    'isolation_mode': ?isolationMode?.toTfJson(),
  };
}

/// `isolation_granularity` — derived from the provider schema description.
enum NetworkServicesServiceLbPoliciesIsolationConfigIsolationGranularity
    implements TerraformEnum {
  isolationGranularityUnspecified('ISOLATION_GRANULARITY_UNSPECIFIED'),
  region('REGION');

  const NetworkServicesServiceLbPoliciesIsolationConfigIsolationGranularity(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `isolation_mode` — derived from the provider schema description.
enum NetworkServicesServiceLbPoliciesIsolationConfigIsolationMode
    implements TerraformEnum {
  isolationModeUnspecified('ISOLATION_MODE_UNSPECIFIED'),
  nearest('NEAREST'),
  strict('STRICT');

  const NetworkServicesServiceLbPoliciesIsolationConfigIsolationMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_network_services_service_lb_policies`.
///
/// ServiceLbPolicy holds global load balancing and traffic distribution
/// configuration that can be applied to a BackendService.
final class GoogleNetworkServicesServiceLbPolicies extends Resource {
  static const String tfType = 'google_network_services_service_lb_policies';

  GoogleNetworkServicesServiceLbPolicies({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm>?
    loadBalancingAlgorithm,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    NetworkServicesServiceLbPoliciesAutoCapacityDrain? autoCapacityDrain,
    NetworkServicesServiceLbPoliciesFailoverConfig? failoverConfig,
    NetworkServicesServiceLbPoliciesIsolationConfig? isolationConfig,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'labels': ?labels,
           'load_balancing_algorithm': ?loadBalancingAlgorithm,
           'location': location,
           'name': name,
           'project': ?project,
           if (autoCapacityDrain != null)
             'auto_capacity_drain': TfArg.literal(autoCapacityDrain.encode()),
           if (failoverConfig != null)
             'failover_config': TfArg.literal(failoverConfig.encode()),
           if (isolationConfig != null)
             'isolation_config': TfArg.literal(isolationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesServiceLbPoliciesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesServiceLbPolicies>`.
  RefTo<GoogleNetworkServicesServiceLbPolicies> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
