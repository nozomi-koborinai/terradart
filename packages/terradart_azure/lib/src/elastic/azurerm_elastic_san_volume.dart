// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_elastic_san_volume`.
const Set<String> _azurermElasticSanVolumeSensitive = <String>{};

/// Typed helper for the `create_source` block of
/// `azurerm_elastic_san_volume` (derived from provider schema).
@immutable
final class ElasticSanVolumeCreateSource {
  const ElasticSanVolumeCreateSource({
    required this.sourceId,
    required this.sourceType,
  });

  final TfArg<String> sourceId;

  final TfArg<String> sourceType;

  @internal
  Map<String, Object?> encode() => {
    'source_id': sourceId.toTfJson(),
    'source_type': sourceType.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_elastic_san_volume`.
final class AzurermElasticSanVolume extends Resource {
  static const String tfType = 'azurerm_elastic_san_volume';

  AzurermElasticSanVolume(
    super.localName, {
    required TfArg<String> name,
    required TfArg<num> sizeInGib,
    required TfArg<String> volumeGroupId,
    ElasticSanVolumeCreateSource? createSource,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'size_in_gib': sizeInGib,
           'volume_group_id': volumeGroupId,
           if (createSource != null)
             'create_source': TfArg.literal(createSource.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticSanVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermElasticSanVolume>`.
  RefTo<AzurermElasticSanVolume> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `target_iqn` attribute.
  TfRef<String> get targetIqn => TfRef.attribute<String>(this, 'target_iqn');

  /// Reference to `target_portal_hostname` attribute.
  TfRef<String> get targetPortalHostname =>
      TfRef.attribute<String>(this, 'target_portal_hostname');

  /// Reference to `target_portal_port` attribute.
  TfRef<num> get targetPortalPort =>
      TfRef.attribute<num>(this, 'target_portal_port');

  /// Reference to `volume_id` attribute.
  TfRef<String> get volumeId => TfRef.attribute<String>(this, 'volume_id');

  /// Reference to `size_in_gib` attribute.
  TfRef<num> get sizeInGib => TfRef.attribute<num>(this, 'size_in_gib');

  /// Reference to `volume_group_id` attribute.
  TfRef<String> get volumeGroupId =>
      TfRef.attribute<String>(this, 'volume_group_id');
}
