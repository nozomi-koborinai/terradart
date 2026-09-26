// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudwatch_log_metric_filter`.
const Set<String> _awsCloudwatchLogMetricFilterSensitive = <String>{};

/// Typed helper for the `metric_transformation` block of
/// `aws_cloudwatch_log_metric_filter` (derived from provider schema).
@immutable
final class CloudwatchLogMetricFilterMetricTransformation {
  const CloudwatchLogMetricFilterMetricTransformation({
    this.defaultValue,
    this.dimensions,
    required this.name,
    required this.namespace,
    this.unit,
    required this.value,
  });

  final TfArg<String>? defaultValue;

  final TfArg<Map<String, String>>? dimensions;

  final TfArg<String> name;

  final TfArg<String> namespace;

  final TfArg<String>? unit;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    if (defaultValue != null) 'default_value': defaultValue!.toTfJson(),
    if (dimensions != null) 'dimensions': dimensions!.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    if (unit != null) 'unit': unit!.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// Factory wrapper for `aws_cloudwatch_log_metric_filter`.
final class AwsCloudwatchLogMetricFilter extends Resource {
  static const String tfType = 'aws_cloudwatch_log_metric_filter';

  AwsCloudwatchLogMetricFilter({
    required super.localName,
    TfArg<bool>? applyOnTransformedLogs,
    required TfArg<String> logGroupName,
    required TfArg<String> name,
    required TfArg<String> pattern,
    TfArg<String>? region,
    required CloudwatchLogMetricFilterMetricTransformation metricTransformation,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (applyOnTransformedLogs != null)
             'apply_on_transformed_logs': applyOnTransformedLogs,
           'log_group_name': logGroupName,
           'name': name,
           'pattern': pattern,
           if (region != null) 'region': region,
           'metric_transformation': TfArg.literal(
             metricTransformation.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogMetricFilterSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
