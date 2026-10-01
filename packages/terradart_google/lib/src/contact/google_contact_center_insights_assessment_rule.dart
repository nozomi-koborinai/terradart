// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_assessment_rule`.
const Set<String> _googleContactCenterInsightsAssessmentRuleSensitive =
    <String>{};

/// Typed helper for the `sample_rule` block of
/// `google_contact_center_insights_assessment_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAssessmentRuleSampleRule {
  const ContactCenterInsightsAssessmentRuleSampleRule({
    this.conversationFilter,
    this.dimension,
    this.amount,
  });

  final TfArg<String>? conversationFilter;

  final TfArg<String>? dimension;

  final ContactCenterInsightsAssessmentRuleAmount? amount;

  @internal
  Map<String, Object?> encode() => {
    'conversation_filter': ?conversationFilter?.toTfJson(),
    'dimension': ?dimension?.toTfJson(),
    ...?amount?.encode(),
  };
}

/// At most one of `sample_percentage`, `sample_row` on the `sample_rule` block of `google_contact_center_insights_assessment_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.samplePercentage(...)`.
sealed class ContactCenterInsightsAssessmentRuleAmount {
  const ContactCenterInsightsAssessmentRuleAmount();

  /// Sets `sample_percentage`.
  const factory ContactCenterInsightsAssessmentRuleAmount.samplePercentage(
    TfArg<num> samplePercentage,
  ) = ContactCenterInsightsAssessmentRuleAmountSamplePercentage;

  /// Sets `sample_row`.
  const factory ContactCenterInsightsAssessmentRuleAmount.sampleRow(
    TfArg<num> sampleRow,
  ) = ContactCenterInsightsAssessmentRuleAmountSampleRow;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [ContactCenterInsightsAssessmentRuleAmount.samplePercentage] choice: sets `sample_percentage`.
final class ContactCenterInsightsAssessmentRuleAmountSamplePercentage
    extends ContactCenterInsightsAssessmentRuleAmount {
  const ContactCenterInsightsAssessmentRuleAmountSamplePercentage(
    this.samplePercentage,
  );

  final TfArg<num> samplePercentage;

  @internal
  @override
  String get blockKey => 'sample_percentage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'sample_percentage': samplePercentage.toTfJson(),
  };
}

/// The [ContactCenterInsightsAssessmentRuleAmount.sampleRow] choice: sets `sample_row`.
final class ContactCenterInsightsAssessmentRuleAmountSampleRow
    extends ContactCenterInsightsAssessmentRuleAmount {
  const ContactCenterInsightsAssessmentRuleAmountSampleRow(this.sampleRow);

  final TfArg<num> sampleRow;

  @internal
  @override
  String get blockKey => 'sample_row';

  @internal
  @override
  Map<String, Object?> encode() => {'sample_row': sampleRow.toTfJson()};
}

/// Typed helper for the `schedule_info` block of
/// `google_contact_center_insights_assessment_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAssessmentRuleScheduleInfo {
  const ContactCenterInsightsAssessmentRuleScheduleInfo({
    this.endTime,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  final TfArg<String>? endTime;

  final TfArg<String>? schedule;

  final TfArg<String>? startTime;

  final TfArg<String>? timeZone;

  @internal
  Map<String, Object?> encode() => {
    'end_time': ?endTime?.toTfJson(),
    'schedule': ?schedule?.toTfJson(),
    'start_time': ?startTime?.toTfJson(),
    'time_zone': ?timeZone?.toTfJson(),
  };
}

/// Factory wrapper for `google_contact_center_insights_assessment_rule`.
///
/// The CCAI Insights project wide assessment rule. This assessment rule will be
/// applied to all conversations from the previous sampling cycle that match the
/// sample rule defined in the assessment rule. One project can have multiple
/// assessment rules.
///
/// Assessment rule for Contact Center AI Insights — samples conversations
/// on a schedule for quality assessment.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. Keep [active] false (or [samplePercentage] at 0) in
/// examples so apply does not enroll conversations for assessment.
final class GoogleContactCenterInsightsAssessmentRule extends Resource {
  static const String tfType = 'google_contact_center_insights_assessment_rule';

  GoogleContactCenterInsightsAssessmentRule(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? assessmentRuleId,
    TfArg<String>? displayName,
    TfArg<bool>? active,
    ContactCenterInsightsAssessmentRuleSampleRule? sampleRule,
    ContactCenterInsightsAssessmentRuleScheduleInfo? scheduleInfo,
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
           'assessment_rule_id': ?assessmentRuleId,
           'display_name': ?displayName,
           'active': ?active,
           if (sampleRule != null)
             'sample_rule': TfArg.literal(sampleRule.encode()),
           if (scheduleInfo != null)
             'schedule_info': TfArg.literal(scheduleInfo.encode()),
           'project': ?project,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsAssessmentRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsAssessmentRule>`.
  RefTo<GoogleContactCenterInsightsAssessmentRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `active` attribute.
  TfRef<bool> get active => TfRef.attribute<bool>(this, 'active');

  /// Reference to `assessment_rule_id` attribute.
  TfRef<String> get assessmentRuleId =>
      TfRef.attribute<String>(this, 'assessment_rule_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
