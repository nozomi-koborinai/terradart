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
           if (bypassPolicyLockoutCheck != null)
             'bypass_policy_lockout_check': bypassPolicyLockoutCheck,
           'policy_document': policyDocument,
           'policy_name': policyName,
           if (policyRevisionId != null) 'policy_revision_id': policyRevisionId,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayResourcePolicySensitive;

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');
}
