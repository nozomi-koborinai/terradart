// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ce_anomaly_monitor`.
const Set<String> _awsCeAnomalyMonitorSensitive = <String>{};

/// Ce Anomaly Monitor Monitor enum for `monitor_dimension`.
enum CeAnomalyMonitorMonitorDimension implements TerraformEnum {
  service('SERVICE'),
  linkedAccount('LINKED_ACCOUNT'),
  tag('TAG'),
  costCategory('COST_CATEGORY');

  const CeAnomalyMonitorMonitorDimension(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ce Anomaly Monitor Monitor enum for `monitor_type`.
enum CeAnomalyMonitorMonitorType implements TerraformEnum {
  dimensional('DIMENSIONAL'),
  custom('CUSTOM');

  const CeAnomalyMonitorMonitorType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ce_anomaly_monitor`.
final class AwsCeAnomalyMonitor extends Resource {
  static const String tfType = 'aws_ce_anomaly_monitor';

  AwsCeAnomalyMonitor({
    required super.localName,
    TfArg<CeAnomalyMonitorMonitorDimension>? monitorDimension,
    TfArg<String>? monitorSpecification,
    required TfArg<CeAnomalyMonitorMonitorType> monitorType,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (monitorDimension != null) 'monitor_dimension': monitorDimension,
           if (monitorSpecification != null)
             'monitor_specification': monitorSpecification,
           'monitor_type': monitorType,
           'name': name,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCeAnomalyMonitorSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
