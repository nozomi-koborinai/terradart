// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_resiliencehubv2_assertion`.
const Set<String> _awsResiliencehubv2AssertionSensitive = <String>{};

/// Factory wrapper for `aws_resiliencehubv2_assertion`.
final class AwsResiliencehubv2Assertion extends Resource {
  static const String tfType = 'aws_resiliencehubv2_assertion';

  AwsResiliencehubv2Assertion({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serviceArn,
    required TfArg<String> text,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'service_arn': serviceArn,
           'text': text,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsResiliencehubv2AssertionSensitive;

  /// Reference to `assertion_id` attribute.
  TfRef<String> get assertionId =>
      TfRef.attribute<String>(this, 'assertion_id');
}
