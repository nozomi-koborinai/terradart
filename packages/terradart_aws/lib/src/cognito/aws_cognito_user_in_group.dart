// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_in_group`.
const Set<String> _awsCognitoUserInGroupSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_in_group`.
final class AwsCognitoUserInGroup extends Resource {
  static const String tfType = 'aws_cognito_user_in_group';

  AwsCognitoUserInGroup({
    required super.localName,
    required TfArg<String> groupName,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    required TfArg<String> username,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'group_name': groupName,
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserInGroupSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
