// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_user_custom_permission`.
const Set<String> _awsQuicksightUserCustomPermissionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_user_custom_permission`.
final class AwsQuicksightUserCustomPermission extends Resource {
  static const String tfType = 'aws_quicksight_user_custom_permission';

  AwsQuicksightUserCustomPermission({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> customPermissionsName,
    TfArg<String>? namespace,
    TfArg<String>? region,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'custom_permissions_name': customPermissionsName,
           if (namespace != null) 'namespace': namespace,
           if (region != null) 'region': region,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsQuicksightUserCustomPermissionSensitive;
}
