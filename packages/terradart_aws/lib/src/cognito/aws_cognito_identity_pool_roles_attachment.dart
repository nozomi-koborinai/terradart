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

  final CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution?
  ambiguousRoleResolution;

  final TfArg<String> identityProvider;

  final CognitoIdentityPoolRolesAttachmentType type;

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
extension type const CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution._(
  TfArg<String> _
) implements TfArg<String> {
  CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution.variable(
    String name,
  ) : this._(TfArg.variable(name));
  CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const authenticatedrole =
      CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution._(
        TfArgLiteral('AuthenticatedRole'),
      );
  static const deny =
      CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution._(
        TfArgLiteral('Deny'),
      );

  static const List<CognitoIdentityPoolRolesAttachmentAmbiguousRoleResolution>
  values = [authenticatedrole, deny];
}

/// `type` — derived from the provider schema description.
extension type const CognitoIdentityPoolRolesAttachmentType._(TfArg<String> _)
    implements TfArg<String> {
  CognitoIdentityPoolRolesAttachmentType.variable(String name)
    : this._(TfArg.variable(name));
  CognitoIdentityPoolRolesAttachmentType.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoIdentityPoolRolesAttachmentType.arg(TfArg<String> arg)
    : this._(arg);

  static const token = CognitoIdentityPoolRolesAttachmentType._(
    TfArgLiteral('Token'),
  );
  static const rules = CognitoIdentityPoolRolesAttachmentType._(
    TfArgLiteral('Rules'),
  );

  static const List<CognitoIdentityPoolRolesAttachmentType> values = [
    token,
    rules,
  ];
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

  final CognitoIdentityPoolRolesAttachmentMatchType matchType;

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
extension type const CognitoIdentityPoolRolesAttachmentMatchType._(
  TfArg<String> _
) implements TfArg<String> {
  CognitoIdentityPoolRolesAttachmentMatchType.variable(String name)
    : this._(TfArg.variable(name));
  CognitoIdentityPoolRolesAttachmentMatchType.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoIdentityPoolRolesAttachmentMatchType.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = CognitoIdentityPoolRolesAttachmentMatchType._(
    TfArgLiteral('Equals'),
  );
  static const contains = CognitoIdentityPoolRolesAttachmentMatchType._(
    TfArgLiteral('Contains'),
  );
  static const startswith = CognitoIdentityPoolRolesAttachmentMatchType._(
    TfArgLiteral('StartsWith'),
  );
  static const notequal = CognitoIdentityPoolRolesAttachmentMatchType._(
    TfArgLiteral('NotEqual'),
  );

  static const List<CognitoIdentityPoolRolesAttachmentMatchType> values = [
    equals,
    contains,
    startswith,
    notequal,
  ];
}

/// Factory wrapper for `aws_cognito_identity_pool_roles_attachment`.
final class AwsCognitoIdentityPoolRolesAttachment extends Resource {
  static const String tfType = 'aws_cognito_identity_pool_roles_attachment';

  AwsCognitoIdentityPoolRolesAttachment(
    super.localName, {
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
  TfRef<String> get identityPoolId =>
      TfRef.attribute<String>(this, 'identity_pool_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `roles` attribute.
  TfRef<Map<String, String>> get roles =>
      TfRef.attribute<Map<String, String>>(this, 'roles');
}
