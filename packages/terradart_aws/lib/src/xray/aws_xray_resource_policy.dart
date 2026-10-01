// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_resource_policy`.
const Set<String> _awsXrayResourcePolicySensitive = <String>{};

/// Factory wrapper for `aws_xray_resource_policy`.
final class AwsXrayResourcePolicy extends Resource {
  static const String tfType = 'aws_xray_resource_policy';

  AwsXrayResourcePolicy({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutCheck,
    required TfArg<String> policyDocument,
    required TfArg<String> policyName,
    TfArg<String>? policyRevisionId,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bypass_policy_lockout_check': ?bypassPolicyLockoutCheck,
           'policy_document': policyDocument,
           'policy_name': policyName,
           'policy_revision_id': ?policyRevisionId,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayResourcePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsXrayResourcePolicy>`.
  RefTo<AwsXrayResourcePolicy> get ref => RefTo.of(this);

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `bypass_policy_lockout_check` attribute.
  TfRef<bool> get bypassPolicyLockoutCheck =>
      TfRef.attribute<bool>(this, 'bypass_policy_lockout_check');

  /// Reference to `policy_document` attribute.
  TfRef<String> get policyDocument =>
      TfRef.attribute<String>(this, 'policy_document');

  /// Reference to `policy_name` attribute.
  TfRef<String> get policyName => TfRef.attribute<String>(this, 'policy_name');

  /// Reference to `policy_revision_id` attribute.
  TfRef<String> get policyRevisionId =>
      TfRef.attribute<String>(this, 'policy_revision_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
