// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_account`.
const Set<String> _awsOrganizationsAccountSensitive = <String>{};

/// Organizations Account Iam User Access To enum for `iam_user_access_to_billing`.
enum OrganizationsAccountIamUserAccessToBilling implements TerraformEnum {
  allow('ALLOW'),
  deny('DENY');

  const OrganizationsAccountIamUserAccessToBilling(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_organizations_account`.
final class AwsOrganizationsAccount extends Resource {
  static const String tfType = 'aws_organizations_account';

  AwsOrganizationsAccount({
    required super.localName,
    TfArg<bool>? closeOnDeletion,
    TfArg<bool>? createGovcloud,
    required TfArg<String> email,
    TfArg<OrganizationsAccountIamUserAccessToBilling>? iamUserAccessToBilling,
    required TfArg<String> name,
    TfArg<String>? parentId,
    TfArg<String>? roleName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'close_on_deletion': ?closeOnDeletion,
           'create_govcloud': ?createGovcloud,
           'email': email,
           'iam_user_access_to_billing': ?iamUserAccessToBilling,
           'name': name,
           'parent_id': ?parentId,
           'role_name': ?roleName,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsOrganizationsAccount>`.
  RefTo<AwsOrganizationsAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `govcloud_id` attribute.
  TfRef<String> get govcloudId => TfRef.attribute<String>(this, 'govcloud_id');

  /// Reference to `joined_method` attribute.
  TfRef<String> get joinedMethod =>
      TfRef.attribute<String>(this, 'joined_method');

  /// Reference to `joined_timestamp` attribute.
  TfRef<String> get joinedTimestamp =>
      TfRef.attribute<String>(this, 'joined_timestamp');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
