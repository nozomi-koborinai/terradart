// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dsql_cluster_policy`.
const Set<String> _awsDsqlClusterPolicySensitive = <String>{};

/// Factory wrapper for `aws_dsql_cluster_policy`.
final class AwsDsqlClusterPolicy extends Resource {
  static const String tfType = 'aws_dsql_cluster_policy';

  AwsDsqlClusterPolicy({
    required super.localName,
    TfArg<bool>? bypassPolicyLockoutSafetyCheck,
    required TfArg<String> identifier,
    required TfArg<String> policy,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bypassPolicyLockoutSafetyCheck != null)
             'bypass_policy_lockout_safety_check':
                 bypassPolicyLockoutSafetyCheck,
           'identifier': identifier,
           'policy': policy,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDsqlClusterPolicySensitive;

  /// Reference to `policy_version` attribute.
  TfRef<String> get policyVersion =>
      TfRef.attribute<String>(this, 'policy_version');
}
