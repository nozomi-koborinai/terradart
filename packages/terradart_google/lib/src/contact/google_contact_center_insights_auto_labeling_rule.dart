// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_contact_center_insights_auto_labeling_rule`.
const Set<String> _googleContactCenterInsightsAutoLabelingRuleSensitive =
    <String>{};

/// Contact Center Insights Auto Labeling Rule Label Key enum for `label_key_type`.
enum ContactCenterInsightsAutoLabelingRuleLabelKeyType
    implements TerraformEnum {
  labelKeyTypeUnspecified('LABEL_KEY_TYPE_UNSPECIFIED'),
  labelKeyTypeCustom('LABEL_KEY_TYPE_CUSTOM');

  const ContactCenterInsightsAutoLabelingRuleLabelKeyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `conditions` block of
/// `google_contact_center_insights_auto_labeling_rule` (derived from provider schema).
@immutable
final class ContactCenterInsightsAutoLabelingRuleConditions {
  const ContactCenterInsightsAutoLabelingRuleConditions({
    this.condition,
    this.value,
  });

  final TfArg<String>? condition;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `google_contact_center_insights_auto_labeling_rule`.
///
/// The CCAI Insights project wide auto labeling rule. This rule will be applied
/// to all conversations that match the filter defined in the rule.
///
/// Auto-labeling rule for Contact Center AI Insights — applies a label key
/// when CEL [conditions] match.
///
/// Enable `contactcenterinsights.googleapis.com` via [GoogleProjectService]
/// before apply. Keep [active] false in examples so apply does not label
/// live conversations.
final class GoogleContactCenterInsightsAutoLabelingRule extends Resource {
  static const String tfType =
      'google_contact_center_insights_auto_labeling_rule';

  GoogleContactCenterInsightsAutoLabelingRule({
    required super.localName,
    required TfArg<String> location,
    TfArg<String>? autoLabelingRuleId,
    TfArg<String>? displayName,
    TfArg<String>? description,
    TfArg<String>? labelKey,
    TfArg<ContactCenterInsightsAutoLabelingRuleLabelKeyType>? labelKeyType,
    List<ContactCenterInsightsAutoLabelingRuleConditions>? conditions,
    TfArg<bool>? active,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           if (autoLabelingRuleId != null)
             'auto_labeling_rule_id': autoLabelingRuleId,
           if (displayName != null) 'display_name': displayName,
           if (description != null) 'description': description,
           if (labelKey != null) 'label_key': labelKey,
           if (labelKeyType != null) 'label_key_type': labelKeyType,
           if (conditions != null)
             'conditions': TfArg.literal([
               for (final e in conditions) e.encode(),
             ]),
           if (active != null) 'active': active,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleContactCenterInsightsAutoLabelingRuleSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
