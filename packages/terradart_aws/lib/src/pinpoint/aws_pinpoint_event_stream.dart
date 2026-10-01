// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

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
    required RefTo<AwsIamRole> roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'destination_stream_arn': destinationStreamArn,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointEventStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointEventStream>`.
  RefTo<AwsPinpointEventStream> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `destination_stream_arn` attribute.
  TfRef<String> get destinationStreamArn =>
      TfRef.attribute<String>(this, 'destination_stream_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');
}
