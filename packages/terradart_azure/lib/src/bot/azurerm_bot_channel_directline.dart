// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_directline`.
const Set<String> _azurermBotChannelDirectlineSensitive = <String>{
  'extension_key_1',
  'extension_key_2',
  'site.key',
  'site.key2',
};

/// Typed helper for the `site` block of
/// `azurerm_bot_channel_directline` (derived from provider schema).
@immutable
final class BotChannelDirectlineSite {
  const BotChannelDirectlineSite({
    this.enabled,
    this.endpointParametersEnabled,
    this.enhancedAuthenticationEnabled,
    required this.name,
    this.storageEnabled,
    this.trustedOrigins,
    this.userUploadEnabled,
    this.v1Allowed,
    this.v3Allowed,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? endpointParametersEnabled;

  final TfArg<bool>? enhancedAuthenticationEnabled;

  final TfArg<String> name;

  final TfArg<bool>? storageEnabled;

  final TfArg<List<String>>? trustedOrigins;

  final TfArg<bool>? userUploadEnabled;

  final TfArg<bool>? v1Allowed;

  final TfArg<bool>? v3Allowed;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'endpoint_parameters_enabled': ?endpointParametersEnabled?.toTfJson(),
    'enhanced_authentication_enabled': ?enhancedAuthenticationEnabled
        ?.toTfJson(),
    'name': name.toTfJson(),
    'storage_enabled': ?storageEnabled?.toTfJson(),
    'trusted_origins': ?trustedOrigins?.toTfJson(),
    'user_upload_enabled': ?userUploadEnabled?.toTfJson(),
    'v1_allowed': ?v1Allowed?.toTfJson(),
    'v3_allowed': ?v3Allowed?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_bot_channel_directline`.
final class AzurermBotChannelDirectline extends Resource {
  static const String tfType = 'azurerm_bot_channel_directline';

  AzurermBotChannelDirectline(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> location,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<BotChannelDirectlineSite> site,
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
           'site': TfArg.literal([for (final e in site) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermBotChannelDirectlineSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermBotChannelDirectline>`.
  RefTo<AzurermBotChannelDirectline> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `extension_key_1` attribute.
  TfRef<String> get extensionKey1 =>
      TfRef.attribute<String>(this, 'extension_key_1');

  /// Reference to `extension_key_2` attribute.
  TfRef<String> get extensionKey2 =>
      TfRef.attribute<String>(this, 'extension_key_2');

  /// Reference to `bot_name` attribute.
  TfRef<String> get botName => TfRef.attribute<String>(this, 'bot_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
