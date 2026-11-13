// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_account_custom_permission`.
const Set<String> _awsQuicksightAccountCustomPermissionSensitive = <String>{};

/// Factory wrapper for `aws_quicksight_account_custom_permission`.
final class AwsQuicksightAccountCustomPermission extends Resource {
  static const String tfType = 'aws_quicksight_account_custom_permission';

  AwsQuicksightAccountCustomPermission(
    super.localName, {
    TfArg<String>? awsAccountId,
    required TfArg<String> customPermissionsName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'aws_account_id': ?awsAccountId,
           'custom_permissions_name': customPermissionsName,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsQuicksightAccountCustomPermissionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightAccountCustomPermission>`.
  RefTo<AwsQuicksightAccountCustomPermission> get ref => RefTo.of(this);

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `custom_permissions_name` attribute.
  TfRef<String> get customPermissionsName =>
      TfRef.attribute<String>(this, 'custom_permissions_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
