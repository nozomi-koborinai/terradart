// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_web_chat`.
const Set<String> _azurermBotChannelWebChatSensitive = <String>{};

/// Typed helper for the `site` block of
/// `azurerm_bot_channel_web_chat` (derived from provider schema).
@immutable
final class BotChannelWebChatSite {
  const BotChannelWebChatSite({
    this.endpointParametersEnabled,
    required this.name,
    this.storageEnabled,
    this.userUploadEnabled,
  });

  final TfArg<bool>? endpointParametersEnabled;

  final TfArg<String> name;

  final TfArg<bool>? storageEnabled;

  final TfArg<bool>? userUploadEnabled;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_parameters_enabled': ?endpointParametersEnabled?.toTfJson(),
    'name': name.toTfJson(),
    'storage_enabled': ?storageEnabled?.toTfJson(),
    'user_upload_enabled': ?userUploadEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_bot_channel_web_chat`.
final class AzurermBotChannelWebChat extends Resource {
  static const String tfType = 'azurerm_bot_channel_web_chat';

  AzurermBotChannelWebChat(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    List<BotChannelWebChatSite>? site,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'location': location,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (site != null)
             'site': TfArg.literal([for (final e in site) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelWebChatSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelWebChat>`.
  RefTo<AzurermBotChannelWebChat> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
