// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_app_environment_dapr_component`.
const Set<String> _azurermContainerAppEnvironmentDaprComponentSensitive =
    <String>{'secret.value'};

/// Typed helper for the `metadata` block of
/// `azurerm_container_app_environment_dapr_component` (derived from provider schema).
@immutable
final class ContainerAppEnvironmentDaprComponentMetadata {
  const ContainerAppEnvironmentDaprComponentMetadata({
    required this.name,
    this.secretName,
    this.value,
  });

  final TfArg<String> name;

  final TfArg<String>? secretName;

  final TfArg<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'secret_name': ?secretName?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `secret` block of
/// `azurerm_container_app_environment_dapr_component` (derived from provider schema).
@immutable
final class ContainerAppEnvironmentDaprComponentSecret {
  const ContainerAppEnvironmentDaprComponentSecret({
    this.identity,
    this.keyVaultSecretId,
    required this.name,
    this.value,
  });

  final TfArg<String>? identity;

  final TfArg<String>? keyVaultSecretId;

  final TfArg<String> name;

  final Sensitive<String>? value;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'key_vault_secret_id': ?keyVaultSecretId?.toTfJson(),
    'name': name.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_container_app_environment_dapr_component`.
final class AzurermContainerAppEnvironmentDaprComponent extends Resource {
  static const String tfType =
      'azurerm_container_app_environment_dapr_component';

  AzurermContainerAppEnvironmentDaprComponent(
    super.localName, {
    required TfArg<String> componentType,
    required TfArg<String> containerAppEnvironmentId,
    TfArg<bool>? ignoreErrors,
    TfArg<String>? initTimeout,
    required TfArg<String> name,
    TfArg<List<String>>? scopes,
    required TfArg<String> version,
    List<ContainerAppEnvironmentDaprComponentMetadata>? metadata,
    List<ContainerAppEnvironmentDaprComponentSecret>? secret,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'component_type': componentType,
           'container_app_environment_id': containerAppEnvironmentId,
           'ignore_errors': ?ignoreErrors,
           'init_timeout': ?initTimeout,
           'name': name,
           'scopes': ?scopes,
           'version': version,
           if (metadata != null)
             'metadata': TfArg.literal([for (final e in metadata) e.encode()]),
           if (secret != null)
             'secret': TfArg.literal([for (final e in secret) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentDaprComponentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppEnvironmentDaprComponent>`.
  RefTo<AzurermContainerAppEnvironmentDaprComponent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `component_type` attribute.
  TfRef<String> get componentType =>
      TfRef.attribute<String>(this, 'component_type');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `ignore_errors` attribute.
  TfRef<bool> get ignoreErrors => TfRef.attribute<bool>(this, 'ignore_errors');

  /// Reference to `init_timeout` attribute.
  TfRef<String> get initTimeout =>
      TfRef.attribute<String>(this, 'init_timeout');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
