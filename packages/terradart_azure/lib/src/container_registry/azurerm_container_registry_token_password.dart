// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_registry_token_password`.
const Set<String> _azurermContainerRegistryTokenPasswordSensitive = <String>{
  'password1.value',
  'password2.value',
};

/// Typed helper for the `password1` block of
/// `azurerm_container_registry_token_password` (derived from provider schema).
@immutable
final class ContainerRegistryTokenPasswordPassword1 {
  const ContainerRegistryTokenPasswordPassword1({this.expiry});

  final TfArg<String>? expiry;

  @internal
  Map<String, Object?> encode() => {'expiry': ?expiry?.toTfJson()};
}

/// Typed helper for the `password2` block of
/// `azurerm_container_registry_token_password` (derived from provider schema).
@immutable
final class ContainerRegistryTokenPasswordPassword2 {
  const ContainerRegistryTokenPasswordPassword2({this.expiry});

  final TfArg<String>? expiry;

  @internal
  Map<String, Object?> encode() => {'expiry': ?expiry?.toTfJson()};
}

/// Factory wrapper for `azurerm_container_registry_token_password`.
final class AzurermContainerRegistryTokenPassword extends Resource {
  static const String tfType = 'azurerm_container_registry_token_password';

  AzurermContainerRegistryTokenPassword(
    super.localName, {
    required TfArg<String> containerRegistryTokenId,
    required ContainerRegistryTokenPasswordPassword1 password1,
    ContainerRegistryTokenPasswordPassword2? password2,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'container_registry_token_id': containerRegistryTokenId,
           'password1': TfArg.literal(password1.encode()),
           if (password2 != null)
             'password2': TfArg.literal(password2.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerRegistryTokenPasswordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerRegistryTokenPassword>`.
  RefTo<AzurermContainerRegistryTokenPassword> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `container_registry_token_id` attribute.
  TfRef<String> get containerRegistryTokenId =>
      TfRef.attribute<String>(this, 'container_registry_token_id');
}
