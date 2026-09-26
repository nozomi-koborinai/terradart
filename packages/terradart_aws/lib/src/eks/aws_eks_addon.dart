// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_eks_addon`.
const Set<String> _awsEksAddonSensitive = <String>{};

/// Typed helper for the `namespace_config` block of
/// `aws_eks_addon` (derived from provider schema).
@immutable
final class EksAddonNamespaceConfig {
  const EksAddonNamespaceConfig({this.namespace});

  final TfArg<String>? namespace;

  Map<String, Object?> encode() => {
    if (namespace != null) 'namespace': namespace!.toTfJson(),
  };
}

/// Typed helper for the `pod_identity_association` block of
/// `aws_eks_addon` (derived from provider schema).
@immutable
final class EksAddonPodIdentityAssociation {
  const EksAddonPodIdentityAssociation({
    required this.roleArn,
    required this.serviceAccount,
  });

  final TfArg<String> roleArn;

  final TfArg<String> serviceAccount;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
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
    TfArg<String>? resolveConflictsOnCreate,
    TfArg<String>? resolveConflictsOnUpdate,
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
           if (addonVersion != null) 'addon_version': addonVersion,
           'cluster_name': clusterName,
           if (configurationValues != null)
             'configuration_values': configurationValues,
           if (preserve != null) 'preserve': preserve,
           if (region != null) 'region': region,
           if (resolveConflictsOnCreate != null)
             'resolve_conflicts_on_create': resolveConflictsOnCreate,
           if (resolveConflictsOnUpdate != null)
             'resolve_conflicts_on_update': resolveConflictsOnUpdate,
           if (serviceAccountRoleArn != null)
             'service_account_role_arn': serviceAccountRoleArn,
           if (tags != null) 'tags': tags,
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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
