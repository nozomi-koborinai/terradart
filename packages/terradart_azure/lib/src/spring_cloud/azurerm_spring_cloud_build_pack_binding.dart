// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_build_pack_binding`.
const Set<String> _azurermSpringCloudBuildPackBindingSensitive = <String>{};

/// Typed helper for the `launch` block of
/// `azurerm_spring_cloud_build_pack_binding` (derived from provider schema).
@immutable
final class SpringCloudBuildPackBindingLaunch {
  const SpringCloudBuildPackBindingLaunch({this.properties, this.secrets});

  final TfArg<Map<String, String>>? properties;

  final TfArg<Map<String, String>>? secrets;

  @internal
  Map<String, Object?> encode() => {
    'properties': ?properties?.toTfJson(),
    'secrets': ?secrets?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_build_pack_binding`.
final class AzurermSpringCloudBuildPackBinding extends Resource {
  static const String tfType = 'azurerm_spring_cloud_build_pack_binding';

  AzurermSpringCloudBuildPackBinding(
    super.localName, {
    TfArg<String>? bindingType,
    required TfArg<String> name,
    required TfArg<String> springCloudBuilderId,
    SpringCloudBuildPackBindingLaunch? launch,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'binding_type': ?bindingType,
           'name': name,
           'spring_cloud_builder_id': springCloudBuilderId,
           if (launch != null) 'launch': TfArg.literal(launch.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudBuildPackBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudBuildPackBinding>`.
  RefTo<AzurermSpringCloudBuildPackBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `binding_type` attribute.
  TfRef<String> get bindingType =>
      TfRef.attribute<String>(this, 'binding_type');

  /// Reference to `spring_cloud_builder_id` attribute.
  TfRef<String> get springCloudBuilderId =>
      TfRef.attribute<String>(this, 'spring_cloud_builder_id');
}
