// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_account_suppression_attributes`.
const Set<String> _awsSesv2AccountSuppressionAttributesSensitive = <String>{};

/// Sesv2 Account Suppression Attributes Suppressed enum for `suppressed_reasons`.
enum Sesv2AccountSuppressionAttributesSuppressedReasons
    implements TerraformEnum {
  bounce('BOUNCE'),
  complaint('COMPLAINT');

  const Sesv2AccountSuppressionAttributesSuppressedReasons(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_sesv2_account_suppression_attributes`.
final class AwsSesv2AccountSuppressionAttributes extends Resource {
  static const String tfType = 'aws_sesv2_account_suppression_attributes';

  AwsSesv2AccountSuppressionAttributes({
    required super.localName,
    TfArg<String>? region,
    required List<TfArg<Sesv2AccountSuppressionAttributesSuppressedReasons>>
    suppressedReasons,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'suppressed_reasons': TfArg.literal([
             for (final e in suppressedReasons) e.toTfJson(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSesv2AccountSuppressionAttributesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesv2AccountSuppressionAttributes>`.
  RefTo<AwsSesv2AccountSuppressionAttributes> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
