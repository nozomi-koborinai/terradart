// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_elastic_san_volume_snapshot`.
const Set<String> _azurermElasticSanVolumeSnapshotSensitive = <String>{};

/// Factory wrapper for `azurerm_elastic_san_volume_snapshot`.
final class DataAzurermElasticSanVolumeSnapshot extends Data {
  static const String tfType = 'azurerm_elastic_san_volume_snapshot';

  DataAzurermElasticSanVolumeSnapshot(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> volumeGroupId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'volume_group_id': volumeGroupId},
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticSanVolumeSnapshotSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `source_id` attribute.
  TfRef<String> get sourceId => TfRef.attribute<String>(this, 'source_id');

  /// Reference to `source_volume_size_in_gib` attribute.
  TfRef<num> get sourceVolumeSizeInGib =>
      TfRef.attribute<num>(this, 'source_volume_size_in_gib');

  /// Reference to `volume_name` attribute.
  TfRef<String> get volumeName => TfRef.attribute<String>(this, 'volume_name');

  /// Reference to `volume_group_id` attribute.
  TfRef<String> get volumeGroupId =>
      TfRef.attribute<String>(this, 'volume_group_id');
}
