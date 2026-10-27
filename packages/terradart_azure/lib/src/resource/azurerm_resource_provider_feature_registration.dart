// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_resource_provider_feature_registration`.
const Set<String> _azurermResourceProviderFeatureRegistrationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_resource_provider_feature_registration`.
final class AzurermResourceProviderFeatureRegistration extends Resource {
  static const String tfType = 'azurerm_resource_provider_feature_registration';

  AzurermResourceProviderFeatureRegistration(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> providerName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'provider_name': providerName},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermResourceProviderFeatureRegistrationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermResourceProviderFeatureRegistration>`.
  RefTo<AzurermResourceProviderFeatureRegistration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');
}
