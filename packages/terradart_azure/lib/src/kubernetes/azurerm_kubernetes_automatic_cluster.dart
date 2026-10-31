// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kubernetes_automatic_cluster`.
const Set<String> _azurermKubernetesAutomaticClusterSensitive = <String>{
  'kube_config',
  'kube_config_raw',
};

/// Typed helper for the `api_server_access` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterApiServerAccess {
  const KubernetesAutomaticClusterApiServerAccess({
    this.authorizedIpRanges,
    this.subnetId,
  });

  final TfArg<List<String>>? authorizedIpRanges;

  final TfArg<String>? subnetId;

  @internal
  Map<String, Object?> encode() => {
    'authorized_ip_ranges': ?authorizedIpRanges?.toTfJson(),
    'subnet_id': ?subnetId?.toTfJson(),
  };
}

/// Typed helper for the `hosted_system` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterHostedSystem {
  const KubernetesAutomaticClusterHostedSystem({
    required this.nodeSubnetId,
    required this.systemNodeSubnetId,
  });

  final TfArg<String> nodeSubnetId;

  final TfArg<String> systemNodeSubnetId;

  @internal
  Map<String, Object?> encode() => {
    'node_subnet_id': nodeSubnetId.toTfJson(),
    'system_node_subnet_id': systemNodeSubnetId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterIdentity {
  const KubernetesAutomaticClusterIdentity({
    this.identityIds,
    required this.type,
  });

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `private_cluster` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterPrivateCluster {
  const KubernetesAutomaticClusterPrivateCluster({
    this.privateDnsZoneId,
    this.publicFullyQualifiedDomainNameEnabled,
  });

  final TfArg<String>? privateDnsZoneId;

  final TfArg<bool>? publicFullyQualifiedDomainNameEnabled;

  @internal
  Map<String, Object?> encode() => {
    'private_dns_zone_id': ?privateDnsZoneId?.toTfJson(),
    'public_fully_qualified_domain_name_enabled':
        ?publicFullyQualifiedDomainNameEnabled?.toTfJson(),
  };
}

/// Typed helper for the `service_mesh` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterServiceMesh {
  const KubernetesAutomaticClusterServiceMesh({
    this.externalIngressGatewayEnabled,
    this.internalIngressGatewayEnabled,
    this.proxyRedirectMechanism,
    required this.revisions,
    this.certificateAuthority,
  });

  final TfArg<bool>? externalIngressGatewayEnabled;

  final TfArg<bool>? internalIngressGatewayEnabled;

  final KubernetesAutomaticClusterProxyRedirectMechanism?
  proxyRedirectMechanism;

  final TfArg<List<String>> revisions;

  final KubernetesAutomaticClusterCertificateAuthority? certificateAuthority;

  @internal
  Map<String, Object?> encode() => {
    'external_ingress_gateway_enabled': ?externalIngressGatewayEnabled
        ?.toTfJson(),
    'internal_ingress_gateway_enabled': ?internalIngressGatewayEnabled
        ?.toTfJson(),
    'proxy_redirect_mechanism': ?proxyRedirectMechanism?.toTfJson(),
    'revisions': revisions.toTfJson(),
    'certificate_authority': ?certificateAuthority?.encode(),
  };
}

/// `proxy_redirect_mechanism` — derived from the provider schema description.
extension type const KubernetesAutomaticClusterProxyRedirectMechanism._(
  TfArg<String> _
) implements TfArg<String> {
  KubernetesAutomaticClusterProxyRedirectMechanism.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesAutomaticClusterProxyRedirectMechanism.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesAutomaticClusterProxyRedirectMechanism.arg(TfArg<String> arg)
    : this._(arg);

  static const cnichaining = KubernetesAutomaticClusterProxyRedirectMechanism._(
    TfArgLiteral('CNIChaining'),
  );
  static const initcontainers =
      KubernetesAutomaticClusterProxyRedirectMechanism._(
        TfArgLiteral('InitContainers'),
      );

  static const List<KubernetesAutomaticClusterProxyRedirectMechanism> values = [
    cnichaining,
    initcontainers,
  ];
}

/// Typed helper for the `service_mesh.certificate_authority` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterCertificateAuthority {
  const KubernetesAutomaticClusterCertificateAuthority({
    required this.certificateChainObjectName,
    required this.certificateObjectName,
    required this.keyObjectName,
    required this.keyVaultId,
    required this.rootCertificateObjectName,
  });

  final TfArg<String> certificateChainObjectName;

  final TfArg<String> certificateObjectName;

  final TfArg<String> keyObjectName;

  final TfArg<String> keyVaultId;

  final TfArg<String> rootCertificateObjectName;

  @internal
  Map<String, Object?> encode() => {
    'certificate_chain_object_name': certificateChainObjectName.toTfJson(),
    'certificate_object_name': certificateObjectName.toTfJson(),
    'key_object_name': keyObjectName.toTfJson(),
    'key_vault_id': keyVaultId.toTfJson(),
    'root_certificate_object_name': rootCertificateObjectName.toTfJson(),
  };
}

/// Typed helper for the `web_app_routing_ingress` block of
/// `azurerm_kubernetes_automatic_cluster` (derived from provider schema).
@immutable
final class KubernetesAutomaticClusterWebAppRoutingIngress {
  const KubernetesAutomaticClusterWebAppRoutingIngress({
    this.defaultNginxController,
    this.dnsZoneIds,
    this.istioEnabled,
  });

  final KubernetesAutomaticClusterDefaultNginxController?
  defaultNginxController;

  final TfArg<List<String>>? dnsZoneIds;

  final TfArg<bool>? istioEnabled;

  @internal
  Map<String, Object?> encode() => {
    'default_nginx_controller': ?defaultNginxController?.toTfJson(),
    'dns_zone_ids': ?dnsZoneIds?.toTfJson(),
    'istio_enabled': ?istioEnabled?.toTfJson(),
  };
}

/// `default_nginx_controller` — derived from the provider schema description.
extension type const KubernetesAutomaticClusterDefaultNginxController._(
  TfArg<String> _
) implements TfArg<String> {
  KubernetesAutomaticClusterDefaultNginxController.variable(String name)
    : this._(TfArg.variable(name));
  KubernetesAutomaticClusterDefaultNginxController.expression(String template)
    : this._(TfArg.expression(template));
  const KubernetesAutomaticClusterDefaultNginxController.arg(TfArg<String> arg)
    : this._(arg);

  static const annotationcontrolled =
      KubernetesAutomaticClusterDefaultNginxController._(
        TfArgLiteral('AnnotationControlled'),
      );
  static const internal = KubernetesAutomaticClusterDefaultNginxController._(
    TfArgLiteral('Internal'),
  );
  static const external = KubernetesAutomaticClusterDefaultNginxController._(
    TfArgLiteral('External'),
  );

  static const List<KubernetesAutomaticClusterDefaultNginxController> values = [
    annotationcontrolled,
    internal,
    external,
  ];
}

/// Factory wrapper for `azurerm_kubernetes_automatic_cluster`.
final class AzurermKubernetesAutomaticCluster extends Resource {
  static const String tfType = 'azurerm_kubernetes_automatic_cluster';

  AzurermKubernetesAutomaticCluster(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    KubernetesAutomaticClusterApiServerAccess? apiServerAccess,
    KubernetesAutomaticClusterHostedSystem? hostedSystem,
    required KubernetesAutomaticClusterIdentity identity,
    KubernetesAutomaticClusterPrivateCluster? privateCluster,
    KubernetesAutomaticClusterServiceMesh? serviceMesh,
    KubernetesAutomaticClusterWebAppRoutingIngress? webAppRoutingIngress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (apiServerAccess != null)
             'api_server_access': TfArg.literal(apiServerAccess.encode()),
           if (hostedSystem != null)
             'hosted_system': TfArg.literal(hostedSystem.encode()),
           'identity': TfArg.literal(identity.encode()),
           if (privateCluster != null)
             'private_cluster': TfArg.literal(privateCluster.encode()),
           if (serviceMesh != null)
             'service_mesh': TfArg.literal(serviceMesh.encode()),
           if (webAppRoutingIngress != null)
             'web_app_routing_ingress': TfArg.literal(
               webAppRoutingIngress.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermKubernetesAutomaticClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKubernetesAutomaticCluster>`.
  RefTo<AzurermKubernetesAutomaticCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `current_kubernetes_version` attribute.
  TfRef<String> get currentKubernetesVersion =>
      TfRef.attribute<String>(this, 'current_kubernetes_version');

  /// Reference to `fully_qualified_domain_name` attribute.
  TfRef<String> get fullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'fully_qualified_domain_name');

  /// Reference to `kube_config` attribute.
  TfRef<List<Map<String, Object?>>> get kubeConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kube_config');

  /// Reference to `kube_config_raw` attribute.
  TfRef<String> get kubeConfigRaw =>
      TfRef.attribute<String>(this, 'kube_config_raw');

  /// Reference to `node_resource_group_id` attribute.
  TfRef<String> get nodeResourceGroupId =>
      TfRef.attribute<String>(this, 'node_resource_group_id');

  /// Reference to `oidc_issuer_url` attribute.
  TfRef<String> get oidcIssuerUrl =>
      TfRef.attribute<String>(this, 'oidc_issuer_url');

  /// Reference to `portal_fully_qualified_domain_name` attribute.
  TfRef<String> get portalFullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'portal_fully_qualified_domain_name');

  /// Reference to `private_fully_qualified_domain_name` attribute.
  TfRef<String> get privateFullyQualifiedDomainName =>
      TfRef.attribute<String>(this, 'private_fully_qualified_domain_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
