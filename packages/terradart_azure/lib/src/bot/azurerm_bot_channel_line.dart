// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_line`.
const Set<String> _azurermBotChannelLineSensitive = <String>{
  'line_channel.access_token',
  'line_channel.secret',
};

/// Typed helper for the `line_channel` block of
/// `azurerm_bot_channel_line` (derived from provider schema).
@immutable
final class BotChannelLineChannel {
  const BotChannelLineChannel({
    required this.accessToken,
    required this.secret,
  });

  final Sensitive<String> accessToken;

  final Sensitive<String> secret;

  @internal
  Map<String, Object?> encode() => {
    'access_token': accessToken.toTfJson(),
    'secret': secret.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_bot_channel_line`.
final class AzurermBotChannelLine extends Resource {
  static const String tfType = 'azurerm_bot_channel_line';

  AzurermBotChannelLine(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<BotChannelLineChannel> lineChannel,
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
           'line_channel': TfArg.literal([
             for (final e in lineChannel) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelLineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelLine>`.
  RefTo<AzurermBotChannelLine> get ref => RefTo.of(this);

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
