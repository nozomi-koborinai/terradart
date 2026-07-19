// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_qa_scorecard`.
const Set<String> _googleContactCenterInsightsQaScorecardSensitive = <String>{};

/// Terraform `source` for a [GoogleContactCenterInsightsQaScorecard].
enum ContactCenterInsightsQaScorecardSource implements TerraformEnum {
  /// Customer-authored scorecard.
  customerDefined('QA_SCORECARD_SOURCE_CUSTOMER_DEFINED'),

  /// Scorecard sourced from Discovery Engine.
  discoveryEngine('QA_SCORECARD_SOURCE_DISCOVERY_ENGINE');

  const ContactCenterInsightsQaScorecardSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_contact_center_insights_qa_scorecard`.
///
/// A QaScorecard represents a collection of questions to be scored during
/// analysis.
///
/// QA scorecard for Contact Center AI Insights quality scoring.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. [qaScorecardId] becomes the final path segment of the
/// resource name.
final class GoogleContactCenterInsightsQaScorecard extends Resource {
  static const String tfType = 'google_contact_center_insights_qa_scorecard';

  GoogleContactCenterInsightsQaScorecard({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> qaScorecardId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<ContactCenterInsightsQaScorecardSource>? source,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'qa_scorecard_id': qaScorecardId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (source != null) 'source': source,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsQaScorecardSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
