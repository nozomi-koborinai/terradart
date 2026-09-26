// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_enabled_standards`.
const Set<String> _awsSecurityhubEnabledStandardsSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_enabled_standards`.
final class DataAwsSecurityhubEnabledStandards extends Data {
  static const String tfType = 'aws_securityhub_enabled_standards';

  DataAwsSecurityhubEnabledStandards({
    required super.localName,
    TfArg<String>? region,
    TfArg<List<String>>? standardsSubscriptionArns,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (standardsSubscriptionArns != null)
             'standards_subscription_arns': standardsSubscriptionArns,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSecurityhubEnabledStandardsSensitive;

  /// Reference to `standards_subscriptions` attribute.
  TfRef<List<Map<String, Object?>>> get standardsSubscriptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'standards_subscriptions',
      );
}
