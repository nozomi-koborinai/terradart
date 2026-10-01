// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_apigee_security_feedback`.
const Set<String> _googleApigeeSecurityFeedbackSensitive = <String>{};

/// Apigee Security Feedback enum for `feedback_type`.
extension type const ApigeeSecurityFeedbackType._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeSecurityFeedbackType.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeSecurityFeedbackType.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeSecurityFeedbackType.arg(TfArg<String> arg) : this._(arg);

  static const excludedDetection = ApigeeSecurityFeedbackType._(
    TfArgLiteral('EXCLUDED_DETECTION'),
  );

  static const List<ApigeeSecurityFeedbackType> values = [excludedDetection];
}

/// Apigee Security Feedback enum for `reason`.
extension type const ApigeeSecurityFeedbackReason._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeSecurityFeedbackReason.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeSecurityFeedbackReason.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeSecurityFeedbackReason.arg(TfArg<String> arg) : this._(arg);

  static const internalSystem = ApigeeSecurityFeedbackReason._(
    TfArgLiteral('INTERNAL_SYSTEM'),
  );
  static const nonRiskClient = ApigeeSecurityFeedbackReason._(
    TfArgLiteral('NON_RISK_CLIENT'),
  );
  static const nat = ApigeeSecurityFeedbackReason._(TfArgLiteral('NAT'));
  static const penetrationTest = ApigeeSecurityFeedbackReason._(
    TfArgLiteral('PENETRATION_TEST'),
  );
  static const other = ApigeeSecurityFeedbackReason._(TfArgLiteral('OTHER'));

  static const List<ApigeeSecurityFeedbackReason> values = [
    internalSystem,
    nonRiskClient,
    nat,
    penetrationTest,
    other,
  ];
}

/// Typed helper for the `feedback_contexts` block of
/// `google_apigee_security_feedback` (derived from provider schema).
@immutable
final class ApigeeSecurityFeedbackContexts {
  const ApigeeSecurityFeedbackContexts({
    required this.attribute,
    required this.values,
  });

  final ApigeeSecurityFeedbackAttribute attribute;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'attribute': attribute.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// `attribute` — derived from the provider schema description.
extension type const ApigeeSecurityFeedbackAttribute._(TfArg<String> _)
    implements TfArg<String> {
  ApigeeSecurityFeedbackAttribute.variable(String name)
    : this._(TfArg.variable(name));
  ApigeeSecurityFeedbackAttribute.expression(String template)
    : this._(TfArg.expression(template));
  const ApigeeSecurityFeedbackAttribute.arg(TfArg<String> arg) : this._(arg);

  static const attributeEnvironments = ApigeeSecurityFeedbackAttribute._(
    TfArgLiteral('ATTRIBUTE_ENVIRONMENTS'),
  );
  static const attributeIpAddressRanges = ApigeeSecurityFeedbackAttribute._(
    TfArgLiteral('ATTRIBUTE_IP_ADDRESS_RANGES'),
  );

  static const List<ApigeeSecurityFeedbackAttribute> values = [
    attributeEnvironments,
    attributeIpAddressRanges,
  ];
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

  GoogleApigeeSecurityFeedback(
    super.localName, {
    required TfArg<String> feedbackId,
    required TfArg<String> orgId,
    required ApigeeSecurityFeedbackType feedbackType,
    ApigeeSecurityFeedbackReason? reason,
    TfArg<String>? comment,
    TfArg<String>? displayName,
    required List<ApigeeSecurityFeedbackContexts> feedbackContexts,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `feedback_id` attribute.
  TfRef<String> get feedbackId => TfRef.attribute<String>(this, 'feedback_id');

  /// Reference to `feedback_type` attribute.
  TfRef<String> get feedbackType =>
      TfRef.attribute<String>(this, 'feedback_type');

  /// Reference to `org_id` attribute.
  TfRef<String> get orgId => TfRef.attribute<String>(this, 'org_id');

  /// Reference to `reason` attribute.
  TfRef<String> get reason => TfRef.attribute<String>(this, 'reason');
}
