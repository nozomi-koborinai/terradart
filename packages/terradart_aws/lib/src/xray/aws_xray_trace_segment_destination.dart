// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_xray_trace_segment_destination`.
const Set<String> _awsXrayTraceSegmentDestinationSensitive = <String>{};

/// Factory wrapper for `aws_xray_trace_segment_destination`.
final class AwsXrayTraceSegmentDestination extends Resource {
  static const String tfType = 'aws_xray_trace_segment_destination';

  AwsXrayTraceSegmentDestination({
    required super.localName,
    required TfArg<String> destination,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination': destination,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsXrayTraceSegmentDestinationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
