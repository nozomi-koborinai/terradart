// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoverycontrolconfig_routing_control`.
const Set<String> _awsRoute53recoverycontrolconfigRoutingControlSensitive =
    <String>{};

/// Factory wrapper for `aws_route53recoverycontrolconfig_routing_control`.
final class AwsRoute53recoverycontrolconfigRoutingControl extends Resource {
  static const String tfType =
      'aws_route53recoverycontrolconfig_routing_control';

  AwsRoute53recoverycontrolconfigRoutingControl({
    required super.localName,
    required TfArg<String> clusterArn,
    TfArg<String>? controlPanelArn,
    required TfArg<String> name,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           'control_panel_arn': ?controlPanelArn,
           'name': name,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoverycontrolconfigRoutingControlSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRoute53recoverycontrolconfigRoutingControl>`.
  RefTo<AwsRoute53recoverycontrolconfigRoutingControl> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `cluster_arn` attribute.
  TfRef<String> get clusterArn => TfRef.attribute<String>(this, 'cluster_arn');

  /// Reference to `control_panel_arn` attribute.
  TfRef<String> get controlPanelArn =>
      TfRef.attribute<String>(this, 'control_panel_arn');
}
