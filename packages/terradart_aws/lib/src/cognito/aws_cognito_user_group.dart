// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? roleArn,
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
           if (roleArn != null) 'role_arn': roleArn,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserGroupSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
