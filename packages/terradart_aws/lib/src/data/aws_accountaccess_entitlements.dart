// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_accountaccess_entitlements`.
const Set<String> _awsAccountaccessEntitlementsSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsFilter {
  const DataAccountaccessEntitlementsFilter({this.principalRole});

  final List<DataAccountaccessEntitlementsPrincipalRole>? principalRole;

  @internal
  Map<String, Object?> encode() => {
    if (principalRole != null)
      'principal_role': [for (final e in principalRole!) e.encode()],
  };
}

/// Typed helper for the `filter.principal_role` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsPrincipalRole {
  const DataAccountaccessEntitlementsPrincipalRole({
    this.accountId,
    this.roleArn,
    this.principal,
  });

  final TfArg<String>? accountId;

  final RefTo<AwsIamRole>? roleArn;

  final List<DataAccountaccessEntitlementsPrincipal>? principal;

  @internal
  Map<String, Object?> encode() => {
    'account_id': ?accountId?.toTfJson(),
    'role_arn': ?roleArn?.encodeAs('arn').toTfJson(),
    if (principal != null)
      'principal': [for (final e in principal!) e.encode()],
  };
}

/// Typed helper for the `filter.principal_role.principal` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsPrincipal {
  const DataAccountaccessEntitlementsPrincipal({this.identityCenter});

  final List<DataAccountaccessEntitlementsIdentityCenter>? identityCenter;

  @internal
  Map<String, Object?> encode() => {
    if (identityCenter != null)
      'identity_center': [for (final e in identityCenter!) e.encode()],
  };
}

/// Typed helper for the `filter.principal_role.principal.identity_center` block of
/// `aws_accountaccess_entitlements` (derived from provider schema).
@immutable
final class DataAccountaccessEntitlementsIdentityCenter {
  const DataAccountaccessEntitlementsIdentityCenter({
    this.groupId,
    this.userId,
  });

  final TfArg<String>? groupId;

  final TfArg<String>? userId;

  @internal
  Map<String, Object?> encode() => {
    'group_id': ?groupId?.toTfJson(),
    'user_id': ?userId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_accountaccess_entitlements`.
final class DataAwsAccountaccessEntitlements extends Data {
  static const String tfType = 'aws_accountaccess_entitlements';

  DataAwsAccountaccessEntitlements(
    super.localName, {
    required TfArg<String> applicationArn,
    TfArg<String>? region,
    List<DataAccountaccessEntitlementsFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_arn': applicationArn,
           'region': ?region,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAccountaccessEntitlementsSensitive;

  /// Reference to `entitlements` attribute.
  TfRef<List<Map<String, Object?>>> get entitlements =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'entitlements');

  /// Reference to `application_arn` attribute.
  TfRef<String> get applicationArn =>
      TfRef.attribute<String>(this, 'application_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
