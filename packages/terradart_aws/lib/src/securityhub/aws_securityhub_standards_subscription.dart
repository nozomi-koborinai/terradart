// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_standards_subscription`.
const Set<String> _awsSecurityhubStandardsSubscriptionSensitive = <String>{};

/// Factory wrapper for `aws_securityhub_standards_subscription`.
final class AwsSecurityhubStandardsSubscription extends Resource {
  static const String tfType = 'aws_securityhub_standards_subscription';

  AwsSecurityhubStandardsSubscription({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> standardsArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'standards_arn': standardsArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubStandardsSubscriptionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
