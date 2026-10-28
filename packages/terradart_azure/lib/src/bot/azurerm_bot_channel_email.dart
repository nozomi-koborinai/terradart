// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_bot_channel_email`.
const Set<String> _azurermBotChannelEmailSensitive = <String>{
  'email_password',
  'magic_code',
};

/// Exactly one of `email_password`, `magic_code` on `azurerm_bot_channel_email`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.emailPassword(...)`.
sealed class BotChannelEmailCredential {
  const BotChannelEmailCredential();

  /// Sets `email_password`.
  const factory BotChannelEmailCredential.emailPassword(
    Sensitive<String> emailPassword,
  ) = BotChannelEmailCredentialEmailPassword;

  /// Sets `magic_code`.
  const factory BotChannelEmailCredential.magicCode(
    Sensitive<String> magicCode,
  ) = BotChannelEmailCredentialMagicCode;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BotChannelEmailCredential.emailPassword] choice: sets `email_password`.
final class BotChannelEmailCredentialEmailPassword
    extends BotChannelEmailCredential {
  const BotChannelEmailCredentialEmailPassword(this.emailPassword);

  final Sensitive<String> emailPassword;

  @internal
  @override
  String get blockKey => 'email_password';

  @internal
  @override
  Map<String, Object?> encode() => {'email_password': emailPassword.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'email_password': emailPassword};
}

/// The [BotChannelEmailCredential.magicCode] choice: sets `magic_code`.
final class BotChannelEmailCredentialMagicCode
    extends BotChannelEmailCredential {
  const BotChannelEmailCredentialMagicCode(this.magicCode);

  final Sensitive<String> magicCode;

  @internal
  @override
  String get blockKey => 'magic_code';

  @internal
  @override
  Map<String, Object?> encode() => {'magic_code': magicCode.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'magic_code': magicCode};
}

/// Factory wrapper for `azurerm_bot_channel_email`.
final class AzurermBotChannelEmail extends Resource {
  static const String tfType = 'azurerm_bot_channel_email';

  AzurermBotChannelEmail(
    super.localName, {
    required TfArg<String> botName,
    required TfArg<String> emailAddress,
    required BotChannelEmailCredential credential,
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
           'email_address': emailAddress,
           ...credential.argMap,
           'location': location,
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
