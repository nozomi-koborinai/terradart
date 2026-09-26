// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_prometheus_alert_manager_definition`.
const Set<String> _awsPrometheusAlertManagerDefinitionSensitive = <String>{};

/// Factory wrapper for `aws_prometheus_alert_manager_definition`.
final class AwsPrometheusAlertManagerDefinition extends Resource {
  static const String tfType = 'aws_prometheus_alert_manager_definition';

  AwsPrometheusAlertManagerDefinition({
    required super.localName,
    required TfArg<String> definition,
    TfArg<String>? region,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'definition': definition,
           if (region != null) 'region': region,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsPrometheusAlertManagerDefinitionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
