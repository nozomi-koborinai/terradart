// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_alexa`.
const Set<String> _azurermBotChannelAlexaSensitive = <String>{};

/// Factory wrapper for `azurerm_bot_channel_alexa`.
final class AzurermBotChannelAlexa extends Resource {
  static const String tfType = 'azurerm_bot_channel_alexa';

  AzurermBotChannelAlexa(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skillId,
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
           'skill_id': skillId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelAlexaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelAlexa>`.
  RefTo<AzurermBotChannelAlexa> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `skill_id` attribute.
  TfRef<String> get skillId => TfRef.attribute<String>(this, 'skill_id');
}
