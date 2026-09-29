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

  final ContactCenterInsightsAssessmentRuleSampleRuleAmount? amount;

  Map<String, Object?> encode() => {
    if (conversationFilter != null)
      'conversation_filter': conversationFilter!.toTfJson(),
    if (dimension != null) 'dimension': dimension!.toTfJson(),
    ...?amount?.encode(),
  };
}

/// At most one of `sample_percentage`, `sample_row` on the `sample_rule` block of `google_contact_center_insights_assessment_rule`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.samplePercentage(...)`.
sealed class ContactCenterInsightsAssessmentRuleSampleRuleAmount {
  const ContactCenterInsightsAssessmentRuleSampleRuleAmount();

  /// Sets `sample_percentage`.
  const factory ContactCenterInsightsAssessmentRuleSampleRuleAmount.samplePercentage(
    TfArg<num> samplePercentage,
  ) = ContactCenterInsightsAssessmentRuleSampleRuleAmountSamplePercentage;

  /// Sets `sample_row`.
  const factory ContactCenterInsightsAssessmentRuleSampleRuleAmount.sampleRow(
    TfArg<num> sampleRow,
  ) = ContactCenterInsightsAssessmentRuleSampleRuleAmountSampleRow;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [ContactCenterInsightsAssessmentRuleSampleRuleAmount.samplePercentage] choice: sets `sample_percentage`.
final class ContactCenterInsightsAssessmentRuleSampleRuleAmountSamplePercentage
    extends ContactCenterInsightsAssessmentRuleSampleRuleAmount {
  const ContactCenterInsightsAssessmentRuleSampleRuleAmountSamplePercentage(
    this.samplePercentage,
  );

  final TfArg<num> samplePercentage;

  @override
  String get blockKey => 'sample_percentage';

  @override
  Map<String, Object?> encode() => {
    'sample_percentage': samplePercentage.toTfJson(),
  };
}

/// The [ContactCenterInsightsAssessmentRuleSampleRuleAmount.sampleRow] choice: sets `sample_row`.
final class ContactCenterInsightsAssessmentRuleSampleRuleAmountSampleRow
    extends ContactCenterInsightsAssessmentRuleSampleRuleAmount {
  const ContactCenterInsightsAssessmentRuleSampleRuleAmountSampleRow(
    this.sampleRow,
  );

  final TfArg<num> sampleRow;

  @override
  String get blockKey => 'sample_row';

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

  Map<String, Object?> encode() => {
    if (endTime != null) 'end_time': endTime!.toTfJson(),
    if (schedule != null) 'schedule': schedule!.toTfJson(),
    if (startTime != null) 'start_time': startTime!.toTfJson(),
    if (timeZone != null) 'time_zone': timeZone!.toTfJson(),
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

  GoogleContactCenterInsightsAssessmentRule({
    required super.localName,
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
           if (assessmentRuleId != null) 'assessment_rule_id': assessmentRuleId,
           if (displayName != null) 'display_name': displayName,
           if (active != null) 'active': active,
           if (sampleRule != null)
             'sample_rule': TfArg.literal(sampleRule.encode()),
           if (scheduleInfo != null)
             'schedule_info': TfArg.literal(scheduleInfo.encode()),
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsAssessmentRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContactCenterInsightsAssessmentRule>`.
  RefTo<GoogleContactCenterInsightsAssessmentRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
