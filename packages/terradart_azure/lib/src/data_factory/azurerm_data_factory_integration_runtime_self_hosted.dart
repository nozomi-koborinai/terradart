// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_integration_runtime_self_hosted`.
const Set<String> _azurermDataFactoryIntegrationRuntimeSelfHostedSensitive =
    <String>{};

/// Typed helper for the `rbac_authorization` block of
/// `azurerm_data_factory_integration_runtime_self_hosted` (derived from provider schema).
@immutable
final class DataFactoryIntegrationRuntimeSelfHostedRbacAuthorization {
  const DataFactoryIntegrationRuntimeSelfHostedRbacAuthorization({
    required this.resourceId,
  });

  final TfArg<String> resourceId;

  @internal
  Map<String, Object?> encode() => {'resource_id': resourceId.toTfJson()};
}

/// Factory wrapper for `azurerm_data_factory_integration_runtime_self_hosted`.
final class AzurermDataFactoryIntegrationRuntimeSelfHosted extends Resource {
  static const String tfType =
      'azurerm_data_factory_integration_runtime_self_hosted';

  AzurermDataFactoryIntegrationRuntimeSelfHosted(
    super.localName, {
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<bool>? selfContainedInteractiveAuthoringEnabled,
    List<DataFactoryIntegrationRuntimeSelfHostedRbacAuthorization>?
    rbacAuthorization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'name': name,
           'self_contained_interactive_authoring_enabled':
               ?selfContainedInteractiveAuthoringEnabled,
           if (rbacAuthorization != null)
             'rbac_authorization': TfArg.literal([
               for (final e in rbacAuthorization) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryIntegrationRuntimeSelfHostedSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryIntegrationRuntimeSelfHosted>`.
  RefTo<AzurermDataFactoryIntegrationRuntimeSelfHosted> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_authorization_key` attribute.
  TfRef<String> get primaryAuthorizationKey =>
      TfRef.attribute<String>(this, 'primary_authorization_key');

  /// Reference to `secondary_authorization_key` attribute.
  TfRef<String> get secondaryAuthorizationKey =>
      TfRef.attribute<String>(this, 'secondary_authorization_key');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `self_contained_interactive_authoring_enabled` attribute.
  TfRef<bool> get selfContainedInteractiveAuthoringEnabled =>
      TfRef.attribute<bool>(
        this,
        'self_contained_interactive_authoring_enabled',
      );
}
