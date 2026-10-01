// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_user_custom_permission`.
const Set<String> _awsQuicksightUserCustomPermissionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_user_custom_permission`.
final class AwsQuicksightUserCustomPermission extends Resource {
  static const String tfType = 'aws_quicksight_user_custom_permission';

  AwsQuicksightUserCustomPermission(
    super.localName, {
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
           'aws_account_id': ?awsAccountId,
           'custom_permissions_name': customPermissionsName,
           'namespace': ?namespace,
           'region': ?region,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsQuicksightUserCustomPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightUserCustomPermission>`.
  RefTo<AwsQuicksightUserCustomPermission> get ref => RefTo.of(this);

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `custom_permissions_name` attribute.
  TfRef<String> get customPermissionsName =>
      TfRef.attribute<String>(this, 'custom_permissions_name');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
