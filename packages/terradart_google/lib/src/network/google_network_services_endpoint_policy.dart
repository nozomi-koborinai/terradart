// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_services_endpoint_policy`.
const Set<String> _googleNetworkServicesEndpointPolicySensitive = <String>{};

/// Network Services Endpoint Policy enum for `type`.
extension type const NetworkServicesEndpointPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  NetworkServicesEndpointPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesEndpointPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const NetworkServicesEndpointPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const sidecarProxy = NetworkServicesEndpointPolicyType._(
    TfArgLiteral('SIDECAR_PROXY'),
  );
  static const grpcServer = NetworkServicesEndpointPolicyType._(
    TfArgLiteral('GRPC_SERVER'),
  );

  static const List<NetworkServicesEndpointPolicyType> values = [
    sidecarProxy,
    grpcServer,
  ];
}

/// Typed helper for the `endpoint_matcher` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyEndpointMatcher {
  const NetworkServicesEndpointPolicyEndpointMatcher({
    required this.metadataLabelMatcher,
  });

  final NetworkServicesEndpointPolicyMetadataLabelMatcher metadataLabelMatcher;

  @internal
  Map<String, Object?> encode() => {
    'metadata_label_matcher': metadataLabelMatcher.encode(),
  };
}

/// Typed helper for the `endpoint_matcher.metadata_label_matcher` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyMetadataLabelMatcher {
  const NetworkServicesEndpointPolicyMetadataLabelMatcher({
    required this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  final NetworkServicesEndpointPolicyMetadataLabelMatchCriteria
  metadataLabelMatchCriteria;

  final List<NetworkServicesEndpointPolicyMetadataLabels>? metadataLabels;

  @internal
  Map<String, Object?> encode() => {
    'metadata_label_match_criteria': metadataLabelMatchCriteria.toTfJson(),
    if (metadataLabels != null)
      'metadata_labels': [for (final e in metadataLabels!) e.encode()],
  };
}

/// `metadata_label_match_criteria` — derived from the provider schema description.
extension type const NetworkServicesEndpointPolicyMetadataLabelMatchCriteria._(
  TfArg<String> _
) implements TfArg<String> {
  NetworkServicesEndpointPolicyMetadataLabelMatchCriteria.variable(String name)
    : this._(TfArg.variable(name));
  NetworkServicesEndpointPolicyMetadataLabelMatchCriteria.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetworkServicesEndpointPolicyMetadataLabelMatchCriteria.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const matchAny =
      NetworkServicesEndpointPolicyMetadataLabelMatchCriteria._(
        TfArgLiteral('MATCH_ANY'),
      );
  static const matchAll =
      NetworkServicesEndpointPolicyMetadataLabelMatchCriteria._(
        TfArgLiteral('MATCH_ALL'),
      );

  static const List<NetworkServicesEndpointPolicyMetadataLabelMatchCriteria>
  values = [matchAny, matchAll];
}

/// Typed helper for the `endpoint_matcher.metadata_label_matcher.metadata_labels` block of
/// `google_network_services_endpoint_policy` (derived from provider schema).
@immutable
final class NetworkServicesEndpointPolicyMetadataLabels {
  const NetworkServicesEndpointPolicyMetadataLabels({
    required this.labelName,
    required this.labelValue,
  });

  final TfArg<String> labelName;

  final TfArg<String> labelValue;

  @internal
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

  final TfArg<List<String>> ports;

  @internal
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

  GoogleNetworkServicesEndpointPolicy(
    super.localName, {
    required TfArg<String> name,
    required NetworkServicesEndpointPolicyType type,
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
    super.provider,
    super.timeouts,
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
           'authorization_policy': ?authorizationPolicy,
           'client_tls_policy': ?clientTlsPolicy,
           'server_tls_policy': ?serverTlsPolicy,
           'description': ?description,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkServicesEndpointPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkServicesEndpointPolicy>`.
  RefTo<GoogleNetworkServicesEndpointPolicy> get ref => RefTo.of(this);

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

  /// Reference to `authorization_policy` attribute.
  TfRef<String> get authorizationPolicy =>
      TfRef.attribute<String>(this, 'authorization_policy');

  /// Reference to `client_tls_policy` attribute.
  TfRef<String> get clientTlsPolicy =>
      TfRef.attribute<String>(this, 'client_tls_policy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `server_tls_policy` attribute.
  TfRef<String> get serverTlsPolicy =>
      TfRef.attribute<String>(this, 'server_tls_policy');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
