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
           if (description != null) 'description': description,
           'name': name,
           if (precedence != null) 'precedence': precedence,
           if (region != null) 'region': region,
           if (roleArn != null) 'role_arn': roleArn.encodeAs('arn'),
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUserGroup>`.
  RefTo<AwsCognitoUserGroup> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
