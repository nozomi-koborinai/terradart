// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53recoverycontrolconfig_control_panel`.
const Set<String> _awsRoute53recoverycontrolconfigControlPanelSensitive =
    <String>{};

/// Factory wrapper for `aws_route53recoverycontrolconfig_control_panel`.
final class AwsRoute53recoverycontrolconfigControlPanel extends Resource {
  static const String tfType = 'aws_route53recoverycontrolconfig_control_panel';

  AwsRoute53recoverycontrolconfigControlPanel({
    required super.localName,
    required TfArg<String> clusterArn,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_arn': clusterArn,
           'name': name,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRoute53recoverycontrolconfigControlPanelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `default_control_panel` attribute.
  TfRef<bool> get defaultControlPanel =>
      TfRef.attribute<bool>(this, 'default_control_panel');

  /// Reference to `routing_control_count` attribute.
  TfRef<num> get routingControlCount =>
      TfRef.attribute<num>(this, 'routing_control_count');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
