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

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_agent_id` attribute.
  TfRef<String> get dataAgentId =>
      TfRef.attribute<String>(this, 'data_agent_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
