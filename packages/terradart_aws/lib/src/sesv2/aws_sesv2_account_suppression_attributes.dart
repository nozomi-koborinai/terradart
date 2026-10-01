// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sesv2_account_suppression_attributes`.
const Set<String> _awsSesv2AccountSuppressionAttributesSensitive = <String>{};

/// Sesv2 Account Suppression Attributes Suppressed enum for `suppressed_reasons`.
extension type const Sesv2AccountSuppressionAttributesSuppressedReasons._(
  TfArg<String> _
) implements TfArg<String> {
  Sesv2AccountSuppressionAttributesSuppressedReasons.variable(String name)
    : this._(TfArg.variable(name));
  Sesv2AccountSuppressionAttributesSuppressedReasons.expression(String template)
    : this._(TfArg.expression(template));
  const Sesv2AccountSuppressionAttributesSuppressedReasons.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const bounce = Sesv2AccountSuppressionAttributesSuppressedReasons._(
    TfArgLiteral('BOUNCE'),
  );
  static const complaint = Sesv2AccountSuppressionAttributesSuppressedReasons._(
    TfArgLiteral('COMPLAINT'),
  );

  static const List<Sesv2AccountSuppressionAttributesSuppressedReasons> values =
      [bounce, complaint];
}

/// Factory wrapper for `aws_sesv2_account_suppression_attributes`.
final class AwsSesv2AccountSuppressionAttributes extends Resource {
  static const String tfType = 'aws_sesv2_account_suppression_attributes';

  AwsSesv2AccountSuppressionAttributes(
    super.localName, {
    TfArg<String>? region,
    required List<Sesv2AccountSuppressionAttributesSuppressedReasons>
    suppressedReasons,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'region': ?region,
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

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `suppressed_reasons` attribute.
  TfRef<List<String>> get suppressedReasons =>
      TfRef.attribute<List<String>>(this, 'suppressed_reasons');
}
