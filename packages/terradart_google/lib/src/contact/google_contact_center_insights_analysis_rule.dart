// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_analysis_rule`.
const Set<String> _googleContactCenterInsightsAnalysisRuleSensitive =
    <String>{};

/// Factory wrapper for `google_contact_center_insights_analysis_rule`.
///
/// The CCAI Insights project wide analysis rule. This rule will be applied to
/// all conversations that match the filter defined in the rule. For a
/// conversation matches the filter, the annotators specified in the rule will
/// be run. If a conversation matches multiple rules, a union of all the
/// annotators will be run. One project can have multiple analysis rules.
///
/// Analysis rule for Contact Center AI Insights — selects which conversations
/// get automatic analysis (filter + percentage).
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. An empty [conversationFilter] means the rule applies to all
/// conversations in [location].
final class GoogleContactCenterInsightsAnalysisRule extends Resource {
  static const String tfType = 'google_contact_center_insights_analysis_rule';

  GoogleContactCenterInsightsAnalysisRule({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? displayName,
    TfArg<bool>? active,
    TfArg<num>? analysisPercentage,
    TfArg<String>? conversationFilter,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (displayName != null) 'display_name': displayName,
           if (active != null) 'active': active,
           if (analysisPercentage != null)
             'analysis_percentage': analysisPercentage,
           if (conversationFilter != null)
             'conversation_filter': conversationFilter,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsAnalysisRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
