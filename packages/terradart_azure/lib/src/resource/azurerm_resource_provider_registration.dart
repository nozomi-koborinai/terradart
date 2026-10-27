// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_provider_registration`.
const Set<String> _azurermResourceProviderRegistrationSensitive = <String>{};

/// Typed helper for the `feature` block of
/// `azurerm_resource_provider_registration` (derived from provider schema).
@immutable
final class ResourceProviderRegistrationFeature {
  const ResourceProviderRegistrationFeature({
    required this.name,
    required this.registered,
  });

  final TfArg<String> name;

  final TfArg<bool> registered;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'registered': registered.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_resource_provider_registration`.
final class AzurermResourceProviderRegistration extends Resource {
  static const String tfType = 'azurerm_resource_provider_registration';

  AzurermResourceProviderRegistration(
    super.localName, {
    required TfArg<String> name,
    List<ResourceProviderRegistrationFeature>? feature,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (feature != null)
             'feature': TfArg.literal([for (final e in feature) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermResourceProviderRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceProviderRegistration>`.
  RefTo<AzurermResourceProviderRegistration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
