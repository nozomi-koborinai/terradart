// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloud9_environment_membership`.
const Set<String> _awsCloud9EnvironmentMembershipSensitive = <String>{};

/// Cloud9 Environment Membership enum for `permissions`.
enum Cloud9EnvironmentMembershipPermissions implements TerraformEnum {
  owner('owner'),
  readWrite('read-write'),
  readOnly('read-only');

  const Cloud9EnvironmentMembershipPermissions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloud9_environment_membership`.
final class AwsCloud9EnvironmentMembership extends Resource {
  static const String tfType = 'aws_cloud9_environment_membership';

  AwsCloud9EnvironmentMembership(
    super.localName, {
    required TfArg<String> environmentId,
    required TfArg<Cloud9EnvironmentMembershipPermissions> permissions,
    TfArg<String>? region,
    required TfArg<String> userArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'environment_id': environmentId,
           'permissions': permissions,
           'region': ?region,
           'user_arn': userArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloud9EnvironmentMembershipSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloud9EnvironmentMembership>`.
  RefTo<AwsCloud9EnvironmentMembership> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');

  /// Reference to `environment_id` attribute.
  TfRef<String> get environmentId =>
      TfRef.attribute<String>(this, 'environment_id');

  /// Reference to `permissions` attribute.
  TfRef<String> get permissions => TfRef.attribute<String>(this, 'permissions');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `user_arn` attribute.
  TfRef<String> get userArn => TfRef.attribute<String>(this, 'user_arn');
}
