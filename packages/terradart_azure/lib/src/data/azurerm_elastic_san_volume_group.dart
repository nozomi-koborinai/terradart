// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../elastic/azurerm_elastic_san_volume_group.dart';

/// Sensitive field paths for `azurerm_elastic_san_volume_group`.
const Set<String> _azurermElasticSanVolumeGroupSensitive = <String>{};

/// Factory wrapper for `azurerm_elastic_san_volume_group`.
final class DataAzurermElasticSanVolumeGroup extends Data {
  static const String tfType = 'azurerm_elastic_san_volume_group';

  DataAzurermElasticSanVolumeGroup(
    super.localName, {
    required TfArg<String> elasticSanId,
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'elastic_san_id': elasticSanId, 'name': name},
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticSanVolumeGroupSensitive;

  /// A reference to the `azurerm_elastic_san_volume_group` this data source reads, for
  /// arguments typed `RefTo<AzurermElasticSanVolumeGroup>`.
  RefTo<AzurermElasticSanVolumeGroup> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `network_rule` attribute.
  TfRef<List<Map<String, Object?>>> get networkRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_rule');

  /// Reference to `protocol_type` attribute.
  TfRef<String> get protocolType =>
      TfRef.attribute<String>(this, 'protocol_type');

  /// Reference to `elastic_san_id` attribute.
  TfRef<String> get elasticSanId =>
      TfRef.attribute<String>(this, 'elastic_san_id');
}
