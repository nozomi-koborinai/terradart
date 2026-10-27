// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_fabric_capacity`.
const Set<String> _azurermFabricCapacitySensitive = <String>{};

/// Typed helper for the `sku` block of
/// `azurerm_fabric_capacity` (derived from provider schema).
@immutable
final class FabricCapacitySku {
  const FabricCapacitySku({required this.name, required this.tier});

  final FabricCapacitySkuName name;

  final TfArg<String> tier;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'tier': tier.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const FabricCapacitySkuName._(TfArg<String> _)
    implements TfArg<String> {
  FabricCapacitySkuName.variable(String name) : this._(TfArg.variable(name));
  FabricCapacitySkuName.expression(String template)
    : this._(TfArg.expression(template));
  const FabricCapacitySkuName.arg(TfArg<String> arg) : this._(arg);

  static const f2 = FabricCapacitySkuName._(TfArgLiteral('F2'));
  static const f4 = FabricCapacitySkuName._(TfArgLiteral('F4'));
  static const f8 = FabricCapacitySkuName._(TfArgLiteral('F8'));
  static const f16 = FabricCapacitySkuName._(TfArgLiteral('F16'));
  static const f32 = FabricCapacitySkuName._(TfArgLiteral('F32'));
  static const f64 = FabricCapacitySkuName._(TfArgLiteral('F64'));
  static const f128 = FabricCapacitySkuName._(TfArgLiteral('F128'));
  static const f256 = FabricCapacitySkuName._(TfArgLiteral('F256'));
  static const f512 = FabricCapacitySkuName._(TfArgLiteral('F512'));
  static const f1024 = FabricCapacitySkuName._(TfArgLiteral('F1024'));
  static const f2048 = FabricCapacitySkuName._(TfArgLiteral('F2048'));

  static const List<FabricCapacitySkuName> values = [
    f2,
    f4,
    f8,
    f16,
    f32,
    f64,
    f128,
    f256,
    f512,
    f1024,
    f2048,
  ];
}

/// Factory wrapper for `azurerm_fabric_capacity`.
final class AzurermFabricCapacity extends Resource {
  static const String tfType = 'azurerm_fabric_capacity';

  AzurermFabricCapacity(
    super.localName, {
    TfArg<List<String>>? administrationMembers,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required FabricCapacitySku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'administration_members': ?administrationMembers,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFabricCapacitySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFabricCapacity>`.
  RefTo<AzurermFabricCapacity> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `administration_members` attribute.
  TfRef<List<String>> get administrationMembers =>
      TfRef.attribute<List<String>>(this, 'administration_members');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
