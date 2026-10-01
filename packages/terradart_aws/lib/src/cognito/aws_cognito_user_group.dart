// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_cognito_user_group`.
const Set<String> _awsCognitoUserGroupSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_group`.
final class AwsCognitoUserGroup extends Resource {
  static const String tfType = 'aws_cognito_user_group';

  AwsCognitoUserGroup({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<num>? precedence,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    required TfArg<String> userPoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'precedence': ?precedence,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUserGroup>`.
  RefTo<AwsCognitoUserGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
