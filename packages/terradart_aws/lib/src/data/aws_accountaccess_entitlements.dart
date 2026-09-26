// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_accountaccess_entitlements`.
const Set<String> _awsAccountaccessEntitlementsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsFilter {
  const DataAccountaccessEntitlementsFilter({this.principalRole});

  final List<DataAccountaccessEntitlementsFilterPrincipalRole>? principalRole;

  Map<String, Object?> encode() => {
    if (principalRole != null)
      'principal_role': [for (final e in principalRole!) e.encode()],
  };
}

/// Typed helper for the `filter.principal_role` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsFilterPrincipalRole {
  const DataAccountaccessEntitlementsFilterPrincipalRole({
    this.accountId,
    this.roleArn,
    this.principal,
  });

  final TfArg<String>? accountId;

  final TfArg<String>? roleArn;

  final List<DataAccountaccessEntitlementsFilterPrincipalRolePrincipal>?
  principal;

  Map<String, Object?> encode() => {
    if (accountId != null) 'account_id': accountId!.toTfJson(),
    if (roleArn != null) 'role_arn': roleArn!.toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `filter.principal_role.principal` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsFilterPrincipalRolePrincipal {
  const DataAccountaccessEntitlementsFilterPrincipalRolePrincipal({
    this.identityCenter,
  });

  final List<
    DataAccountaccessEntitlementsFilterPrincipalRolePrincipalIdentityCenter
  >?
  identityCenter;

  Map<String, Object?> encode() => {
    if (identityCenter != null)
      'identity_center': [for (final e in identityCenter!) e.encode()],
  };
}

/// Typed helper for the `filter.principal_role.principal.identity_center` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsFilterPrincipalRolePrincipalIdentityCenter {
  const DataAccountaccessEntitlementsFilterPrincipalRolePrincipalIdentityCenter({
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

/// Factory wrapper for `aws_accountaccess_entitlements`.
final class DataAwsAccountaccessEntitlements extends Data {
  static const String tfType = 'aws_accountaccess_entitlements';

  DataAwsAccountaccessEntitlements({
    required super.localName,
    required TfArg<String> applicationArn,
    TfArg<String>? region,
    List<DataAccountaccessEntitlementsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           if (region != null) 'region': region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessEntitlementsSensitive;

  /// Reference to `entitlements` attribute.
  TfRef<List<Map<String, Object?>>> get entitlements =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'entitlements');
}
