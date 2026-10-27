// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_connection`.
const Set<String> _azurermBotConnectionSensitive = <String>{'client_secret'};

/// Factory wrapper for `azurerm_bot_connection`.
final class AzurermBotConnection extends Resource {
  static const String tfType = 'azurerm_bot_connection';

  AzurermBotConnection(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> clientId,
    required Sensitive<String> clientSecret,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? scopes,
    required TfArg<String> serviceProviderName,
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
           'location': location,
           'name': name,
           'parameters': ?parameters,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scopes': ?scopes,
           'service_provider_name': serviceProviderName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotConnection>`.
  RefTo<AzurermBotConnection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `client_secret` attribute.
  TfRef<String> get clientSecret =>
      TfRef.attribute<String>(this, 'client_secret');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scopes` attribute.
  TfRef<String> get scopes => TfRef.attribute<String>(this, 'scopes');

  /// Reference to `service_provider_name` attribute.
  TfRef<String> get serviceProviderName =>
      TfRef.attribute<String>(this, 'service_provider_name');
}
