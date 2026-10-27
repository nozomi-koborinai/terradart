// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_facebook`.
const Set<String> _azurermBotChannelFacebookSensitive = <String>{
  'facebook_application_secret',
  'page.access_token',
};

/// Typed helper for the `page` block of
/// `azurerm_bot_channel_facebook` (derived from provider schema).
@immutable
final class BotChannelFacebookPage {
  const BotChannelFacebookPage({required this.accessToken, required this.id});

  final Sensitive<String> accessToken;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'access_token': accessToken.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_bot_channel_facebook`.
final class AzurermBotChannelFacebook extends Resource {
  static const String tfType = 'azurerm_bot_channel_facebook';

  AzurermBotChannelFacebook(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> facebookApplicationId,
    required Sensitive<String> facebookApplicationSecret,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<BotChannelFacebookPage> page,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'facebook_application_id': facebookApplicationId,
           'facebook_application_secret': facebookApplicationSecret,
           'location': location,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'page': TfArg.literal([for (final e in page) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelFacebookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelFacebook>`.
  RefTo<AzurermBotChannelFacebook> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `facebook_application_id` attribute.
  TfRef<String> get facebookApplicationId =>
      TfRef.attribute<String>(this, 'facebook_application_id');

  /// Reference to `facebook_application_secret` attribute.
  TfRef<String> get facebookApplicationSecret =>
      TfRef.attribute<String>(this, 'facebook_application_secret');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
