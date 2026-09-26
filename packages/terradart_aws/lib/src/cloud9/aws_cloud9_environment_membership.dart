// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloud9_environment_membership`.
const Set<String> _awsCloud9EnvironmentMembershipSensitive = <String>{};

/// Factory wrapper for `aws_cloud9_environment_membership`.
final class AwsCloud9EnvironmentMembership extends Resource {
  static const String tfType = 'aws_cloud9_environment_membership';

  AwsCloud9EnvironmentMembership({
    required super.localName,
    required TfArg<String> environmentId,
    required TfArg<String> permissions,
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
           if (region != null) 'region': region,
           'user_arn': userArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloud9EnvironmentMembershipSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
