// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_trace_segment_destination`.
const Set<String> _awsXrayTraceSegmentDestinationSensitive = <String>{};

/// Xray Trace Segment enum for `destination`.
extension type const XrayTraceSegmentDestination._(TfArg<String> _)
    implements TfArg<String> {
  XrayTraceSegmentDestination.variable(String name)
    : this._(TfArg.variable(name));
  XrayTraceSegmentDestination.expression(String template)
    : this._(TfArg.expression(template));
  const XrayTraceSegmentDestination.arg(TfArg<String> arg) : this._(arg);

  static const xray = XrayTraceSegmentDestination._(TfArgLiteral('XRay'));
  static const cloudwatchlogs = XrayTraceSegmentDestination._(
    TfArgLiteral('CloudWatchLogs'),
  );

  static const List<XrayTraceSegmentDestination> values = [
    xray,
    cloudwatchlogs,
  ];
}

/// Factory wrapper for `aws_xray_trace_segment_destination`.
final class AwsXrayTraceSegmentDestination extends Resource {
  static const String tfType = 'aws_xray_trace_segment_destination';

  AwsXrayTraceSegmentDestination(
    super.localName, {
    required XrayTraceSegmentDestination destination,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'destination': destination, 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields => _awsXrayTraceSegmentDestinationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsXrayTraceSegmentDestination>`.
  RefTo<AwsXrayTraceSegmentDestination> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
