// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_data_analytics_data_agent.dart'
    show GoogleGeminiDataAnalyticsDataAgent;

/// Sensitive field paths for `google_gemini_data_analytics_data_agent_iam_policy`.
const Set<String> _googleGeminiDataAnalyticsDataAgentIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_gemini_data_analytics_data_agent_iam_policy`.
///
/// Authoritative IAM policy.
///
/// Replaces the entire IAM policy, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_gemini_data_analytics_data_agent_iam_member` for single grants.
final class GoogleGeminiDataAnalyticsDataAgentIamPolicy extends Resource {
  static const String tfType =
      'google_gemini_data_analytics_data_agent_iam_policy';

  GoogleGeminiDataAnalyticsDataAgentIamPolicy(
    super.localName, {
    required RefTo<GoogleGeminiDataAnalyticsDataAgent> dataAgent,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_agent_id': dataAgent.encodeAs('data_agent_id'),
           'location': ?(location ?? dataAgent.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? dataAgent.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiDataAnalyticsDataAgentIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiDataAnalyticsDataAgentIamPolicy>`.
  RefTo<GoogleGeminiDataAnalyticsDataAgentIamPolicy> get ref => RefTo.of(this);
}
