// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../elastic/azurerm_elastic_san.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_elastic_san`.
const Set<String> _azurermElasticSanSensitive = <String>{};

/// Factory wrapper for `azurerm_elastic_san`.
final class DataAzurermElasticSan extends Data {
  static const String tfType = 'azurerm_elastic_san';

  DataAzurermElasticSan(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticSanSensitive;

  /// A reference to the `azurerm_elastic_san` this data source reads, for
  /// arguments typed `RefTo<AzurermElasticSan>`.
  RefTo<AzurermElasticSan> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `base_size_in_tib` attribute.
  TfRef<num> get baseSizeInTib =>
      TfRef.attribute<num>(this, 'base_size_in_tib');

  /// Reference to `extended_size_in_tib` attribute.
  TfRef<num> get extendedSizeInTib =>
      TfRef.attribute<num>(this, 'extended_size_in_tib');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `sku` attribute.
  TfRef<List<Map<String, Object?>>> get sku =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `total_iops` attribute.
  TfRef<num> get totalIops => TfRef.attribute<num>(this, 'total_iops');

  /// Reference to `total_mbps` attribute.
  TfRef<num> get totalMbps => TfRef.attribute<num>(this, 'total_mbps');

  /// Reference to `total_size_in_tib` attribute.
  TfRef<num> get totalSizeInTib =>
      TfRef.attribute<num>(this, 'total_size_in_tib');

  /// Reference to `total_volume_size_in_gib` attribute.
  TfRef<num> get totalVolumeSizeInGib =>
      TfRef.attribute<num>(this, 'total_volume_size_in_gib');

  /// Reference to `volume_group_count` attribute.
  TfRef<num> get volumeGroupCount =>
      TfRef.attribute<num>(this, 'volume_group_count');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
