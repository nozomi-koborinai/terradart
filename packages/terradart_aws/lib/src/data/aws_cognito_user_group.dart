// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cognito/aws_cognito_user_group.dart';

/// Sensitive field paths for `aws_cognito_user_group`.
const Set<String> _awsCognitoUserGroupSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_group`.
final class DataAwsCognitoUserGroup extends Data {
  static const String tfType = 'aws_cognito_user_group';

  DataAwsCognitoUserGroup(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'user_pool_id': userPoolId},
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserGroupSensitive;

  /// A reference to the `aws_cognito_user_group` this data source reads, for
  /// arguments typed `RefTo<AwsCognitoUserGroup>`.
  RefTo<AwsCognitoUserGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `precedence` attribute.
  TfRef<num> get precedence => TfRef.attribute<num>(this, 'precedence');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
