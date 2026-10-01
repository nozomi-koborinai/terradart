// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_accountaccess_entitlement`.
const Set<String> _awsAccountaccessEntitlementSensitive = <String>{};

/// Typed helper for the `entitlement` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlement {
  const AccountaccessEntitlement({this.principalRole});

  final List<AccountaccessEntitlementPrincipalRole>? principalRole;

  Map<String, Object?> encode() => {
    if (principalRole != null)
      'principal_role': [for (final e in principalRole!) e.encode()],
  };
}

/// Typed helper for the `entitlement.principal_role` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementPrincipalRole {
  const AccountaccessEntitlementPrincipalRole({
    required this.roleArn,
    this.principal,
  });

  final RefTo<AwsIamRole> roleArn;

  final List<AccountaccessEntitlementPrincipal>? principal;

  Map<String, Object?> encode() => {
    'role_arn': roleArn.encodeAs('arn').toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `entitlement.principal_role.principal` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementPrincipal {
  const AccountaccessEntitlementPrincipal({this.identityCenter});

  final List<AccountaccessEntitlementIdentityCenter>? identityCenter;

  Map<String, Object?> encode() => {
    if (identityCenter != null)
      'identity_center': [for (final e in identityCenter!) e.encode()],
  };
}

/// Typed helper for the `entitlement.principal_role.principal.identity_center` block of
/// `aws_accountaccess_entitlement` (derived from provider schema).
@immutable
final class AccountaccessEntitlementIdentityCenter {
  const AccountaccessEntitlementIdentityCenter({this.groupId, this.userId});

  final TfArg<String>? groupId;

  final TfArg<String>? userId;

  Map<String, Object?> encode() => {
    'group_id': ?groupId?.toTfJson(),
    'user_id': ?userId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_accountaccess_entitlement`.
final class AwsAccountaccessEntitlement extends Resource {
  static const String tfType = 'aws_accountaccess_entitlement';

  AwsAccountaccessEntitlement(
    super.localName, {
    required TfArg<String> applicationArn,
    TfArg<String>? region,
    List<AccountaccessEntitlement>? entitlement,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           'region': ?region,
           if (entitlement != null)
             'entitlement': TfArg.literal([
               for (final e in entitlement) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessEntitlementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAccountaccessEntitlement>`.
  RefTo<AwsAccountaccessEntitlement> get ref => RefTo.of(this);

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArn =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
