// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_eks_capability`.
const Set<String> _awsEksCapabilitySensitive = <String>{};

/// Eks Capability Delete Propagation enum for `delete_propagation_policy`.
enum EksCapabilityDeletePropagationPolicy implements TerraformEnum {
  retain('RETAIN');

  const EksCapabilityDeletePropagationPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Eks Capability enum for `type`.
enum EksCapabilityType implements TerraformEnum {
  ack('ACK'),
  kro('KRO'),
  argocd('ARGOCD');

  const EksCapabilityType(this.terraformValue);
  @override
  final String terraformValue;
}

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
    'namespace': ?namespace?.toTfJson(),
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
    'idc_region': ?idcRegion?.toTfJson(),
  };
}

/// Typed helper for the `configuration.argo_cd.network_access` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCdNetworkAccess {
  const EksCapabilityConfigurationArgoCdNetworkAccess({this.vpceIds});

  final TfArg<List<String>>? vpceIds;

  Map<String, Object?> encode() => {'vpce_ids': ?vpceIds?.toTfJson()};
}

/// Typed helper for the `configuration.argo_cd.rbac_role_mapping` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfigurationArgoCdRbacRoleMapping {
  const EksCapabilityConfigurationArgoCdRbacRoleMapping({
    required this.role,
    this.identity,
  });

  final TfArg<EksCapabilityConfigurationArgoCdRbacRoleMappingRole> role;

  final List<EksCapabilityConfigurationArgoCdRbacRoleMappingIdentity>? identity;

  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (identity != null) 'identity': [for (final e in identity!) e.encode()],
  };
}

/// `role` — derived from the provider schema description.
enum EksCapabilityConfigurationArgoCdRbacRoleMappingRole
    implements TerraformEnum {
  admin('ADMIN'),
  editor('EDITOR'),
  viewer('VIEWER');

  const EksCapabilityConfigurationArgoCdRbacRoleMappingRole(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<EksCapabilityConfigurationArgoCdRbacRoleMappingIdentityType> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum EksCapabilityConfigurationArgoCdRbacRoleMappingIdentityType
    implements TerraformEnum {
  ssoUser('SSO_USER'),
  ssoGroup('SSO_GROUP');

  const EksCapabilityConfigurationArgoCdRbacRoleMappingIdentityType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_eks_capability`.
final class AwsEksCapability extends Resource {
  static const String tfType = 'aws_eks_capability';

  AwsEksCapability({
    required super.localName,
    required TfArg<String> capabilityName,
    required TfArg<String> clusterName,
    required TfArg<EksCapabilityDeletePropagationPolicy>
    deletePropagationPolicy,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required TfArg<EksCapabilityType> type,
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
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'type': type,
           if (configuration != null)
             'configuration': TfArg.literal([
               for (final e in configuration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksCapabilitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksCapability>`.
  RefTo<AwsEksCapability> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');

  /// Reference to `capability_name` attribute.
  TfRef<String> get capabilityNameRef =>
      TfRef.attribute<String>(this, 'capability_name');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterNameRef =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `delete_propagation_policy` attribute.
  TfRef<String> get deletePropagationPolicyRef =>
      TfRef.attribute<String>(this, 'delete_propagation_policy');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
