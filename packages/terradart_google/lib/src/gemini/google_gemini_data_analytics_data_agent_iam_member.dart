// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_data_analytics_data_agent.dart'
    show GoogleGeminiDataAnalyticsDataAgent;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gemini_data_analytics_data_agent_iam_member`.
const Set<String> _googleGeminiDataAnalyticsDataAgentIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_gemini_data_analytics_data_agent_iam_member`.
final class GoogleGeminiDataAnalyticsDataAgentIamMember extends Resource {
  static const String tfType =
      'google_gemini_data_analytics_data_agent_iam_member';

  GoogleGeminiDataAnalyticsDataAgentIamMember(
    super.localName, {
    required RefTo<GoogleGeminiDataAnalyticsDataAgent> dataAgent,
    TfArg<String>? location,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_agent_id': dataAgent.encodeAs('data_agent_id'),
           'location': ?(location ?? dataAgent.alsoAs('location')),
           'member': member,
           'project': ?(project ?? dataAgent.alsoAs('project')),
           'role': role,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiDataAnalyticsDataAgentIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiDataAnalyticsDataAgentIamMember>`.
  RefTo<GoogleGeminiDataAnalyticsDataAgentIamMember> get ref => RefTo.of(this);
}
