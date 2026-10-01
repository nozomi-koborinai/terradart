// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloudwatch/aws_cloudwatch_log_group.dart' show AwsCloudwatchLogGroup;

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

  final TfArg<CloudwatchLogMetricFilterUnit>? unit;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'default_value': ?defaultValue?.toTfJson(),
    'dimensions': ?dimensions?.toTfJson(),
    'name': name.toTfJson(),
    'namespace': namespace.toTfJson(),
    'unit': ?unit?.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `unit` — derived from the provider schema description.
enum CloudwatchLogMetricFilterUnit implements TerraformEnum {
  seconds('Seconds'),
  microseconds('Microseconds'),
  milliseconds('Milliseconds'),
  bytes('Bytes'),
  kilobytes('Kilobytes'),
  megabytes('Megabytes'),
  gigabytes('Gigabytes'),
  terabytes('Terabytes'),
  bits('Bits'),
  kilobits('Kilobits'),
  megabits('Megabits'),
  gigabits('Gigabits'),
  terabits('Terabits'),
  percent('Percent'),
  count('Count'),
  bytesSecond('Bytes/Second'),
  kilobytesSecond('Kilobytes/Second'),
  megabytesSecond('Megabytes/Second'),
  gigabytesSecond('Gigabytes/Second'),
  terabytesSecond('Terabytes/Second'),
  bitsSecond('Bits/Second'),
  kilobitsSecond('Kilobits/Second'),
  megabitsSecond('Megabits/Second'),
  gigabitsSecond('Gigabits/Second'),
  terabitsSecond('Terabits/Second'),
  countSecond('Count/Second'),
  none('None');

  const CloudwatchLogMetricFilterUnit(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudwatch_log_metric_filter`.
final class AwsCloudwatchLogMetricFilter extends Resource {
  static const String tfType = 'aws_cloudwatch_log_metric_filter';

  AwsCloudwatchLogMetricFilter({
    required super.localName,
    TfArg<bool>? applyOnTransformedLogs,
    required RefTo<AwsCloudwatchLogGroup> logGroupName,
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
           'apply_on_transformed_logs': ?applyOnTransformedLogs,
           'log_group_name': logGroupName.encodeAs('name'),
           'name': name,
           'pattern': pattern,
           'region': ?region,
           'metric_transformation': TfArg.literal(
             metricTransformation.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudwatchLogMetricFilterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudwatchLogMetricFilter>`.
  RefTo<AwsCloudwatchLogMetricFilter> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apply_on_transformed_logs` attribute.
  TfRef<bool> get applyOnTransformedLogsRef =>
      TfRef.attribute<bool>(this, 'apply_on_transformed_logs');

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupNameRef =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `pattern` attribute.
  TfRef<String> get patternRef => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
