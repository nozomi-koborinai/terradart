// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_organizations_account`.
const Set<String> _awsOrganizationsAccountSensitive = <String>{};

/// Factory wrapper for `aws_organizations_account`.
final class AwsOrganizationsAccount extends Resource {
  static const String tfType = 'aws_organizations_account';

  AwsOrganizationsAccount({
    required super.localName,
    TfArg<bool>? closeOnDeletion,
    TfArg<bool>? createGovcloud,
    required TfArg<String> email,
    TfArg<String>? iamUserAccessToBilling,
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
           if (closeOnDeletion != null) 'close_on_deletion': closeOnDeletion,
           if (createGovcloud != null) 'create_govcloud': createGovcloud,
           'email': email,
           if (iamUserAccessToBilling != null)
             'iam_user_access_to_billing': iamUserAccessToBilling,
           'name': name,
           if (parentId != null) 'parent_id': parentId,
           if (roleName != null) 'role_name': roleName,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsOrganizationsAccountSensitive;

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
