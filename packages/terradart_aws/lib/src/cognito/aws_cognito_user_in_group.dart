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
           'region': ?region,
           'user_pool_id': userPoolId,
           'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserInGroupSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoUserInGroup>`.
  RefTo<AwsCognitoUserInGroup> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `group_name` attribute.
  TfRef<String> get groupNameRef => TfRef.attribute<String>(this, 'group_name');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolIdRef =>
      TfRef.attribute<String>(this, 'user_pool_id');

  /// Reference to `username` attribute.
  TfRef<String> get usernameRef => TfRef.attribute<String>(this, 'username');
}
