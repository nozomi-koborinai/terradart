// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_application_layer_automatic_response`.
const Set<String> _awsShieldApplicationLayerAutomaticResponseSensitive =
    <String>{};

/// Shield Application Layer Automatic Response enum for `action`.
enum ShieldApplicationLayerAutomaticResponseAction implements TerraformEnum {
  block('BLOCK'),
  count('COUNT');

  const ShieldApplicationLayerAutomaticResponseAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_shield_application_layer_automatic_response`.
final class AwsShieldApplicationLayerAutomaticResponse extends Resource {
  static const String tfType =
      'aws_shield_application_layer_automatic_response';

  AwsShieldApplicationLayerAutomaticResponse({
    required super.localName,
    required TfArg<ShieldApplicationLayerAutomaticResponseAction> action,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsShieldApplicationLayerAutomaticResponse>`.
  RefTo<AwsShieldApplicationLayerAutomaticResponse> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
