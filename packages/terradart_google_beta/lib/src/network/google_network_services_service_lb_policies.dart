// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_service_lb_policies`.
const Set<String> _googleNetworkServicesServiceLbPoliciesSensitive = <String>{};

/// Network Services Service Lb Policies Load Balancing enum for `load_balancing_algorithm`.
extension type const NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sprayToRegion =
      NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm._(
        TfArgLiteral('SPRAY_TO_REGION'),
      );
  static const sprayToWorld =
      NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm._(
        TfArgLiteral('SPRAY_TO_WORLD'),
      );
  static const waterfallByRegion =
      NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm._(
        TfArgLiteral('WATERFALL_BY_REGION'),
      );
  static const waterfallByZone =
      NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm._(
        TfArgLiteral('WATERFALL_BY_ZONE'),
      );

  static const List<NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm>
  values = [sprayToRegion, sprayToWorld, waterfallByRegion, waterfallByZone];
}

/// Typed helper for the `auto_capacity_drain` block of
/// `google_network_services_service_lb_policies` (derived from provider schema).
@immutable
final class NetworkServicesServiceLbPoliciesAutoCapacityDrain {
  const NetworkServicesServiceLbPoliciesAutoCapacityDrain({this.enable});

  final TfArg<bool>? enable;

  @internal
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

  @internal
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

  final NetworkServicesServiceLbPoliciesIsolationGranularity?
  isolationGranularity;

  final NetworkServicesServiceLbPoliciesIsolationMode? isolationMode;

  @internal
  Map<String, Object?> encode() => {
    'isolation_granularity': ?isolationGranularity?.toTfJson(),
    'isolation_mode': ?isolationMode?.toTfJson(),
  };
}

/// `isolation_granularity` — derived from the provider schema description.
extension type const NetworkServicesServiceLbPoliciesIsolationGranularity._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesServiceLbPoliciesIsolationGranularity.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesServiceLbPoliciesIsolationGranularity.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkServicesServiceLbPoliciesIsolationGranularity.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const isolationGranularityUnspecified =
      NetworkServicesServiceLbPoliciesIsolationGranularity._(
        TfArgLiteral('ISOLATION_GRANULARITY_UNSPECIFIED'),
      );
  static const region = NetworkServicesServiceLbPoliciesIsolationGranularity._(
    TfArgLiteral('REGION'),
  );

  static const List<NetworkServicesServiceLbPoliciesIsolationGranularity>
  values = [isolationGranularityUnspecified, region];
}

/// `isolation_mode` — derived from the provider schema description.
extension type const NetworkServicesServiceLbPoliciesIsolationMode._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesServiceLbPoliciesIsolationMode.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesServiceLbPoliciesIsolationMode.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesServiceLbPoliciesIsolationMode.arg(TfArg<String> arg)
    : this._(arg);

  static const isolationModeUnspecified =
      NetworkServicesServiceLbPoliciesIsolationMode._(
        TfArgLiteral('ISOLATION_MODE_UNSPECIFIED'),
      );
  static const nearest = NetworkServicesServiceLbPoliciesIsolationMode._(
    TfArgLiteral('NEAREST'),
  );
  static const strict = NetworkServicesServiceLbPoliciesIsolationMode._(
    TfArgLiteral('STRICT'),
  );

  static const List<NetworkServicesServiceLbPoliciesIsolationMode> values = [
    isolationModeUnspecified,
    nearest,
    strict,
  ];
}

/// Factory wrapper for `google_network_services_service_lb_policies`.
///
/// ServiceLbPolicy holds global load balancing and traffic distribution
/// configuration that can be applied to a BackendService.
final class GoogleNetworkServicesServiceLbPolicies extends Resource {
  static const String tfType = 'google_network_services_service_lb_policies';

  GoogleNetworkServicesServiceLbPolicies(
    super.localName, {
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    NetworkServicesServiceLbPoliciesLoadBalancingAlgorithm?
    loadBalancingAlgorithm,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    NetworkServicesServiceLbPoliciesAutoCapacityDrain? autoCapacityDrain,
    NetworkServicesServiceLbPoliciesFailoverConfig? failoverConfig,
    NetworkServicesServiceLbPoliciesIsolationConfig? isolationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
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

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesServiceLbPolicies>`.
  RefTo<GoogleNetworkServicesServiceLbPolicies> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `load_balancing_algorithm` attribute.
  TfRef<String> get loadBalancingAlgorithm =>
      TfRef.attribute<String>(this, 'load_balancing_algorithm');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
