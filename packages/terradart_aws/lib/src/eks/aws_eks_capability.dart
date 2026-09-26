// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_capability`.
const Set<String> _awsEksCapabilitySensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfiguration {
  const EksCapabilityConfiguration({this.argoCd});

  final List<EksCapabilityConfigurationArgoCd>? argoCd;

  Map<String, Object?> encode() => {
    if (argoCd != null) 'argo_cd': [for (final e in argoCd!) e.encode()],
  };
}

/// Typed helper for the `configuration.argo_cd` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCd {
  const EksCapabilityConfigurationArgoCd({
    this.namespace,
    this.awsIdc,
    this.networkAccess,
    this.rbacRoleMapping,
  });

  final TfArg<String>? namespace;

  final List<EksCapabilityConfigurationArgoCdAwsIdc>? awsIdc;

  final List<EksCapabilityConfigurationArgoCdNetworkAccess>? networkAccess;

  final List<EksCapabilityConfigurationArgoCdRbacRoleMapping>? rbacRoleMapping;

  Map<String, Object?> encode() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
    if (awsIdc != null) 'aws_idc': [for (final e in awsIdc!) e.encode()],
    if (networkAccess != null)
      'network_access': [for (final e in networkAccess!) e.encode()],
    if (rbacRoleMapping != null)
      'rbac_role_mapping': [for (final e in rbacRoleMapping!) e.encode()],
  };
}

/// Typed helper for the `configuration.argo_cd.aws_idc` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCdAwsIdc {
  const EksCapabilityConfigurationArgoCdAwsIdc({
    required this.idcInstanceArn,
    this.idcRegion,
  });

  final TfArg<String> idcInstanceArn;

  final TfArg<String>? idcRegion;

  Map<String, Object?> encode() => {
    'idc_instance_arn': idcInstanceArn.toTfJson(),
    if (idcRegion != null) 'idc_region': idcRegion!.toTfJson(),
  };
}

/// Typed helper for the `configuration.argo_cd.network_access` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCdNetworkAccess {
  const EksCapabilityConfigurationArgoCdNetworkAccess({this.vpceIds});

  final TfArg<List<Object?>>? vpceIds;

  Map<String, Object?> encode() => {
    if (vpceIds != null) 'vpce_ids': vpceIds!.toTfJson(),
  };
}

/// Typed helper for the `configuration.argo_cd.rbac_role_mapping` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCdRbacRoleMapping {
  const EksCapabilityConfigurationArgoCdRbacRoleMapping({
    required this.role,
    this.identity,
  });

  final TfArg<String> role;

  final List<EksCapabilityConfigurationArgoCdRbacRoleMappingIdentity>? identity;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (identity != null) 'identity': [for (final e in identity!) e.encode()],
  };
}

/// Typed helper for the `configuration.argo_cd.rbac_role_mapping.identity` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCdRbacRoleMappingIdentity {
  const EksCapabilityConfigurationArgoCdRbacRoleMappingIdentity({
    required this.id,
    required this.type,
  });

  final TfArg<String> id;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_capability`.
final class AwsEksCapability extends Resource {
  static const String tfType = 'aws_eks_capability';

  AwsEksCapability({
    required super.localName,
    required TfArg<String> capabilityName,
    required TfArg<String> clusterName,
    required TfArg<String> deletePropagationPolicy,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    List<EksCapabilityConfiguration>? configuration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'capability_name': capabilityName,
           'cluster_name': clusterName,
           'delete_propagation_policy': deletePropagationPolicy,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'type': type,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksCapabilitySensitive;

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
