// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_elastic_san`.
const Set<String> _azurermElasticSanSensitive = <String>{};

/// Typed helper for the `sku` block of
/// `azurerm_elastic_san` (derived from provider schema).
@immutable
final class ElasticSanSku {
  const ElasticSanSku({required this.name, this.tier});

  final ElasticSanSkuName name;

  final ElasticSanTier? tier;

  @internal
  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'tier': ?tier?.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const ElasticSanSkuName._(TfArg<String> _)
    implements TfArg<String> {
  ElasticSanSkuName.variable(String name) : this._(TfArg.variable(name));
  ElasticSanSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticSanSkuName.arg(TfArg<String> arg) : this._(arg);

  static const premiumLrs = ElasticSanSkuName._(TfArgLiteral('Premium_LRS'));
  static const premiumZrs = ElasticSanSkuName._(TfArgLiteral('Premium_ZRS'));

  static const List<ElasticSanSkuName> values = [premiumLrs, premiumZrs];
}

/// `tier` — derived from the provider schema description.
extension type const ElasticSanTier._(TfArg<String> _)
    implements TfArg<String> {
  ElasticSanTier.variable(String name) : this._(TfArg.variable(name));
  ElasticSanTier.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticSanTier.arg(TfArg<String> arg) : this._(arg);

  static const premium = ElasticSanTier._(TfArgLiteral('Premium'));

  static const List<ElasticSanTier> values = [premium];
}

/// Factory wrapper for `azurerm_elastic_san`.
final class AzurermElasticSan extends Resource {
  static const String tfType = 'azurerm_elastic_san';

  AzurermElasticSan(
    super.localName, {
    required TfArg<num> baseSizeInTib,
    TfArg<num>? extendedSizeInTib,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? zones,
    required ElasticSanSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'base_size_in_tib': baseSizeInTib,
           'extended_size_in_tib': ?extendedSizeInTib,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'zones': ?zones,
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticSanSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermElasticSan>`.
  RefTo<AzurermElasticSan> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

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

  /// Reference to `base_size_in_tib` attribute.
  TfRef<num> get baseSizeInTib =>
      TfRef.attribute<num>(this, 'base_size_in_tib');

  /// Reference to `extended_size_in_tib` attribute.
  TfRef<num> get extendedSizeInTib =>
      TfRef.attribute<num>(this, 'extended_size_in_tib');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
