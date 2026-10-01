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
           'enabled': ?enabled,
           'region': ?region,
           'sender_id': ?senderId,
           'short_code': ?shortCode,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointSmsChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointSmsChannel>`.
  RefTo<AwsPinpointSmsChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `promotional_messages_per_second` attribute.
  TfRef<num> get promotionalMessagesPerSecond =>
      TfRef.attribute<num>(this, 'promotional_messages_per_second');

  /// Reference to `transactional_messages_per_second` attribute.
  TfRef<num> get transactionalMessagesPerSecond =>
      TfRef.attribute<num>(this, 'transactional_messages_per_second');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationId =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `sender_id` attribute.
  TfRef<String> get senderId => TfRef.attribute<String>(this, 'sender_id');

  /// Reference to `short_code` attribute.
  TfRef<String> get shortCode => TfRef.attribute<String>(this, 'short_code');
}
