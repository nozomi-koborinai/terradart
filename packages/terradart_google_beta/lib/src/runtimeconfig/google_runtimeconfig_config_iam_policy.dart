// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_runtimeconfig_config_iam_policy`.
const Set<String> _googleRuntimeconfigConfigIamPolicySensitive = <String>{};

/// Factory wrapper for `google_runtimeconfig_config_iam_policy`.
///
/// Authoritative IAM policy for a Runtimeconfig Config.
///
/// Overwrites every role binding on the resource. Prefer
/// [GoogleRuntimeconfigConfigIamMember] for additive grants.
final class GoogleRuntimeconfigConfigIamPolicy extends Resource {
  static const String tfType = 'google_runtimeconfig_config_iam_policy';

  GoogleRuntimeconfigConfigIamPolicy({
    required super.localName,
    required TfArg<String> config,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'config': config,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleRuntimeconfigConfigIamPolicySensitive;
}
