// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_application_layer_automatic_response`.
const Set<String> _awsShieldApplicationLayerAutomaticResponseSensitive =
    <String>{};

/// Factory wrapper for `aws_shield_application_layer_automatic_response`.
final class AwsShieldApplicationLayerAutomaticResponse extends Resource {
  static const String tfType =
      'aws_shield_application_layer_automatic_response';

  AwsShieldApplicationLayerAutomaticResponse({
    required super.localName,
    required TfArg<String> action,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'action': action, 'resource_arn': resourceArn},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsShieldApplicationLayerAutomaticResponseSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
