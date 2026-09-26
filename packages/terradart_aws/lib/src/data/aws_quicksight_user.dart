// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_user`.
const Set<String> _awsQuicksightUserSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_user`.
final class DataAwsQuicksightUser extends Data {
  static const String tfType = 'aws_quicksight_user';

  DataAwsQuicksightUser({
    required super.localName,
    TfArg<String>? awsAccountId,
    TfArg<String>? namespace,
    TfArg<String>? region,
    required TfArg<String> userName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           if (namespace != null) 'namespace': namespace,
           if (region != null) 'region': region,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightUserSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `custom_permissions_name` attribute.
  TfRef<String> get customPermissionsName =>
      TfRef.attribute<String>(this, 'custom_permissions_name');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `identity_type` attribute.
  TfRef<String> get identityType =>
      TfRef.attribute<String>(this, 'identity_type');

  /// Reference to `principal_id` attribute.
  TfRef<String> get principalId =>
      TfRef.attribute<String>(this, 'principal_id');

  /// Reference to `user_role` attribute.
  TfRef<String> get userRole => TfRef.attribute<String>(this, 'user_role');
}
