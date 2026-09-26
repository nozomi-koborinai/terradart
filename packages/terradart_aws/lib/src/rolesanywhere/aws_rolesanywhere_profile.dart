// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rolesanywhere_profile`.
const Set<String> _awsRolesanywhereProfileSensitive = <String>{};

/// Factory wrapper for `aws_rolesanywhere_profile`.
final class AwsRolesanywhereProfile extends Resource {
  static const String tfType = 'aws_rolesanywhere_profile';

  AwsRolesanywhereProfile({
    required super.localName,
    TfArg<bool>? acceptRoleSessionName,
    TfArg<num>? durationSeconds,
    TfArg<bool>? enabled,
    TfArg<List<String>>? managedPolicyArns,
    required TfArg<String> name,
    TfArg<bool>? requireInstanceProperties,
    TfArg<List<String>>? roleArns,
    TfArg<String>? sessionPolicy,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acceptRoleSessionName != null)
             'accept_role_session_name': acceptRoleSessionName,
           if (durationSeconds != null) 'duration_seconds': durationSeconds,
           if (enabled != null) 'enabled': enabled,
           if (managedPolicyArns != null)
             'managed_policy_arns': managedPolicyArns,
           'name': name,
           if (requireInstanceProperties != null)
             'require_instance_properties': requireInstanceProperties,
           if (roleArns != null) 'role_arns': roleArns,
           if (sessionPolicy != null) 'session_policy': sessionPolicy,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRolesanywhereProfileSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
