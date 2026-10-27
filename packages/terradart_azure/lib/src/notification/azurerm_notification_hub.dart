// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_notification_hub`.
const Set<String> _azurermNotificationHubSensitive = <String>{
  'apns_credential.token',
  'browser_credential.vapid_private_key',
  'gcm_credential.api_key',
};

/// Typed helper for the `apns_credential` block of
/// `azurerm_notification_hub` (derived from provider schema).
@immutable
final class NotificationHubApnsCredential {
  const NotificationHubApnsCredential({
    required this.applicationMode,
    required this.bundleId,
    required this.keyId,
    required this.teamId,
    required this.token,
  });

  final TfArg<String> applicationMode;

  final TfArg<String> bundleId;

  final TfArg<String> keyId;

  final TfArg<String> teamId;

  final Sensitive<String> token;

  @internal
  Map<String, Object?> encode() => {
    'application_mode': applicationMode.toTfJson(),
    'bundle_id': bundleId.toTfJson(),
    'key_id': keyId.toTfJson(),
    'team_id': teamId.toTfJson(),
    'token': token.toTfJson(),
  };
}

/// Typed helper for the `browser_credential` block of
/// `azurerm_notification_hub` (derived from provider schema).
@immutable
final class NotificationHubBrowserCredential {
  const NotificationHubBrowserCredential({
    required this.subject,
    required this.vapidPrivateKey,
    required this.vapidPublicKey,
  });

  final TfArg<String> subject;

  final Sensitive<String> vapidPrivateKey;

  final TfArg<String> vapidPublicKey;

  @internal
  Map<String, Object?> encode() => {
    'subject': subject.toTfJson(),
    'vapid_private_key': vapidPrivateKey.toTfJson(),
    'vapid_public_key': vapidPublicKey.toTfJson(),
  };
}

/// Typed helper for the `gcm_credential` block of
/// `azurerm_notification_hub` (derived from provider schema).
@immutable
final class NotificationHubGcmCredential {
  const NotificationHubGcmCredential({required this.apiKey});

  final Sensitive<String> apiKey;

  @internal
  Map<String, Object?> encode() => {'api_key': apiKey.toTfJson()};
}

/// Factory wrapper for `azurerm_notification_hub`.
final class AzurermNotificationHub extends Resource {
  static const String tfType = 'azurerm_notification_hub';

  AzurermNotificationHub(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> namespaceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    NotificationHubApnsCredential? apnsCredential,
    NotificationHubBrowserCredential? browserCredential,
    NotificationHubGcmCredential? gcmCredential,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'namespace_name': namespaceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (apnsCredential != null)
             'apns_credential': TfArg.literal(apnsCredential.encode()),
           if (browserCredential != null)
             'browser_credential': TfArg.literal(browserCredential.encode()),
           if (gcmCredential != null)
             'gcm_credential': TfArg.literal(gcmCredential.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNotificationHubSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNotificationHub>`.
  RefTo<AzurermNotificationHub> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `namespace_name` attribute.
  TfRef<String> get namespaceName =>
      TfRef.attribute<String>(this, 'namespace_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
