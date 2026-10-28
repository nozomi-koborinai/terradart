// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_container_registry_webhook`.
const Set<String> _azurermContainerRegistryWebhookSensitive = <String>{};

/// Container Registry Webhook enum for `actions`.
extension type const ContainerRegistryWebhookActions._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryWebhookActions.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryWebhookActions.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryWebhookActions.arg(TfArg<String> arg) : this._(arg);

  static const chartDelete = ContainerRegistryWebhookActions._(
    TfArgLiteral('chart_delete'),
  );
  static const chartPush = ContainerRegistryWebhookActions._(
    TfArgLiteral('chart_push'),
  );
  static const delete = ContainerRegistryWebhookActions._(
    TfArgLiteral('delete'),
  );
  static const push = ContainerRegistryWebhookActions._(TfArgLiteral('push'));
  static const quarantine = ContainerRegistryWebhookActions._(
    TfArgLiteral('quarantine'),
  );

  static const List<ContainerRegistryWebhookActions> values = [
    chartDelete,
    chartPush,
    delete,
    push,
    quarantine,
  ];
}

/// Container Registry Webhook enum for `status`.
extension type const ContainerRegistryWebhookStatus._(TfArg<String> _)
    implements TfArg<String> {
  ContainerRegistryWebhookStatus.variable(String name)
    : this._(TfArg.variable(name));
  ContainerRegistryWebhookStatus.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerRegistryWebhookStatus.arg(TfArg<String> arg) : this._(arg);

  static const disabled = ContainerRegistryWebhookStatus._(
    TfArgLiteral('disabled'),
  );
  static const enabled = ContainerRegistryWebhookStatus._(
    TfArgLiteral('enabled'),
  );

  static const List<ContainerRegistryWebhookStatus> values = [
    disabled,
    enabled,
  ];
}

/// Factory wrapper for `azurerm_container_registry_webhook`.
final class AzurermContainerRegistryWebhook extends Resource {
  static const String tfType = 'azurerm_container_registry_webhook';

  AzurermContainerRegistryWebhook(
    super.localName, {
    required List<ContainerRegistryWebhookActions> actions,
    TfArg<Map<String, String>>? customHeaders,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> registryName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<String>? scope,
    required TfArg<String> serviceUri,
    ContainerRegistryWebhookStatus? status,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'actions': TfArg.literal([for (final e in actions) e.toTfJson()]),
           'custom_headers': ?customHeaders,
           'location': location,
           'name': name,
           'registry_name': registryName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scope': ?scope,
           'service_uri': serviceUri,
           'status': ?status,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermContainerRegistryWebhookSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryWebhook>`.
  RefTo<AzurermContainerRegistryWebhook> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `actions` attribute.
  TfRef<List<String>> get actions =>
      TfRef.attribute<List<String>>(this, 'actions');

  /// Reference to `custom_headers` attribute.
  TfRef<Map<String, String>> get customHeaders =>
      TfRef.attribute<Map<String, String>>(this, 'custom_headers');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `registry_name` attribute.
  TfRef<String> get registryName =>
      TfRef.attribute<String>(this, 'registry_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');

  /// Reference to `service_uri` attribute.
  TfRef<String> get serviceUri => TfRef.attribute<String>(this, 'service_uri');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
