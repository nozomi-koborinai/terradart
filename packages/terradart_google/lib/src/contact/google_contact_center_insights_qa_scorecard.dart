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

  GoogleContactCenterInsightsQaScorecard(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> qaScorecardId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<ContactCenterInsightsQaScorecardSource>? source,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'qa_scorecard_id': qaScorecardId,
           'display_name': ?displayName,
           'description': ?description,
           'source': ?source,
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsQaScorecardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsQaScorecard>`.
  RefTo<GoogleContactCenterInsightsQaScorecard> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `is_default` attribute.
  TfRef<bool> get isDefault => TfRef.attribute<bool>(this, 'is_default');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `qa_scorecard_id` attribute.
  TfRef<String> get qaScorecardId =>
      TfRef.attribute<String>(this, 'qa_scorecard_id');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
