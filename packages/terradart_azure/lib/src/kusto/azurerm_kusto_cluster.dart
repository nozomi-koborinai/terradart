// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_kusto_cluster`.
const Set<String> _azurermKustoClusterSensitive = <String>{};

/// Kusto Cluster Public Ip enum for `public_ip_type`.
extension type const KustoClusterPublicIpType._(TfArg<String> _)
    implements TfArg<String> {
  KustoClusterPublicIpType.variable(String name) : this._(TfArg.variable(name));
  KustoClusterPublicIpType.expression(String template)
    : this._(TfArg.expression(template));
  const KustoClusterPublicIpType.arg(TfArg<String> arg) : this._(arg);

  static const dualstack = KustoClusterPublicIpType._(
    TfArgLiteral('DualStack'),
  );
  static const ipv4 = KustoClusterPublicIpType._(TfArgLiteral('IPv4'));

  static const List<KustoClusterPublicIpType> values = [dualstack, ipv4];
}

/// Typed helper for the `identity` block of
/// `azurerm_kusto_cluster` (derived from provider schema).
@immutable
final class KustoClusterIdentity {
  const KustoClusterIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `language_extension` block of
/// `azurerm_kusto_cluster` (derived from provider schema).
@immutable
final class KustoClusterLanguageExtension {
  const KustoClusterLanguageExtension({
    required this.image,
    required this.name,
  });

  final KustoClusterImage image;

  final KustoClusterLanguageExtensionName name;

  @internal
  Map<String, Object?> encode() => {
    'image': image.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `image` — derived from the provider schema description.
extension type const KustoClusterImage._(TfArg<String> _)
    implements TfArg<String> {
  KustoClusterImage.variable(String name) : this._(TfArg.variable(name));
  KustoClusterImage.expression(String template)
    : this._(TfArg.expression(template));
  const KustoClusterImage.arg(TfArg<String> arg) : this._(arg);

  static const pythoncustomimage = KustoClusterImage._(
    TfArgLiteral('PythonCustomImage'),
  );
  static const python3117 = KustoClusterImage._(TfArgLiteral('Python3_11_7'));
  static const python3117Dl = KustoClusterImage._(
    TfArgLiteral('Python3_11_7_DL'),
  );
  static const python3108 = KustoClusterImage._(TfArgLiteral('Python3_10_8'));
  static const python3108Dl = KustoClusterImage._(
    TfArgLiteral('Python3_10_8_DL'),
  );
  static const python365 = KustoClusterImage._(TfArgLiteral('Python3_6_5'));
  static const r = KustoClusterImage._(TfArgLiteral('R'));

  static const List<KustoClusterImage> values = [
    pythoncustomimage,
    python3117,
    python3117Dl,
    python3108,
    python3108Dl,
    python365,
    r,
  ];
}

/// `name` — derived from the provider schema description.
extension type const KustoClusterLanguageExtensionName._(TfArg<String> _)
    implements TfArg<String> {
  KustoClusterLanguageExtensionName.variable(String name)
    : this._(TfArg.variable(name));
  KustoClusterLanguageExtensionName.expression(String template)
    : this._(TfArg.expression(template));
  const KustoClusterLanguageExtensionName.arg(TfArg<String> arg) : this._(arg);

  static const python = KustoClusterLanguageExtensionName._(
    TfArgLiteral('PYTHON'),
  );
  static const r = KustoClusterLanguageExtensionName._(TfArgLiteral('R'));

  static const List<KustoClusterLanguageExtensionName> values = [python, r];
}

/// Typed helper for the `optimized_auto_scale` block of
/// `azurerm_kusto_cluster` (derived from provider schema).
@immutable
final class KustoClusterOptimizedAutoScale {
  const KustoClusterOptimizedAutoScale({
    required this.maximumInstances,
    required this.minimumInstances,
  });

  final TfArg<num> maximumInstances;

  final TfArg<num> minimumInstances;

  @internal
  Map<String, Object?> encode() => {
    'maximum_instances': maximumInstances.toTfJson(),
    'minimum_instances': minimumInstances.toTfJson(),
  };
}

/// Typed helper for the `sku` block of
/// `azurerm_kusto_cluster` (derived from provider schema).
@immutable
final class KustoClusterSku {
  const KustoClusterSku({this.capacity, required this.name});

  final TfArg<num>? capacity;

  final KustoClusterSkuName name;

  @internal
  Map<String, Object?> encode() => {
    'capacity': ?capacity?.toTfJson(),
    'name': name.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const KustoClusterSkuName._(TfArg<String> _)
    implements TfArg<String> {
  KustoClusterSkuName.variable(String name) : this._(TfArg.variable(name));
  KustoClusterSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const KustoClusterSkuName.arg(TfArg<String> arg) : this._(arg);

  static const devNoSlaStandardD11V2 = KustoClusterSkuName._(
    TfArgLiteral('Dev(No SLA)_Standard_D11_v2'),
  );
  static const devNoSlaStandardE2aV4 = KustoClusterSkuName._(
    TfArgLiteral('Dev(No SLA)_Standard_E2a_v4'),
  );
  static const standardD14V2 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D14_v2'),
  );
  static const standardD11V2 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D11_v2'),
  );
  static const standardD16dV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D16d_v5'),
  );
  static const standardD13V2 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D13_v2'),
  );
  static const standardD12V2 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D12_v2'),
  );
  static const standardDs14V2x4tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_DS14_v2+4TB_PS'),
  );
  static const standardDs14V2x3tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_DS14_v2+3TB_PS'),
  );
  static const standardDs13V2x1tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_DS13_v2+1TB_PS'),
  );
  static const standardDs13V2x2tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_DS13_v2+2TB_PS'),
  );
  static const standardD32dV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D32d_v5'),
  );
  static const standardD32dV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_D32d_v4'),
  );
  static const standardEc8adsV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_EC8ads_v5'),
  );
  static const standardEc8asV5x1tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_EC8as_v5+1TB_PS'),
  );
  static const standardEc8asV5x2tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_EC8as_v5+2TB_PS'),
  );
  static const standardEc16adsV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_EC16ads_v5'),
  );
  static const standardEc16asV5x4tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_EC16as_v5+4TB_PS'),
  );
  static const standardEc16asV5x3tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_EC16as_v5+3TB_PS'),
  );
  static const standardE80idsV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E80ids_v4'),
  );
  static const standardE8aV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8a_v4'),
  );
  static const standardE8adsV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8ads_v5'),
  );
  static const standardE8asV5x1tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8as_v5+1TB_PS'),
  );
  static const standardE8asV5x2tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8as_v5+2TB_PS'),
  );
  static const standardE8asV4x1tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8as_v4+1TB_PS'),
  );
  static const standardE8asV4x2tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8as_v4+2TB_PS'),
  );
  static const standardE8dV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8d_v5'),
  );
  static const standardE8dV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8d_v4'),
  );
  static const standardE8sV5x1tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8s_v5+1TB_PS'),
  );
  static const standardE8sV5x2tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8s_v5+2TB_PS'),
  );
  static const standardE8sV4x1tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8s_v4+1TB_PS'),
  );
  static const standardE8sV4x2tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E8s_v4+2TB_PS'),
  );
  static const standardE4aV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E4a_v4'),
  );
  static const standardE4adsV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E4ads_v5'),
  );
  static const standardE4dV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E4d_v5'),
  );
  static const standardE4dV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E4d_v4'),
  );
  static const standardE16aV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16a_v4'),
  );
  static const standardE16adsV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16ads_v5'),
  );
  static const standardE16asV5x4tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16as_v5+4TB_PS'),
  );
  static const standardE16asV5x3tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16as_v5+3TB_PS'),
  );
  static const standardE16asV4x4tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16as_v4+4TB_PS'),
  );
  static const standardE16asV4x3tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16as_v4+3TB_PS'),
  );
  static const standardE16dV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16d_v5'),
  );
  static const standardE16dV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16d_v4'),
  );
  static const standardE16sV5x4tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16s_v5+4TB_PS'),
  );
  static const standardE16sV5x3tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16s_v5+3TB_PS'),
  );
  static const standardE16sV4x4tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16s_v4+4TB_PS'),
  );
  static const standardE16sV4x3tbPs = KustoClusterSkuName._(
    TfArgLiteral('Standard_E16s_v4+3TB_PS'),
  );
  static const standardE64iV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E64i_v3'),
  );
  static const standardE2aV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E2a_v4'),
  );
  static const standardE2adsV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E2ads_v5'),
  );
  static const standardE2dV5 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E2d_v5'),
  );
  static const standardE2dV4 = KustoClusterSkuName._(
    TfArgLiteral('Standard_E2d_v4'),
  );
  static const standardL8asV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L8as_v3'),
  );
  static const standardL8s = KustoClusterSkuName._(
    TfArgLiteral('Standard_L8s'),
  );
  static const standardL8sV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L8s_v3'),
  );
  static const standardL8sV2 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L8s_v2'),
  );
  static const standardL4s = KustoClusterSkuName._(
    TfArgLiteral('Standard_L4s'),
  );
  static const standardL16asV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L16as_v3'),
  );
  static const standardL16s = KustoClusterSkuName._(
    TfArgLiteral('Standard_L16s'),
  );
  static const standardL16sV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L16s_v3'),
  );
  static const standardL16sV2 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L16s_v2'),
  );
  static const standardL32asV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L32as_v3'),
  );
  static const standardL32sV3 = KustoClusterSkuName._(
    TfArgLiteral('Standard_L32s_v3'),
  );

  static const List<KustoClusterSkuName> values = [
    devNoSlaStandardD11V2,
    devNoSlaStandardE2aV4,
    standardD14V2,
    standardD11V2,
    standardD16dV5,
    standardD13V2,
    standardD12V2,
    standardDs14V2x4tbPs,
    standardDs14V2x3tbPs,
    standardDs13V2x1tbPs,
    standardDs13V2x2tbPs,
    standardD32dV5,
    standardD32dV4,
    standardEc8adsV5,
    standardEc8asV5x1tbPs,
    standardEc8asV5x2tbPs,
    standardEc16adsV5,
    standardEc16asV5x4tbPs,
    standardEc16asV5x3tbPs,
    standardE80idsV4,
    standardE8aV4,
    standardE8adsV5,
    standardE8asV5x1tbPs,
    standardE8asV5x2tbPs,
    standardE8asV4x1tbPs,
    standardE8asV4x2tbPs,
    standardE8dV5,
    standardE8dV4,
    standardE8sV5x1tbPs,
    standardE8sV5x2tbPs,
    standardE8sV4x1tbPs,
    standardE8sV4x2tbPs,
    standardE4aV4,
    standardE4adsV5,
    standardE4dV5,
    standardE4dV4,
    standardE16aV4,
    standardE16adsV5,
    standardE16asV5x4tbPs,
    standardE16asV5x3tbPs,
    standardE16asV4x4tbPs,
    standardE16asV4x3tbPs,
    standardE16dV5,
    standardE16dV4,
    standardE16sV5x4tbPs,
    standardE16sV5x3tbPs,
    standardE16sV4x4tbPs,
    standardE16sV4x3tbPs,
    standardE64iV3,
    standardE2aV4,
    standardE2adsV5,
    standardE2dV5,
    standardE2dV4,
    standardL8asV3,
    standardL8s,
    standardL8sV3,
    standardL8sV2,
    standardL4s,
    standardL16asV3,
    standardL16s,
    standardL16sV3,
    standardL16sV2,
    standardL32asV3,
    standardL32sV3,
  ];
}

/// Factory wrapper for `azurerm_kusto_cluster`.
final class AzurermKustoCluster extends Resource {
  static const String tfType = 'azurerm_kusto_cluster';

  AzurermKustoCluster(
    super.localName, {
    TfArg<List<String>>? allowedFqdns,
    TfArg<List<String>>? allowedIpRanges,
    TfArg<bool>? autoStopEnabled,
    TfArg<bool>? diskEncryptionEnabled,
    TfArg<bool>? doubleEncryptionEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<bool>? outboundNetworkAccessRestricted,
    KustoClusterPublicIpType? publicIpType,
    TfArg<bool>? publicNetworkAccessEnabled,
    TfArg<bool>? purgeEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<bool>? streamingIngestionEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? trustedExternalTenants,
    TfArg<List<String>>? zones,
    KustoClusterIdentity? identity,
    List<KustoClusterLanguageExtension>? languageExtension,
    KustoClusterOptimizedAutoScale? optimizedAutoScale,
    required KustoClusterSku sku,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allowed_fqdns': ?allowedFqdns,
           'allowed_ip_ranges': ?allowedIpRanges,
           'auto_stop_enabled': ?autoStopEnabled,
           'disk_encryption_enabled': ?diskEncryptionEnabled,
           'double_encryption_enabled': ?doubleEncryptionEnabled,
           'location': location,
           'name': name,
           'outbound_network_access_restricted':
               ?outboundNetworkAccessRestricted,
           'public_ip_type': ?publicIpType,
           'public_network_access_enabled': ?publicNetworkAccessEnabled,
           'purge_enabled': ?purgeEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'streaming_ingestion_enabled': ?streamingIngestionEnabled,
           'tags': ?tags,
           'trusted_external_tenants': ?trustedExternalTenants,
           'zones': ?zones,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
           if (languageExtension != null)
             'language_extension': TfArg.literal([
               for (final e in languageExtension) e.encode(),
             ]),
           if (optimizedAutoScale != null)
             'optimized_auto_scale': TfArg.literal(optimizedAutoScale.encode()),
           'sku': TfArg.literal(sku.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermKustoClusterSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermKustoCluster>`.
  RefTo<AzurermKustoCluster> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `data_ingestion_uri` attribute.
  TfRef<String> get dataIngestionUri =>
      TfRef.attribute<String>(this, 'data_ingestion_uri');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `allowed_fqdns` attribute.
  TfRef<List<String>> get allowedFqdns =>
      TfRef.attribute<List<String>>(this, 'allowed_fqdns');

  /// Reference to `allowed_ip_ranges` attribute.
  TfRef<List<String>> get allowedIpRanges =>
      TfRef.attribute<List<String>>(this, 'allowed_ip_ranges');

  /// Reference to `auto_stop_enabled` attribute.
  TfRef<bool> get autoStopEnabled =>
      TfRef.attribute<bool>(this, 'auto_stop_enabled');

  /// Reference to `disk_encryption_enabled` attribute.
  TfRef<bool> get diskEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'disk_encryption_enabled');

  /// Reference to `double_encryption_enabled` attribute.
  TfRef<bool> get doubleEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'double_encryption_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `outbound_network_access_restricted` attribute.
  TfRef<bool> get outboundNetworkAccessRestricted =>
      TfRef.attribute<bool>(this, 'outbound_network_access_restricted');

  /// Reference to `public_ip_type` attribute.
  TfRef<String> get publicIpType =>
      TfRef.attribute<String>(this, 'public_ip_type');

  /// Reference to `public_network_access_enabled` attribute.
  TfRef<bool> get publicNetworkAccessEnabled =>
      TfRef.attribute<bool>(this, 'public_network_access_enabled');

  /// Reference to `purge_enabled` attribute.
  TfRef<bool> get purgeEnabled => TfRef.attribute<bool>(this, 'purge_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `streaming_ingestion_enabled` attribute.
  TfRef<bool> get streamingIngestionEnabled =>
      TfRef.attribute<bool>(this, 'streaming_ingestion_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `trusted_external_tenants` attribute.
  TfRef<List<String>> get trustedExternalTenants =>
      TfRef.attribute<List<String>>(this, 'trusted_external_tenants');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
