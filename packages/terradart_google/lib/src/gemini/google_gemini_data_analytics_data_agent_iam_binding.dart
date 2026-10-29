// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../gemini/google_gemini_data_analytics_data_agent.dart'
    show GoogleGeminiDataAnalyticsDataAgent;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_gemini_data_analytics_data_agent_iam_binding`.
const Set<String> _googleGeminiDataAnalyticsDataAgentIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_gemini_data_analytics_data_agent_iam_binding`.
///
/// Authoritative IAM binding for a single `role`.
///
/// Replaces the entire member list for that role, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_gemini_data_analytics_data_agent_iam_member` for single grants.
final class GoogleGeminiDataAnalyticsDataAgentIamBinding extends Resource {
  static const String tfType =
      'google_gemini_data_analytics_data_agent_iam_binding';

  GoogleGeminiDataAnalyticsDataAgentIamBinding(
    super.localName, {
    required RefTo<GoogleGeminiDataAnalyticsDataAgent> dataAgent,
    TfArg<String>? location,
    required TfArg<List<IamPrincipal>> members,
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
           'members': members,
           'project': ?(project ?? dataAgent.alsoAs('project')),
           'role': role,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleGeminiDataAnalyticsDataAgentIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleGeminiDataAnalyticsDataAgentIamBinding>`.
  RefTo<GoogleGeminiDataAnalyticsDataAgentIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `data_agent_id` attribute.
  TfRef<String> get dataAgentId =>
      TfRef.attribute<String>(this, 'data_agent_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
