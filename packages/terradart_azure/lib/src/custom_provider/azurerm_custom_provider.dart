// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_custom_provider`.
const Set<String> _azurermCustomProviderSensitive = <String>{};

/// Typed helper for the `action` block of
/// `azurerm_custom_provider` (derived from provider schema).
@immutable
final class CustomProviderAction {
  const CustomProviderAction({required this.endpoint, required this.name});

  final TfArg<String> endpoint;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `resource_type` block of
/// `azurerm_custom_provider` (derived from provider schema).
@immutable
final class CustomProviderResourceType {
  const CustomProviderResourceType({
    required this.endpoint,
    required this.name,
    this.routingType,
  });

  final TfArg<String> endpoint;

  final TfArg<String> name;

  final TfArg<String>? routingType;

  @internal
  Map<String, Object?> encode() => {
    'endpoint': endpoint.toTfJson(),
    'name': name.toTfJson(),
    'routing_type': ?routingType?.toTfJson(),
  };
}

/// Typed helper for the `validation` block of
/// `azurerm_custom_provider` (derived from provider schema).
@immutable
final class CustomProviderValidation {
  const CustomProviderValidation({required this.specification});

  final TfArg<String> specification;

  @internal
  Map<String, Object?> encode() => {'specification': specification.toTfJson()};
}

/// Factory wrapper for `azurerm_custom_provider`.
final class AzurermCustomProvider extends Resource {
  static const String tfType = 'azurerm_custom_provider';

  AzurermCustomProvider(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<CustomProviderAction>? action,
    List<CustomProviderResourceType>? resourceType,
    List<CustomProviderValidation>? validation,
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
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           if (resourceType != null)
             'resource_type': TfArg.literal([
               for (final e in resourceType) e.encode(),
             ]),
           if (validation != null)
             'validation': TfArg.literal([
               for (final e in validation) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermCustomProviderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCustomProvider>`.
  RefTo<AzurermCustomProvider> get ref => RefTo.of(this);

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
