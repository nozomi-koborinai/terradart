// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_pinpoint_email_channel`.
const Set<String> _awsPinpointEmailChannelSensitive = <String>{};

/// Factory wrapper for `aws_pinpoint_email_channel`.
final class AwsPinpointEmailChannel extends Resource {
  static const String tfType = 'aws_pinpoint_email_channel';

  AwsPinpointEmailChannel({
    required super.localName,
    required TfArg<String> applicationId,
    TfArg<String>? configurationSet,
    TfArg<bool>? enabled,
    required TfArg<String> fromAddress,
    required TfArg<String> identity,
    TfArg<String>? orchestrationSendingRoleArn,
    TfArg<String>? region,
    RefTo<AwsIamRole>? roleArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_id': applicationId,
           'configuration_set': ?configurationSet,
           'enabled': ?enabled,
           'from_address': fromAddress,
           'identity': identity,
           'orchestration_sending_role_arn': ?orchestrationSendingRoleArn,
           'region': ?region,
           'role_arn': ?roleArn?.encodeAs('arn'),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsPinpointEmailChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsPinpointEmailChannel>`.
  RefTo<AwsPinpointEmailChannel> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `messages_per_second` attribute.
  TfRef<num> get messagesPerSecond =>
      TfRef.attribute<num>(this, 'messages_per_second');

  /// Reference to `application_id` attribute.
  TfRef<String> get applicationIdRef =>
      TfRef.attribute<String>(this, 'application_id');

  /// Reference to `configuration_set` attribute.
  TfRef<String> get configurationSetRef =>
      TfRef.attribute<String>(this, 'configuration_set');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabledRef => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `from_address` attribute.
  TfRef<String> get fromAddressRef =>
      TfRef.attribute<String>(this, 'from_address');

  /// Reference to `identity` attribute.
  TfRef<String> get identityRef => TfRef.attribute<String>(this, 'identity');

  /// Reference to `orchestration_sending_role_arn` attribute.
  TfRef<String> get orchestrationSendingRoleArnRef =>
      TfRef.attribute<String>(this, 'orchestration_sending_role_arn');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArnRef => TfRef.attribute<String>(this, 'role_arn');
}
