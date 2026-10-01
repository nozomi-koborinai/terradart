// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_eks_capability`.
const Set<String> _awsEksCapabilitySensitive = <String>{};

/// Eks Capability Delete Propagation enum for `delete_propagation_policy`.
extension type const EksCapabilityDeletePropagationPolicy._(TfArg<String> _)
    implements TfArg<String> {
  EksCapabilityDeletePropagationPolicy.variable(String name)
    : this._(TfArg.variable(name));
  EksCapabilityDeletePropagationPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const EksCapabilityDeletePropagationPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const retain = EksCapabilityDeletePropagationPolicy._(
    TfArgLiteral('RETAIN'),
  );

  static const List<EksCapabilityDeletePropagationPolicy> values = [retain];
}

/// Eks Capability enum for `type`.
extension type const EksCapabilityType._(TfArg<String> _)
    implements TfArg<String> {
  EksCapabilityType.variable(String name) : this._(TfArg.variable(name));
  EksCapabilityType.expression(String template)
    : this._(TfArg.expression(template));
  const EksCapabilityType.arg(TfArg<String> arg) : this._(arg);

  static const ack = EksCapabilityType._(TfArgLiteral('ACK'));
  static const kro = EksCapabilityType._(TfArgLiteral('KRO'));
  static const argocd = EksCapabilityType._(TfArgLiteral('ARGOCD'));

  static const List<EksCapabilityType> values = [ack, kro, argocd];
}

/// Typed helper for the `configuration` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityConfiguration {
  const EksCapabilityConfiguration({this.argoCd});

  final List<EksCapabilityArgoCd>? argoCd;

  @internal
  Map<String, Object?> encode() => {
    if (argoCd != null) 'argo_cd': [for (final e in argoCd!) e.encode()],
  };
}

/// Typed helper for the `configuration.argo_cd` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityArgoCd {
  const EksCapabilityArgoCd({
    this.namespace,
    this.awsIdc,
    this.networkAccess,
    this.rbacRoleMapping,
  });

  final TfArg<String>? namespace;

  final List<EksCapabilityAwsIdc>? awsIdc;

  final List<EksCapabilityNetworkAccess>? networkAccess;

  final List<EksCapabilityRbacRoleMapping>? rbacRoleMapping;

  @internal
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
final class EksCapabilityAwsIdc {
  const EksCapabilityAwsIdc({required this.idcInstanceArn, this.idcRegion});

  final TfArg<String> idcInstanceArn;

  final TfArg<String>? idcRegion;

  @internal
  Map<String, Object?> encode() => {
    'idc_instance_arn': idcInstanceArn.toTfJson(),
    'idc_region': ?idcRegion?.toTfJson(),
  };
}

/// Typed helper for the `configuration.argo_cd.network_access` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityNetworkAccess {
  const EksCapabilityNetworkAccess({this.vpceIds});

  final TfArg<List<String>>? vpceIds;

  @internal
  Map<String, Object?> encode() => {'vpce_ids': ?vpceIds?.toTfJson()};
}

/// Typed helper for the `configuration.argo_cd.rbac_role_mapping` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityRbacRoleMapping {
  const EksCapabilityRbacRoleMapping({required this.role, this.identity});

  final EksCapabilityRole role;

  final List<EksCapabilityIdentity>? identity;

  @internal
  Map<String, Object?> encode() => {
    'role': role.toTfJson(),
    if (identity != null) 'identity': [for (final e in identity!) e.encode()],
  };
}

/// `role` — derived from the provider schema description.
extension type const EksCapabilityRole._(TfArg<String> _)
    implements TfArg<String> {
  EksCapabilityRole.variable(String name) : this._(TfArg.variable(name));
  EksCapabilityRole.expression(String template)
    : this._(TfArg.expression(template));
  const EksCapabilityRole.arg(TfArg<String> arg) : this._(arg);

  static const admin = EksCapabilityRole._(TfArgLiteral('ADMIN'));
  static const editor = EksCapabilityRole._(TfArgLiteral('EDITOR'));
  static const viewer = EksCapabilityRole._(TfArgLiteral('VIEWER'));

  static const List<EksCapabilityRole> values = [admin, editor, viewer];
}

/// Typed helper for the `configuration.argo_cd.rbac_role_mapping.identity` block of
/// `aws_eks_capability` (derived from provider schema).
@immutable
final class EksCapabilityIdentity {
  const EksCapabilityIdentity({required this.id, required this.type});

  final TfArg<String> id;

  final EksCapabilityIdentityType type;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const EksCapabilityIdentityType._(TfArg<String> _)
    implements TfArg<String> {
  EksCapabilityIdentityType.variable(String name)
    : this._(TfArg.variable(name));
  EksCapabilityIdentityType.expression(String template)
    : this._(TfArg.expression(template));
  const EksCapabilityIdentityType.arg(TfArg<String> arg) : this._(arg);

  static const ssoUser = EksCapabilityIdentityType._(TfArgLiteral('SSO_USER'));
  static const ssoGroup = EksCapabilityIdentityType._(
    TfArgLiteral('SSO_GROUP'),
  );

  static const List<EksCapabilityIdentityType> values = [ssoUser, ssoGroup];
}

/// Factory wrapper for `aws_eks_capability`.
final class AwsEksCapability extends Resource {
  static const String tfType = 'aws_eks_capability';

  AwsEksCapability(
    super.localName, {
    required TfArg<String> capabilityName,
    required TfArg<String> clusterName,
    required EksCapabilityDeletePropagationPolicy deletePropagationPolicy,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required EksCapabilityType type,
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
  TfRef<String> get capabilityName =>
      TfRef.attribute<String>(this, 'capability_name');

  /// Reference to `cluster_name` attribute.
  TfRef<String> get clusterName =>
      TfRef.attribute<String>(this, 'cluster_name');

  /// Reference to `delete_propagation_policy` attribute.
  TfRef<String> get deletePropagationPolicy =>
      TfRef.attribute<String>(this, 'delete_propagation_policy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
