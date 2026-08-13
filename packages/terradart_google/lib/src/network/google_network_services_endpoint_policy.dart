// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_endpoint_policy`.
const Set<String> _googleNetworkServicesEndpointPolicySensitive = <String>{};

/// Network Services Endpoint Policy enum for `type`.
enum NetworkServicesEndpointPolicyType implements TerraformEnum {
  sidecarProxy('SIDECAR_PROXY'),
  grpcServer('GRPC_SERVER');

  const NetworkServicesEndpointPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `endpoint_matcher` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyEndpointMatcher {
  const NetworkServicesEndpointPolicyEndpointMatcher({
    required this.metadataLabelMatcher,
  });

  final NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcher
  metadataLabelMatcher;

  Map<String, Object?> encode() => {
    'metadata_label_matcher': metadataLabelMatcher.encode(),
  };
}

/// Typed helper for the `endpoint_matcher.metadata_label_matcher` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcher {
  const NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcher({
    required this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  final TfArg<
    NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria
  >
  metadataLabelMatchCriteria;

  final List<
    NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabels
  >?
  metadataLabels;

  Map<String, Object?> encode() => {
    'metadata_label_match_criteria': metadataLabelMatchCriteria.toTfJson(),
    if (metadataLabels != null)
      'metadata_labels': [for (final e in metadataLabels!) e.encode()],
  };
}

/// `metadata_label_match_criteria` — derived from the provider schema description.
enum NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria
    implements TerraformEnum {
  matchAny('MATCH_ANY'),
  matchAll('MATCH_ALL');

  const NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `endpoint_matcher.metadata_label_matcher.metadata_labels` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabels {
  const NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabels({
    required this.labelName,
    required this.labelValue,
  });

  final TfArg<String> labelName;

  final TfArg<String> labelValue;

  Map<String, Object?> encode() => {
    'label_name': labelName.toTfJson(),
    'label_value': labelValue.toTfJson(),
  };
}

/// Typed helper for the `traffic_port_selector` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyTrafficPortSelector {
  const NetworkServicesEndpointPolicyTrafficPortSelector({required this.ports});

  final TfArg<List<Object?>> ports;

  Map<String, Object?> encode() => {'ports': ports.toTfJson()};
}

/// Factory wrapper for `google_network_services_endpoint_policy`.
///
/// EndpointPolicy is a resource that helps apply desired configuration on the
/// endpoints that match specific criteria.
///
/// Cloud Service Mesh **endpoint policy** — matcher that selects sidecar
/// / proxyless endpoints (`SIDECAR_PROXY` or `GRPC_SERVER`) via xDS
/// node metadata labels.
///
/// Creating a policy does not attach workloads. Anthos Service Mesh
/// cluster/endpoint SKUs and Traffic Director Endpoint
/// (`7573-35C8-9ADC`) bill when endpoints join, not for this config
/// object.
final class GoogleNetworkServicesEndpointPolicy extends Resource {
  static const String tfType = 'google_network_services_endpoint_policy';

  GoogleNetworkServicesEndpointPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<NetworkServicesEndpointPolicyType> type,
    required NetworkServicesEndpointPolicyEndpointMatcher endpointMatcher,
    NetworkServicesEndpointPolicyTrafficPortSelector? trafficPortSelector,
    TfArg<String>? authorizationPolicy,
    TfArg<String>? clientTlsPolicy,
    TfArg<String>? serverTlsPolicy,
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
           'type': type,
           'endpoint_matcher': TfArg.literal(endpointMatcher.encode()),
           if (trafficPortSelector != null)
             'traffic_port_selector': TfArg.literal(
               trafficPortSelector.encode(),
             ),
           if (authorizationPolicy != null)
             'authorization_policy': authorizationPolicy,
           if (clientTlsPolicy != null) 'client_tls_policy': clientTlsPolicy,
           if (serverTlsPolicy != null) 'server_tls_policy': serverTlsPolicy,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesEndpointPolicySensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
