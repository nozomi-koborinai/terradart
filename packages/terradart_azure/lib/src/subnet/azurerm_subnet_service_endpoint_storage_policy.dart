// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_subnet_service_endpoint_storage_policy`.
const Set<String> _azurermSubnetServiceEndpointStoragePolicySensitive =
    <String>{};

/// Typed helper for the `definition` block of
/// `azurerm_subnet_service_endpoint_storage_policy` (derived from provider schema).
@immutable
final class SubnetServiceEndpointStoragePolicyDefinition {
  const SubnetServiceEndpointStoragePolicyDefinition({
    this.description,
    required this.name,
    this.service,
    required this.serviceResources,
  });

  final TfArg<String>? description;

  final TfArg<String> name;

  final SubnetServiceEndpointStoragePolicyService? service;

  final TfArg<List<String>> serviceResources;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'name': name.toTfJson(),
    'service': ?service?.toTfJson(),
    'service_resources': serviceResources.toTfJson(),
  };
}

/// `service` — derived from the provider schema description.
extension type const SubnetServiceEndpointStoragePolicyService._(
  TfArg<String> _
) implements TfArg<String> {
  SubnetServiceEndpointStoragePolicyService.variable(String name)
    : this._(TfArg.variable(name));
  SubnetServiceEndpointStoragePolicyService.expression(String template)
    : this._(TfArg.expression(template));
  const SubnetServiceEndpointStoragePolicyService.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftStorage = SubnetServiceEndpointStoragePolicyService._(
    TfArgLiteral('Microsoft.Storage'),
  );
  static const global = SubnetServiceEndpointStoragePolicyService._(
    TfArgLiteral('Global'),
  );

  static const List<SubnetServiceEndpointStoragePolicyService> values = [
    microsoftStorage,
    global,
  ];
}

/// Factory wrapper for `azurerm_subnet_service_endpoint_storage_policy`.
final class AzurermSubnetServiceEndpointStoragePolicy extends Resource {
  static const String tfType = 'azurerm_subnet_service_endpoint_storage_policy';

  AzurermSubnetServiceEndpointStoragePolicy(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<SubnetServiceEndpointStoragePolicyDefinition>? definition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (definition != null)
             'definition': TfArg.literal([
               for (final e in definition) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubnetServiceEndpointStoragePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubnetServiceEndpointStoragePolicy>`.
  RefTo<AzurermSubnetServiceEndpointStoragePolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
