// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_builder`.
const Set<String> _azurermSpringCloudBuilderSensitive = <String>{};

/// Typed helper for the `build_pack_group` block of
/// `azurerm_spring_cloud_builder` (derived from provider schema).
@immutable
final class SpringCloudBuilderBuildPackGroup {
  const SpringCloudBuilderBuildPackGroup({
    this.buildPackIds,
    required this.name,
  });

  final TfArg<List<String>>? buildPackIds;

  final TfArg<String> name;

  @internal
  Map<String, Object?> encode() => {
    'build_pack_ids': ?buildPackIds?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// Typed helper for the `stack` block of
/// `azurerm_spring_cloud_builder` (derived from provider schema).
@immutable
final class SpringCloudBuilderStack {
  const SpringCloudBuilderStack({required this.id, required this.version});

  final TfArg<String> id;

  final TfArg<String> version;

  @internal
  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_spring_cloud_builder`.
final class AzurermSpringCloudBuilder extends Resource {
  static const String tfType = 'azurerm_spring_cloud_builder';

  AzurermSpringCloudBuilder(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> springCloudServiceId,
    required List<SpringCloudBuilderBuildPackGroup> buildPackGroup,
    required SpringCloudBuilderStack stack,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'spring_cloud_service_id': springCloudServiceId,
           'build_pack_group': TfArg.literal([
             for (final e in buildPackGroup) e.encode(),
           ]),
           'stack': TfArg.literal(stack.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudBuilderSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudBuilder>`.
  RefTo<AzurermSpringCloudBuilder> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `spring_cloud_service_id` attribute.
  TfRef<String> get springCloudServiceId =>
      TfRef.attribute<String>(this, 'spring_cloud_service_id');
}
