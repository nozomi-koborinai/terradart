// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_service_lb_policies`.
const Set<String> _googleNetworkServicesServiceLbPoliciesSensitive = <String>{};

/// Factory wrapper for `google_network_services_service_lb_policies`.
final class GoogleNetworkServicesServiceLbPolicies extends Resource {
  static const String tfType = 'google_network_services_service_lb_policies';

  GoogleNetworkServicesServiceLbPolicies({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? loadBalancingAlgorithm,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? autoCapacityDrain,
    TfArg<Map<String, dynamic>>? failoverConfig,
    TfArg<Map<String, dynamic>>? isolationConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (loadBalancingAlgorithm != null)
             'load_balancing_algorithm': loadBalancingAlgorithm,
           'location': location,
           'name': name,
           if (project != null) 'project': project,
           if (autoCapacityDrain != null)
             'auto_capacity_drain': autoCapacityDrain,
           if (failoverConfig != null) 'failover_config': failoverConfig,
           if (isolationConfig != null) 'isolation_config': isolationConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesServiceLbPoliciesSensitive;
}
