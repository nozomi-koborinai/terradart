// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../runtimeconfig/google_runtimeconfig_config.dart'
    show GoogleRuntimeconfigConfig;

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

  GoogleRuntimeconfigConfigIamPolicy(
    super.localName, {
    required RefTo<GoogleRuntimeconfigConfig> config,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'config': config.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? config.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleRuntimeconfigConfigIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleRuntimeconfigConfigIamPolicy>`.
  RefTo<GoogleRuntimeconfigConfigIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `config` attribute.
  TfRef<String> get config => TfRef.attribute<String>(this, 'config');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
