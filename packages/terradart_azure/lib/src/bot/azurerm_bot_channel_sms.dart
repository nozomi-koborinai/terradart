// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_sms`.
const Set<String> _azurermBotChannelSmsSensitive = <String>{
  'sms_channel_auth_token',
};

/// Factory wrapper for `azurerm_bot_channel_sms`.
final class AzurermBotChannelSms extends Resource {
  static const String tfType = 'azurerm_bot_channel_sms';

  AzurermBotChannelSms(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> location,
    required TfArg<String> phoneNumber,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> smsChannelAccountSecurityId,
    required Sensitive<String> smsChannelAuthToken,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'location': location,
           'phone_number': phoneNumber,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sms_channel_account_security_id': smsChannelAccountSecurityId,
           'sms_channel_auth_token': smsChannelAuthToken,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelSmsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelSms>`.
  RefTo<AzurermBotChannelSms> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `phone_number` attribute.
  TfRef<String> get phoneNumber =>
      TfRef.attribute<String>(this, 'phone_number');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sms_channel_account_security_id` attribute.
  TfRef<String> get smsChannelAccountSecurityId =>
      TfRef.attribute<String>(this, 'sms_channel_account_security_id');

  /// Reference to `sms_channel_auth_token` attribute.
  TfRef<String> get smsChannelAuthToken =>
      TfRef.attribute<String>(this, 'sms_channel_auth_token');
}
