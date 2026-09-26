// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_identity_pool_roles_attachment`.
const Set<String> _awsCognitoIdentityPoolRolesAttachmentSensitive = <String>{};

/// Typed helper for the `role_mapping` block of
/// `aws_cognito_identity_pool_roles_attachment` (derived from provider schema).
@immutable
final class CognitoIdentityPoolRolesAttachmentRoleMapping {
  const CognitoIdentityPoolRolesAttachmentRoleMapping({
    this.ambiguousRoleResolution,
    required this.identityProvider,
    required this.type,
    this.mappingRule,
  });

  final TfArg<String>? ambiguousRoleResolution;

  final TfArg<String> identityProvider;

  final TfArg<String> type;

  final List<CognitoIdentityPoolRolesAttachmentRoleMappingMappingRule>?
  mappingRule;

  Map<String, Object?> encode() => {
    if (ambiguousRoleResolution != null)
      'ambiguous_role_resolution': ambiguousRoleResolution!.toTfJson(),
    'identity_provider': identityProvider.toTfJson(),
    'type': type.toTfJson(),
    if (mappingRule != null)
      'mapping_rule': [for (final e in mappingRule!) e.encode()],
  };
}

/// Typed helper for the `role_mapping.mapping_rule` block of
/// `aws_cognito_identity_pool_roles_attachment` (derived from provider schema).
@immutable
final class CognitoIdentityPoolRolesAttachmentRoleMappingMappingRule {
  const CognitoIdentityPoolRolesAttachmentRoleMappingMappingRule({
    required this.claim,
    required this.matchType,
    required this.roleArn,
    required this.value,
  });

  final TfArg<String> claim;

  final TfArg<String> matchType;

  final TfArg<String> roleArn;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'claim': claim.toTfJson(),
    'match_type': matchType.toTfJson(),
    'role_arn': roleArn.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_cognito_identity_pool_roles_attachment`.
final class AwsCognitoIdentityPoolRolesAttachment extends Resource {
  static const String tfType = 'aws_cognito_identity_pool_roles_attachment';

  AwsCognitoIdentityPoolRolesAttachment({
    required super.localName,
    required TfArg<String> identityPoolId,
    TfArg<String>? region,
    required TfArg<Map<String, String>> roles,
    List<CognitoIdentityPoolRolesAttachmentRoleMapping>? roleMapping,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'identity_pool_id': identityPoolId,
           if (region != null) 'region': region,
           'roles': roles,
           if (roleMapping != null)
             'role_mapping': TfArg.literal([
               for (final e in roleMapping) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCognitoIdentityPoolRolesAttachmentSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
