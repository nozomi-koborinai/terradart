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
    this.samplePercentage,
    this.sampleRow,
  });

  final TfArg<String>? conversationFilter;

  final TfArg<String>? dimension;

  final TfArg<num>? samplePercentage;

  final TfArg<num>? sampleRow;

  Map<String, Object?> encode() => {
    if (conversationFilter != null)
      'conversation_filter': conversationFilter!.toTfJson(),
    if (dimension != null) 'dimension': dimension!.toTfJson(),
    if (samplePercentage != null)
      'sample_percentage': samplePercentage!.toTfJson(),
    if (sampleRow != null) 'sample_row': sampleRow!.toTfJson(),
  };
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
