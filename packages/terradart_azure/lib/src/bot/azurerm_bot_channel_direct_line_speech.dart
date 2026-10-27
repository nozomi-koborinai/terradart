// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_direct_line_speech`.
const Set<String> _azurermBotChannelDirectLineSpeechSensitive = <String>{
  'cognitive_service_access_key',
};

/// Factory wrapper for `azurerm_bot_channel_direct_line_speech`.
final class AzurermBotChannelDirectLineSpeech extends Resource {
  static const String tfType = 'azurerm_bot_channel_direct_line_speech';

  AzurermBotChannelDirectLineSpeech(
    super.localName, {
    required TfArg<String> botName,
    TfArg<String>? cognitiveAccountId,
    Sensitive<String>? cognitiveServiceAccessKey,
    TfArg<String>? cognitiveServiceLocation,
    TfArg<String>? customSpeechModelId,
    TfArg<String>? customVoiceDeploymentId,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bot_name': botName,
           'cognitive_account_id': ?cognitiveAccountId,
           'cognitive_service_access_key': ?cognitiveServiceAccessKey,
           'cognitive_service_location': ?cognitiveServiceLocation,
           'custom_speech_model_id': ?customSpeechModelId,
           'custom_voice_deployment_id': ?customVoiceDeploymentId,
           'location': location,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermBotChannelDirectLineSpeechSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelDirectLineSpeech>`.
  RefTo<AzurermBotChannelDirectLineSpeech> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `cognitive_account_id` attribute.
  TfRef<String> get cognitiveAccountId =>
      TfRef.attribute<String>(this, 'cognitive_account_id');

  /// Reference to `cognitive_service_access_key` attribute.
  TfRef<String> get cognitiveServiceAccessKey =>
      TfRef.attribute<String>(this, 'cognitive_service_access_key');

  /// Reference to `cognitive_service_location` attribute.
  TfRef<String> get cognitiveServiceLocation =>
      TfRef.attribute<String>(this, 'cognitive_service_location');

  /// Reference to `custom_speech_model_id` attribute.
  TfRef<String> get customSpeechModelId =>
      TfRef.attribute<String>(this, 'custom_speech_model_id');

  /// Reference to `custom_voice_deployment_id` attribute.
  TfRef<String> get customVoiceDeploymentId =>
      TfRef.attribute<String>(this, 'custom_voice_deployment_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
