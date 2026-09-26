// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_account_suppression_attributes`.
const Set<String> _awsSesv2AccountSuppressionAttributesSensitive = <String>{};

/// Factory wrapper for `aws_sesv2_account_suppression_attributes`.
final class AwsSesv2AccountSuppressionAttributes extends Resource {
  static const String tfType = 'aws_sesv2_account_suppression_attributes';

  AwsSesv2AccountSuppressionAttributes({
    required super.localName,
    TfArg<String>? region,
    required TfArg<List<String>> suppressedReasons,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'suppressed_reasons': suppressedReasons,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2AccountSuppressionAttributesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
