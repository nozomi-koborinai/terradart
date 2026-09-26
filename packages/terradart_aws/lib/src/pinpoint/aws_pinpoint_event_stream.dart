// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_event_stream`.
const Set<String> _awsPinpointEventStreamSensitive = <String>{};

/// Factory wrapper for `aws_pinpoint_event_stream`.
final class AwsPinpointEventStream extends Resource {
  static const String tfType = 'aws_pinpoint_event_stream';

  AwsPinpointEventStream({
    required super.localName,
    required TfArg<String> applicationId,
    required TfArg<String> destinationStreamArn,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'destination_stream_arn': destinationStreamArn,
           if (region != null) 'region': region,
           'role_arn': roleArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointEventStreamSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
