// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_eks_addon`.
const Set<String> _awsEksAddonSensitive = <String>{};

/// Eks Addon Resolve Conflicts On enum for `resolve_conflicts_on_create`.
enum EksAddonResolveConflictsOnCreate implements TerraformEnum {
  none('NONE'),
  overwrite('OVERWRITE');

  const EksAddonResolveConflictsOnCreate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Eks Addon Resolve Conflicts On enum for `resolve_conflicts_on_update`.
enum EksAddonResolveConflictsOnUpdate implements TerraformEnum {
  overwrite('OVERWRITE'),
  none('NONE'),
  preserve('PRESERVE');

  const EksAddonResolveConflictsOnUpdate(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `namespace_config` block of
/// `aws_eks_addon` (derived from provider schema).
@immutable
final class EksAddonNamespaceConfig {
  const EksAddonNamespaceConfig({this.namespace});

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {'namespace': ?namespace?.toTfJson()};
}

/// Typed helper for the `pod_identity_association` block of
/// `aws_eks_addon` (derived from provider schema).
@immutable
final class EksAddonPodIdentityAssociation {
  const EksAddonPodIdentityAssociation({
    required this.roleArn,
    required this.serviceAccount,
  });

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'service_account': serviceAccount.toTfJson(),
  };
}

/// Factory wrapper for `aws_eks_addon`.
final class AwsEksAddon extends Resource {
  static const String tfType = 'aws_eks_addon';

  AwsEksAddon({
    required super.localName,
    required TfArg<String> addonName,
    TfArg<String>? addonVersion,
    required TfArg<String> clusterName,
    TfArg<String>? configurationValues,
    TfArg<bool>? preserve,
    TfArg<String>? region,
    TfArg<EksAddonResolveConflictsOnCreate>? resolveConflictsOnCreate,
    TfArg<EksAddonResolveConflictsOnUpdate>? resolveConflictsOnUpdate,
    TfArg<String>? serviceAccountRoleArn,
    TfArg<Map<String, String>>? tags,
    EksAddonNamespaceConfig? namespaceConfig,
    List<EksAddonPodIdentityAssociation>? podIdentityAssociation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'addon_name': addonName,
           'addon_version': ?addonVersion,
           'cluster_name': clusterName,
           'configuration_values': ?configurationValues,
           'preserve': ?preserve,
           'region': ?region,
           'resolve_conflicts_on_create': ?resolveConflictsOnCreate,
           'resolve_conflicts_on_update': ?resolveConflictsOnUpdate,
           'service_account_role_arn': ?serviceAccountRoleArn,
           'tags': ?tags,
           if (namespaceConfig != null)
             'namespace_config': TfArg.literal(namespaceConfig.encode()),
           if (podIdentityAssociation != null)
             'pod_identity_association': TfArg.literal([
               for (final e in podIdentityAssociation) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEksAddonSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEksAddon>`.
  RefTo<AwsEksAddon> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
