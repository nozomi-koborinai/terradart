// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_application_layer_automatic_response`.
const Set<String> _awsShieldApplicationLayerAutomaticResponseSensitive =
    <String>{};

/// Shield Application Layer Automatic Response enum for `action`.
extension type const ShieldApplicationLayerAutomaticResponseAction._(
  TfArg<String> _
) implements TfArg<String> {
  ShieldApplicationLayerAutomaticResponseAction.variable(String name)
    : this._(TfArg.variable(name));
  ShieldApplicationLayerAutomaticResponseAction.expression(String template)
    : this._(TfArg.expression(template));
  const ShieldApplicationLayerAutomaticResponseAction.arg(TfArg<String> arg)
    : this._(arg);

  static const block = ShieldApplicationLayerAutomaticResponseAction._(
    TfArgLiteral('BLOCK'),
  );
  static const count = ShieldApplicationLayerAutomaticResponseAction._(
    TfArgLiteral('COUNT'),
  );

  static const List<ShieldApplicationLayerAutomaticResponseAction> values = [
    block,
    count,
  ];
}

/// Factory wrapper for `aws_shield_application_layer_automatic_response`.
final class AwsShieldApplicationLayerAutomaticResponse extends Resource {
  static const String tfType =
      'aws_shield_application_layer_automatic_response';

  AwsShieldApplicationLayerAutomaticResponse(
    super.localName, {
    required ShieldApplicationLayerAutomaticResponseAction action,
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
