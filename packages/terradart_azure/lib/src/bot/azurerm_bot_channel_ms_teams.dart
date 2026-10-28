// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_ms_teams`.
const Set<String> _azurermBotChannelMsTeamsSensitive = <String>{};

/// Bot Channel Ms Teams Deployment enum for `deployment_environment`.
extension type const BotChannelMsTeamsDeploymentEnvironment._(TfArg<String> _)
    implements TfArg<String> {
  BotChannelMsTeamsDeploymentEnvironment.variable(String name)
    : this._(TfArg.variable(name));
  BotChannelMsTeamsDeploymentEnvironment.expression(String template)
    : this._(TfArg.expression(template));
  const BotChannelMsTeamsDeploymentEnvironment.arg(TfArg<String> arg)
    : this._(arg);

  static const commercialdeployment = BotChannelMsTeamsDeploymentEnvironment._(
    TfArgLiteral('CommercialDeployment'),
  );
  static const gccmoderatedeployment = BotChannelMsTeamsDeploymentEnvironment._(
    TfArgLiteral('GCCModerateDeployment'),
  );

  static const List<BotChannelMsTeamsDeploymentEnvironment> values = [
    commercialdeployment,
    gccmoderatedeployment,
  ];
}

/// Factory wrapper for `azurerm_bot_channel_ms_teams`.
final class AzurermBotChannelMsTeams extends Resource {
  static const String tfType = 'azurerm_bot_channel_ms_teams';

  AzurermBotChannelMsTeams(
    super.localName, {
    required TfArg<String> botName,
    TfArg<bool>? callingEnabled,
    TfArg<String>? callingWebHook,
    BotChannelMsTeamsDeploymentEnvironment? deploymentEnvironment,
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
           'calling_enabled': ?callingEnabled,
           'calling_web_hook': ?callingWebHook,
           'deployment_environment': ?deploymentEnvironment,
           'location': location,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelMsTeamsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelMsTeams>`.
  RefTo<AzurermBotChannelMsTeams> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `calling_enabled` attribute.
  TfRef<bool> get callingEnabled =>
      TfRef.attribute<bool>(this, 'calling_enabled');

  /// Reference to `calling_web_hook` attribute.
  TfRef<String> get callingWebHook =>
      TfRef.attribute<String>(this, 'calling_web_hook');

  /// Reference to `deployment_environment` attribute.
  TfRef<String> get deploymentEnvironment =>
      TfRef.attribute<String>(this, 'deployment_environment');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
