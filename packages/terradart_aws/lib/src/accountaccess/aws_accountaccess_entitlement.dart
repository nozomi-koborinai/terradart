// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accountaccess_entitlement`.
const Set<String> _awsAccountaccessEntitlementSensitive = <String>{};

/// Typed helper for the `entitlement` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementEntitlement {
  const AccountaccessEntitlementEntitlement({this.principalRole});

  final List<AccountaccessEntitlementEntitlementPrincipalRole>? principalRole;

  Map<String, Object?> encode() => {
    if (principalRole != null)
      'principal_role': [for (final e in principalRole!) e.encode()],
  };
}

/// Typed helper for the `entitlement.principal_role` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementEntitlementPrincipalRole {
  const AccountaccessEntitlementEntitlementPrincipalRole({
    required this.roleArn,
    this.principal,
  });

  final TfArg<String> roleArn;

  final List<AccountaccessEntitlementEntitlementPrincipalRolePrincipal>?
  principal;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `entitlement.principal_role.principal` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementEntitlementPrincipalRolePrincipal {
  const AccountaccessEntitlementEntitlementPrincipalRolePrincipal({
    this.identityCenter,
  });

  final List<
    AccountaccessEntitlementEntitlementPrincipalRolePrincipalIdentityCenter
  >?
  identityCenter;

  Map<String, Object?> encode() => {
    if (identityCenter != null)
      'identity_center': [for (final e in identityCenter!) e.encode()],
  };
}

/// Typed helper for the `entitlement.principal_role.principal.identity_center` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementEntitlementPrincipalRolePrincipalIdentityCenter {
  const AccountaccessEntitlementEntitlementPrincipalRolePrincipalIdentityCenter({
    this.groupId,
    this.userId,
  });

  final TfArg<String>? groupId;

  final TfArg<String>? userId;

  Map<String, Object?> encode() => {
    if (groupId != null) 'group_id': groupId!.toTfJson(),
    if (userId != null) 'user_id': userId!.toTfJson(),
  };
}

/// Factory wrapper for `aws_accountaccess_entitlement`.
final class AwsAccountaccessEntitlement extends Resource {
  static const String tfType = 'aws_accountaccess_entitlement';

  AwsAccountaccessEntitlement({
    required super.localName,
    required TfArg<String> applicationArn,
    TfArg<String>? region,
    List<AccountaccessEntitlementEntitlement>? entitlement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           if (region != null) 'region': region,
           if (entitlement != null)
             'entitlement': TfArg.literal([
               for (final e in entitlement) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessEntitlementSensitive;

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');
}
