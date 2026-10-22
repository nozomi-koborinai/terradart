// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pricingplanmanager_subscription`.
const Set<String> _awsPricingplanmanagerSubscriptionSensitive = <String>{};

/// Pricingplanmanager Subscription Approval enum for `approval_mode`.
extension type const PricingplanmanagerSubscriptionApprovalMode._(
  TfArg<String> _
) implements TfArg<String> {
  PricingplanmanagerSubscriptionApprovalMode.variable(String name)
    : this._(TfArg.variable(name));
  PricingplanmanagerSubscriptionApprovalMode.expression(String template)
    : this._(TfArg.expression(template));
  const PricingplanmanagerSubscriptionApprovalMode.arg(TfArg<String> arg)
    : this._(arg);

  static const manual = PricingplanmanagerSubscriptionApprovalMode._(
    TfArgLiteral('MANUAL'),
  );
  static const immediate = PricingplanmanagerSubscriptionApprovalMode._(
    TfArgLiteral('IMMEDIATE'),
  );

  static const List<PricingplanmanagerSubscriptionApprovalMode> values = [
    manual,
    immediate,
  ];
}

/// Factory wrapper for `aws_pricingplanmanager_subscription`.
final class AwsPricingplanmanagerSubscription extends Resource {
  static const String tfType = 'aws_pricingplanmanager_subscription';

  AwsPricingplanmanagerSubscription(
    super.localName, {
    PricingplanmanagerSubscriptionApprovalMode? approvalMode,
    required TfArg<String> planFamily,
    required TfArg<String> planTier,
    required TfArg<List<String>> resourceArns,
    TfArg<String>? usageLevel,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'approval_mode': ?approvalMode,
           'plan_family': planFamily,
           'plan_tier': planTier,
           'resource_arns': resourceArns,
           'usage_level': ?usageLevel,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPricingplanmanagerSubscriptionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPricingplanmanagerSubscription>`.
  RefTo<AwsPricingplanmanagerSubscription> get ref => RefTo.of(this);

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `scheduled_change` attribute.
  TfRef<List<Map<String, Object?>>> get scheduledChange =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scheduled_change');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');

  /// Reference to `approval_mode` attribute.
  TfRef<String> get approvalMode =>
      TfRef.attribute<String>(this, 'approval_mode');

  /// Reference to `plan_family` attribute.
  TfRef<String> get planFamily => TfRef.attribute<String>(this, 'plan_family');

  /// Reference to `plan_tier` attribute.
  TfRef<String> get planTier => TfRef.attribute<String>(this, 'plan_tier');

  /// Reference to `resource_arns` attribute.
  TfRef<List<String>> get resourceArns =>
      TfRef.attribute<List<String>>(this, 'resource_arns');

  /// Reference to `usage_level` attribute.
  TfRef<String> get usageLevel => TfRef.attribute<String>(this, 'usage_level');
}
