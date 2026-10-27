// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_slack`.
const Set<String> _azurermBotChannelSlackSensitive = <String>{
  'client_secret',
  'signing_secret',
  'verification_token',
};

/// Factory wrapper for `azurerm_bot_channel_slack`.
final class AzurermBotChannelSlack extends Resource {
  static const String tfType = 'azurerm_bot_channel_slack';

  AzurermBotChannelSlack(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> clientId,
    required Sensitive<String> clientSecret,
    TfArg<String>? landingPageUrl,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    Sensitive<String>? signingSecret,
    required Sensitive<String> verificationToken,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'client_id': clientId,
           'client_secret': clientSecret,
           'landing_page_url': ?landingPageUrl,
           'location': location,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'signing_secret': ?signingSecret,
           'verification_token': verificationToken,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelSlackSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelSlack>`.
  RefTo<AzurermBotChannelSlack> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `landing_page_url` attribute.
  TfRef<String> get landingPageUrl =>
      TfRef.attribute<String>(this, 'landing_page_url');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `signing_secret` attribute.
  TfRef<String> get signingSecret =>
      TfRef.attribute<String>(this, 'signing_secret');

  /// Reference to `verification_token` attribute.
  TfRef<String> get verificationToken =>
      TfRef.attribute<String>(this, 'verification_token');
}
