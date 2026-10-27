// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_storage_mover_source_endpoint`.
const Set<String> _azurermStorageMoverSourceEndpointSensitive = <String>{};

/// Storage Mover Source Endpoint Nfs enum for `nfs_version`.
extension type const StorageMoverSourceEndpointNfsVersion._(TfArg<String> _)
    implements TfArg<String> {
  StorageMoverSourceEndpointNfsVersion.variable(String name)
    : this._(TfArg.variable(name));
  StorageMoverSourceEndpointNfsVersion.expression(String template)
    : this._(TfArg.expression(template));
  const StorageMoverSourceEndpointNfsVersion.arg(TfArg<String> arg)
    : this._(arg);

  static const nfsauto = StorageMoverSourceEndpointNfsVersion._(
    TfArgLiteral('NFSauto'),
  );
  static const nfsv4 = StorageMoverSourceEndpointNfsVersion._(
    TfArgLiteral('NFSv4'),
  );
  static const nfsv3 = StorageMoverSourceEndpointNfsVersion._(
    TfArgLiteral('NFSv3'),
  );

  static const List<StorageMoverSourceEndpointNfsVersion> values = [
    nfsauto,
    nfsv4,
    nfsv3,
  ];
}

/// Factory wrapper for `azurerm_storage_mover_source_endpoint`.
final class AzurermStorageMoverSourceEndpoint extends Resource {
  static const String tfType = 'azurerm_storage_mover_source_endpoint';

  AzurermStorageMoverSourceEndpoint(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? export,
    required TfArg<String> host,
    required TfArg<String> name,
    StorageMoverSourceEndpointNfsVersion? nfsVersion,
    required TfArg<String> storageMoverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'export': ?export,
           'host': host,
           'name': name,
           'nfs_version': ?nfsVersion,
           'storage_mover_id': storageMoverId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermStorageMoverSourceEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermStorageMoverSourceEndpoint>`.
  RefTo<AzurermStorageMoverSourceEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `export` attribute.
  TfRef<String> get export => TfRef.attribute<String>(this, 'export');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `nfs_version` attribute.
  TfRef<String> get nfsVersion => TfRef.attribute<String>(this, 'nfs_version');

  /// Reference to `storage_mover_id` attribute.
  TfRef<String> get storageMoverId =>
      TfRef.attribute<String>(this, 'storage_mover_id');
}
