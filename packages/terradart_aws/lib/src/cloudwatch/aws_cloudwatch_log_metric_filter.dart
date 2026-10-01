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

  final CloudwatchLogMetricFilterUnit? unit;

  final TfArg<String> value;

  @internal
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
extension type const CloudwatchLogMetricFilterUnit._(TfArg<String> _)
    implements TfArg<String> {
  CloudwatchLogMetricFilterUnit.variable(String name)
    : this._(TfArg.variable(name));
  CloudwatchLogMetricFilterUnit.expression(String template)
    : this._(TfArg.expression(template));
  const CloudwatchLogMetricFilterUnit.arg(TfArg<String> arg) : this._(arg);

  static const seconds = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Seconds'),
  );
  static const microseconds = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Microseconds'),
  );
  static const milliseconds = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Milliseconds'),
  );
  static const bytes = CloudwatchLogMetricFilterUnit._(TfArgLiteral('Bytes'));
  static const kilobytes = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Kilobytes'),
  );
  static const megabytes = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Megabytes'),
  );
  static const gigabytes = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Gigabytes'),
  );
  static const terabytes = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Terabytes'),
  );
  static const bits = CloudwatchLogMetricFilterUnit._(TfArgLiteral('Bits'));
  static const kilobits = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Kilobits'),
  );
  static const megabits = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Megabits'),
  );
  static const gigabits = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Gigabits'),
  );
  static const terabits = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Terabits'),
  );
  static const percent = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Percent'),
  );
  static const count = CloudwatchLogMetricFilterUnit._(TfArgLiteral('Count'));
  static const bytesSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Bytes/Second'),
  );
  static const kilobytesSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Kilobytes/Second'),
  );
  static const megabytesSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Megabytes/Second'),
  );
  static const gigabytesSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Gigabytes/Second'),
  );
  static const terabytesSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Terabytes/Second'),
  );
  static const bitsSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Bits/Second'),
  );
  static const kilobitsSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Kilobits/Second'),
  );
  static const megabitsSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Megabits/Second'),
  );
  static const gigabitsSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Gigabits/Second'),
  );
  static const terabitsSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Terabits/Second'),
  );
  static const countSecond = CloudwatchLogMetricFilterUnit._(
    TfArgLiteral('Count/Second'),
  );
  static const none = CloudwatchLogMetricFilterUnit._(TfArgLiteral('None'));

  static const List<CloudwatchLogMetricFilterUnit> values = [
    seconds,
    microseconds,
    milliseconds,
    bytes,
    kilobytes,
    megabytes,
    gigabytes,
    terabytes,
    bits,
    kilobits,
    megabits,
    gigabits,
    terabits,
    percent,
    count,
    bytesSecond,
    kilobytesSecond,
    megabytesSecond,
    gigabytesSecond,
    terabytesSecond,
    bitsSecond,
    kilobitsSecond,
    megabitsSecond,
    gigabitsSecond,
    terabitsSecond,
    countSecond,
    none,
  ];
}

/// Factory wrapper for `aws_cloudwatch_log_metric_filter`.
final class AwsCloudwatchLogMetricFilter extends Resource {
  static const String tfType = 'aws_cloudwatch_log_metric_filter';

  AwsCloudwatchLogMetricFilter(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `apply_on_transformed_logs` attribute.
  TfRef<bool> get applyOnTransformedLogs =>
      TfRef.attribute<bool>(this, 'apply_on_transformed_logs');

  /// Reference to `log_group_name` attribute.
  TfRef<String> get logGroupName =>
      TfRef.attribute<String>(this, 'log_group_name');

  /// Reference to `pattern` attribute.
  TfRef<String> get pattern => TfRef.attribute<String>(this, 'pattern');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
