// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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

  final TfArg<CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution>?
  ambiguousRoleResolution;

  final TfArg<String> identityProvider;

  final TfArg<CognitoIdentityPoolRolesAttachmentType> type;

  final List<CognitoIdentityPoolRolesAttachmentMappingRule>? mappingRule;

  Map<String, Object?> encode() => {
    'ambiguous_role_resolution': ?ambiguousRoleResolution?.toTfJson(),
    'identity_provider': identityProvider.toTfJson(),
    'type': type.toTfJson(),
    if (mappingRule != null)
      'mapping_rule': [for (final e in mappingRule!) e.encode()],
  };
}

/// `ambiguous_role_resolution` — derived from the provider schema description.
enum CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution
    implements TerraformEnum {
  authenticatedrole('AuthenticatedRole'),
  deny('Deny');

  const CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum CognitoIdentityPoolRolesAttachmentType implements TerraformEnum {
  token('Token'),
  rules('Rules');

  const CognitoIdentityPoolRolesAttachmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `role_mapping.mapping_rule` block of
/// `aws_cognito_identity_pool_roles_attachment` (derived from provider schema).
@immutable
final class CognitoIdentityPoolRolesAttachmentMappingRule {
  const CognitoIdentityPoolRolesAttachmentMappingRule({
    required this.claim,
    required this.matchType,
    required this.roleArn,
    required this.value,
  });

  final TfArg<String> claim;

  final TfArg<CognitoIdentityPoolRolesAttachmentMatchType> matchType;

  final RefTo<AwsIamRole> roleArn;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'claim': claim.toTfJson(),
    'match_type': matchType.toTfJson(),
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `match_type` — derived from the provider schema description.
enum CognitoIdentityPoolRolesAttachmentMatchType implements TerraformEnum {
  equals('Equals'),
  contains('Contains'),
  startswith('StartsWith'),
  notequal('NotEqual');

  const CognitoIdentityPoolRolesAttachmentMatchType(this.terraformValue);
  @override
  final String terraformValue;
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
           'region': ?region,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoIdentityPoolRolesAttachment>`.
  RefTo<AwsCognitoIdentityPoolRolesAttachment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity_pool_id` attribute.
  TfRef<String> get identityPoolIdRef =>
      TfRef.attribute<String>(this, 'identity_pool_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `roles` attribute.
  TfRef<Map<String, String>> get rolesRef =>
      TfRef.attribute<Map<String, String>>(this, 'roles');
}
