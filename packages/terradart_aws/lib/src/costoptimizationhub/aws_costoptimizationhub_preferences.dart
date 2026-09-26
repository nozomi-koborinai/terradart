// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_costoptimizationhub_preferences`.
const Set<String> _awsCostoptimizationhubPreferencesSensitive = <String>{};

/// Factory wrapper for `aws_costoptimizationhub_preferences`.
final class AwsCostoptimizationhubPreferences extends Resource {
  static const String tfType = 'aws_costoptimizationhub_preferences';

  AwsCostoptimizationhubPreferences({
    required super.localName,
    TfArg<String>? memberAccountDiscountVisibility,
    TfArg<String>? savingsEstimationMode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (memberAccountDiscountVisibility != null)
             'member_account_discount_visibility':
                 memberAccountDiscountVisibility,
           if (savingsEstimationMode != null)
             'savings_estimation_mode': savingsEstimationMode,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCostoptimizationhubPreferencesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
