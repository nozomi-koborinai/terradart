// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_pinpoint_sms_channel`.
const Set<String> _awsPinpointSmsChannelSensitive = <String>{};

/// Factory wrapper for `aws_pinpoint_sms_channel`.
final class AwsPinpointSmsChannel extends Resource {
  static const String tfType = 'aws_pinpoint_sms_channel';

  AwsPinpointSmsChannel({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<bool>? enabled,
    TfArg<String>? region,
    TfArg<String>? senderId,
    TfArg<String>? shortCode,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           if (enabled != null) 'enabled': enabled,
           if (region != null) 'region': region,
           if (senderId != null) 'sender_id': senderId,
           if (shortCode != null) 'short_code': shortCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointSmsChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `promotional_messages_per_second` attribute.
  TfRef<num> get promotionalMessagesPerSecond =>
      TfRef.attribute<num>(this, 'promotional_messages_per_second');

  /// Reference to `transactional_messages_per_second` attribute.
  TfRef<num> get transactionalMessagesPerSecond =>
      TfRef.attribute<num>(this, 'transactional_messages_per_second');
}
