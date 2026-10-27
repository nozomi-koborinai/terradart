// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_maps_account`.
const Set<String> _azurermMapsAccountSensitive = <String>{
  'primary_access_key',
  'secondary_access_key',
};

/// Maps Account Sku enum for `sku_name`.
extension type const MapsAccountSkuName._(TfArg<String> _)
    implements TfArg<String> {
  MapsAccountSkuName.variable(String name) : this._(TfArg.variable(name));
  MapsAccountSkuName.expression(String template)
    : this._(TfArg.expression(template));
  const MapsAccountSkuName.arg(TfArg<String> arg) : this._(arg);

  static const g2 = MapsAccountSkuName._(TfArgLiteral('G2'));
  static const s1 = MapsAccountSkuName._(TfArgLiteral('S1'));
  static const s0 = MapsAccountSkuName._(TfArgLiteral('S0'));

  static const List<MapsAccountSkuName> values = [g2, s1, s0];
}

/// Typed helper for the `cors` block of
/// `azurerm_maps_account` (derived from provider schema).
@immutable
final class MapsAccountCors {
  const MapsAccountCors({required this.allowedOrigins});

  final TfArg<List<String>> allowedOrigins;

  @internal
  Map<String, Object?> encode() => {
    'allowed_origins': allowedOrigins.toTfJson(),
  };
}

/// Typed helper for the `data_store` block of
/// `azurerm_maps_account` (derived from provider schema).
@immutable
final class MapsAccountDataStore {
  const MapsAccountDataStore({this.storageAccountId, required this.uniqueName});

  final TfArg<String>? storageAccountId;

  final TfArg<String> uniqueName;

  @internal
  Map<String, Object?> encode() => {
    'storage_account_id': ?storageAccountId?.toTfJson(),
    'unique_name': uniqueName.toTfJson(),
  };
}

/// Typed helper for the `identity` block of
/// `azurerm_maps_account` (derived from provider schema).
@immutable
final class MapsAccountIdentity {
  const MapsAccountIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_maps_account`.
final class AzurermMapsAccount extends Resource {
  static const String tfType = 'azurerm_maps_account';

  AzurermMapsAccount(
    super.localName, {
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required MapsAccountSkuName skuName,
    TfArg<Map<String, String>>? tags,
    MapsAccountCors? cors,
    List<MapsAccountDataStore>? dataStore,
    MapsAccountIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           if (cors != null) 'cors': TfArg.literal(cors.encode()),
           if (dataStore != null)
             'data_store': TfArg.literal([
               for (final e in dataStore) e.encode(),
             ]),
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMapsAccountSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMapsAccount>`.
  RefTo<AzurermMapsAccount> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `x_ms_client_id` attribute.
  TfRef<String> get xMsClientId =>
      TfRef.attribute<String>(this, 'x_ms_client_id');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
