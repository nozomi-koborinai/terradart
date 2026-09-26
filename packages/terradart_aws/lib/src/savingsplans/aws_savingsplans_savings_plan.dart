// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_savingsplans_savings_plan`.
const Set<String> _awsSavingsplansSavingsPlanSensitive = <String>{};

/// Factory wrapper for `aws_savingsplans_savings_plan`.
final class AwsSavingsplansSavingsPlan extends Resource {
  static const String tfType = 'aws_savingsplans_savings_plan';

  AwsSavingsplansSavingsPlan({
    required super.localName,
    required TfArg<String> commitment,
    TfArg<String>? purchaseTime,
    required TfArg<String> savingsPlanOfferingId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? upfrontPaymentAmount,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'commitment': commitment,
           if (purchaseTime != null) 'purchase_time': purchaseTime,
           'savings_plan_offering_id': savingsPlanOfferingId,
           if (tags != null) 'tags': tags,
           if (upfrontPaymentAmount != null)
             'upfront_payment_amount': upfrontPaymentAmount,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSavingsplansSavingsPlanSensitive;

  /// Reference to `currency` attribute.
  TfRef<String> get currency => TfRef.attribute<String>(this, 'currency');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ec2_instance_family` attribute.
  TfRef<String> get ec2InstanceFamily =>
      TfRef.attribute<String>(this, 'ec2_instance_family');

  /// Reference to `end` attribute.
  TfRef<String> get end => TfRef.attribute<String>(this, 'end');

  /// Reference to `offering_id` attribute.
  TfRef<String> get offeringId => TfRef.attribute<String>(this, 'offering_id');

  /// Reference to `payment_option` attribute.
  TfRef<String> get paymentOption =>
      TfRef.attribute<String>(this, 'payment_option');

  /// Reference to `product_types` attribute.
  TfRef<List<String>> get productTypes =>
      TfRef.attribute<List<String>>(this, 'product_types');

  /// Reference to `recurring_payment_amount` attribute.
  TfRef<String> get recurringPaymentAmount =>
      TfRef.attribute<String>(this, 'recurring_payment_amount');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `returnable_until` attribute.
  TfRef<String> get returnableUntil =>
      TfRef.attribute<String>(this, 'returnable_until');

  /// Reference to `savings_plan_arn` attribute.
  TfRef<String> get savingsPlanArn =>
      TfRef.attribute<String>(this, 'savings_plan_arn');

  /// Reference to `savings_plan_id` attribute.
  TfRef<String> get savingsPlanId =>
      TfRef.attribute<String>(this, 'savings_plan_id');

  /// Reference to `savings_plan_type` attribute.
  TfRef<String> get savingsPlanType =>
      TfRef.attribute<String>(this, 'savings_plan_type');

  /// Reference to `start` attribute.
  TfRef<String> get start => TfRef.attribute<String>(this, 'start');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `term_duration_in_seconds` attribute.
  TfRef<num> get termDurationInSeconds =>
      TfRef.attribute<num>(this, 'term_duration_in_seconds');
}
