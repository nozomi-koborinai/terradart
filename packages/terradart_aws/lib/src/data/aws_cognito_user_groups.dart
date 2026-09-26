// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_groups`.
const Set<String> _awsCognitoUserGroupsSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_groups`.
final class DataAwsCognitoUserGroups extends Data {
  static const String tfType = 'aws_cognito_user_groups';

  DataAwsCognitoUserGroups({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoUserGroupsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `groups` attribute.
  TfRef<List<Map<String, Object?>>> get groups =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'groups');
}
