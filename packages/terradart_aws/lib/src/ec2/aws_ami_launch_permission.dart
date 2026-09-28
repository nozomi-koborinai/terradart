// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami_launch_permission`.
const Set<String> _awsAmiLaunchPermissionSensitive = <String>{};

/// Ami Launch Permission enum for `group`.
enum AmiLaunchPermissionGroup implements TerraformEnum {
  all('all');

  const AmiLaunchPermissionGroup(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ami_launch_permission`.
final class AwsAmiLaunchPermission extends Resource {
  static const String tfType = 'aws_ami_launch_permission';

  AwsAmiLaunchPermission({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<AmiLaunchPermissionGroup>? group,
    required TfArg<String> imageId,
    TfArg<String>? organizationArn,
    TfArg<String>? organizationalUnitArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (group != null) 'group': group,
           'image_id': imageId,
           if (organizationArn != null) 'organization_arn': organizationArn,
           if (organizationalUnitArn != null)
             'organizational_unit_arn': organizationalUnitArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmiLaunchPermissionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
