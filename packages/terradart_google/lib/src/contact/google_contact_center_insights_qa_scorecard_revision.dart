// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_qa_scorecard_revision`.
const Set<String> _googleContactCenterInsightsQaScorecardRevisionSensitive =
    <String>{};

/// Factory wrapper for `google_contact_center_insights_qa_scorecard_revision`.
///
/// A revision of a QaScorecard.
///
/// Revision of a Contact Center AI Insights QA scorecard.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. Pass [qaScorecard] as the scorecard id segment (not the
/// full resource name). When [qaScorecardRevisionId] is omitted, the
/// provider adopts the scorecard's latest revision.
final class GoogleContactCenterInsightsQaScorecardRevision extends Resource {
  static const String tfType =
      'google_contact_center_insights_qa_scorecard_revision';

  GoogleContactCenterInsightsQaScorecardRevision({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> qaScorecard,
    TfArg<String>? qaScorecardRevisionId,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'qa_scorecard': qaScorecard,
           if (qaScorecardRevisionId != null)
             'qa_scorecard_revision_id': qaScorecardRevisionId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsQaScorecardRevisionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `alternate_ids` attribute.
  TfRef<List<String>> get alternateIds =>
      TfRef.attribute<List<String>>(this, 'alternate_ids');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `snapshot` attribute.
  TfRef<List<Map<String, Object?>>> get snapshot =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'snapshot');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `qa_scorecard_revision_id` attribute.
  TfRef<String> get qaScorecardRevisionId =>
      TfRef.attribute<String>(this, 'qa_scorecard_revision_id');
}
