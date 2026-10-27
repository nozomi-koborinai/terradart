// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_email`.
const Set<String> _azurermBotChannelEmailSensitive = <String>{
  'email_password',
  'magic_code',
};

/// Factory wrapper for `azurerm_bot_channel_email`.
final class AzurermBotChannelEmail extends Resource {
  static const String tfType = 'azurerm_bot_channel_email';

  AzurermBotChannelEmail(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> emailAddress,
    Sensitive<String>? emailPassword,
    required TfArg<String> location,
    Sensitive<String>? magicCode,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'email_address': emailAddress,
           'email_password': ?emailPassword,
           'location': location,
           'magic_code': ?magicCode,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelEmailSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelEmail>`.
  RefTo<AzurermBotChannelEmail> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddress =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `email_password` attribute.
  TfRef<String> get emailPassword =>
      TfRef.attribute<String>(this, 'email_password');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `magic_code` attribute.
  TfRef<String> get magicCode => TfRef.attribute<String>(this, 'magic_code');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
