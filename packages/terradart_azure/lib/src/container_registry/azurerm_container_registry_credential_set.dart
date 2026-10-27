// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_registry_credential_set`.
const Set<String> _azurermContainerRegistryCredentialSetSensitive = <String>{};

/// Typed helper for the `authentication_credentials` block of
/// `azurerm_container_registry_credential_set` (derived from provider schema).
@immutable
final class ContainerRegistryCredentialSetAuthenticationCredentials {
  const ContainerRegistryCredentialSetAuthenticationCredentials({
    required this.passwordSecretId,
    required this.usernameSecretId,
  });

  final TfArg<String> passwordSecretId;

  final TfArg<String> usernameSecretId;

  @internal
  Map<String, Object?> encode() => {
    'password_secret_id': passwordSecretId.toTfJson(),
    'username_secret_id': usernameSecretId.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_container_registry_credential_set` (derived from provider schema).
@immutable
final class ContainerRegistryCredentialSetIdentity {
  const ContainerRegistryCredentialSetIdentity({required this.type});

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {'type': type.toTfJson()};
}

/// Factory wrapper for `azurerm_container_registry_credential_set`.
final class AzurermContainerRegistryCredentialSet extends Resource {
  static const String tfType = 'azurerm_container_registry_credential_set';

  AzurermContainerRegistryCredentialSet(
    super.localName, {
    required TfArg<String> containerRegistryId,
    required TfArg<String> loginServer,
    required TfArg<String> name,
    required ContainerRegistryCredentialSetAuthenticationCredentials
    authenticationCredentials,
    required ContainerRegistryCredentialSetIdentity identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_registry_id': containerRegistryId,
           'login_server': loginServer,
           'name': name,
           'authentication_credentials': TfArg.literal(
             authenticationCredentials.encode(),
           ),
           'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerRegistryCredentialSetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryCredentialSet>`.
  RefTo<AzurermContainerRegistryCredentialSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_registry_id` attribute.
  TfRef<String> get containerRegistryId =>
      TfRef.attribute<String>(this, 'container_registry_id');

  /// Reference to `login_server` attribute.
  TfRef<String> get loginServer =>
      TfRef.attribute<String>(this, 'login_server');
}
