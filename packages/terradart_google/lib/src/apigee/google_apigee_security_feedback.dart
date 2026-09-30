// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_security_feedback`.
const Set<String> _googleApigeeSecurityFeedbackSensitive = <String>{};

/// Apigee Security Feedback Feedback enum for `feedback_type`.
enum ApigeeSecurityFeedbackFeedbackType implements TerraformEnum {
  excludedDetection('EXCLUDED_DETECTION');

  const ApigeeSecurityFeedbackFeedbackType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Apigee Security Feedback enum for `reason`.
enum ApigeeSecurityFeedbackReason implements TerraformEnum {
  internalSystem('INTERNAL_SYSTEM'),
  nonRiskClient('NON_RISK_CLIENT'),
  nat('NAT'),
  penetrationTest('PENETRATION_TEST'),
  other('OTHER');

  const ApigeeSecurityFeedbackReason(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `feedback_contexts` block of
/// `google_apigee_security_feedback` (derived from provider schema).
@immutable
final class ApigeeSecurityFeedbackFeedbackContexts {
  const ApigeeSecurityFeedbackFeedbackContexts({
    required this.attribute,
    required this.values,
  });

  final TfArg<ApigeeSecurityFeedbackFeedbackContextsAttribute> attribute;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'attribute': attribute.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
enum ApigeeSecurityFeedbackFeedbackContextsAttribute implements TerraformEnum {
  attributeEnvironments('ATTRIBUTE_ENVIRONMENTS'),
  attributeIpAddressRanges('ATTRIBUTE_IP_ADDRESS_RANGES');

  const ApigeeSecurityFeedbackFeedbackContextsAttribute(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_apigee_security_feedback`.
///
/// Represents a feedback report from an Advanced API Security customer. Manages
/// customer feedback about ML models.
///
/// Apigee **security feedback** — labeled feedback for Advanced API Security
/// detections.
///
/// **Cost / apply:** gcp-cost: Apigee `1C2D-8C78-EC58` Advanced API Security
/// Add-on request SKU `572E-C6FE-7BB3` **$0.00035/request** (subscription
/// variant `39EF-C4B0-1015`). billing-behavior: requires never_apply
/// [GoogleApigeeOrganization] plus Advanced API Security entitlement.
/// Debt-only on `terradart-validate`. **Never** wire into apply-smoke.
final class GoogleApigeeSecurityFeedback extends Resource {
  static const String tfType = 'google_apigee_security_feedback';

  GoogleApigeeSecurityFeedback({
    required super.localName,
    required TfArg<String> feedbackId,
    required TfArg<String> orgId,
    required TfArg<ApigeeSecurityFeedbackFeedbackType> feedbackType,
    TfArg<ApigeeSecurityFeedbackReason>? reason,
    TfArg<String>? comment,
    TfArg<String>? displayName,
    required List<ApigeeSecurityFeedbackFeedbackContexts> feedbackContexts,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'feedback_id': feedbackId,
           'org_id': orgId,
           'feedback_type': feedbackType,
           'reason': ?reason,
           'comment': ?comment,
           'display_name': ?displayName,
           'feedback_contexts': TfArg.literal([
             for (final e in feedbackContexts) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleApigeeSecurityFeedbackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleApigeeSecurityFeedback>`.
  RefTo<GoogleApigeeSecurityFeedback> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `comment` attribute.
  TfRef<String> get commentRef => TfRef.attribute<String>(this, 'comment');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayNameRef =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `feedback_type` attribute.
  TfRef<String> get feedbackTypeRef =>
      TfRef.attribute<String>(this, 'feedback_type');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgIdRef => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `reason` attribute.
  TfRef<String> get reasonRef => TfRef.attribute<String>(this, 'reason');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `feedback_id` attribute.
  TfRef<String> get feedbackIdRef =>
      TfRef.attribute<String>(this, 'feedback_id');
}
