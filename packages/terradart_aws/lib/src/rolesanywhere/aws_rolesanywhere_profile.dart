// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_policy.dart' show AwsIamPolicy;

/// Sensitive field paths for `aws_rolesanywhere_profile`.
const Set<String> _awsRolesanywhereProfileSensitive = <String>{};

/// Factory wrapper for `aws_rolesanywhere_profile`.
final class AwsRolesanywhereProfile extends Resource {
  static const String tfType = 'aws_rolesanywhere_profile';

  AwsRolesanywhereProfile(
    super.localName, {
    TfArg<bool>? acceptRoleSessionName,
    TfArg<num>? durationSeconds,
    TfArg<bool>? enabled,
    TfArg<List<RefTo<AwsIamPolicy>>>? managedPolicyArns,
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
           'accept_role_session_name': ?acceptRoleSessionName,
           'duration_seconds': ?durationSeconds,
           'enabled': ?enabled,
           'managed_policy_arns': ?managedPolicyArns?.encodeAs('arn'),
           'name': name,
           'require_instance_properties': ?requireInstanceProperties,
           'role_arns': ?roleArns,
           'session_policy': ?sessionPolicy,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRolesanywhereProfileSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRolesanywhereProfile>`.
  RefTo<AwsRolesanywhereProfile> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `accept_role_session_name` attribute.
  TfRef<bool> get acceptRoleSessionName =>
      TfRef.attribute<bool>(this, 'accept_role_session_name');

  /// Reference to `duration_seconds` attribute.
  TfRef<num> get durationSeconds =>
      TfRef.attribute<num>(this, 'duration_seconds');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `managed_policy_arns` attribute.
  TfRef<List<String>> get managedPolicyArns =>
      TfRef.attribute<List<String>>(this, 'managed_policy_arns');

  /// Reference to `require_instance_properties` attribute.
  TfRef<bool> get requireInstanceProperties =>
      TfRef.attribute<bool>(this, 'require_instance_properties');

  /// Reference to `role_arns` attribute.
  TfRef<List<String>> get roleArns =>
      TfRef.attribute<List<String>>(this, 'role_arns');

  /// Reference to `session_policy` attribute.
  TfRef<String> get sessionPolicy =>
      TfRef.attribute<String>(this, 'session_policy');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
