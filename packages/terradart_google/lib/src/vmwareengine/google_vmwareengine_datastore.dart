// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_vmwareengine_datastore`.
const Set<String> _googleVmwareengineDatastoreSensitive = <String>{};

/// Typed helper for the `nfs_datastore` block of
/// `google_vmwareengine_datastore` (derived from provider schema).
@immutable
final class VmwareengineDatastoreNfsDatastore {
  const VmwareengineDatastoreNfsDatastore({
    this.googleFileService,
    this.thirdPartyFileService,
  });

  final VmwareengineDatastoreNfsDatastoreGoogleFileService? googleFileService;

  final VmwareengineDatastoreNfsDatastoreThirdPartyFileService?
  thirdPartyFileService;

  Map<String, Object?> encode() => {
    if (googleFileService != null)
      'google_file_service': googleFileService!.encode(),
    if (thirdPartyFileService != null)
      'third_party_file_service': thirdPartyFileService!.encode(),
  };
}

/// Typed helper for the `nfs_datastore.google_file_service` block of
/// `google_vmwareengine_datastore` (derived from provider schema).
@immutable
final class VmwareengineDatastoreNfsDatastoreGoogleFileService {
  const VmwareengineDatastoreNfsDatastoreGoogleFileService({
    this.filestoreInstance,
    this.netappVolume,
  });

  final TfArg<String>? filestoreInstance;

  final TfArg<String>? netappVolume;

  Map<String, Object?> encode() => {
    if (filestoreInstance != null)
      'filestore_instance': filestoreInstance!.toTfJson(),
    if (netappVolume != null) 'netapp_volume': netappVolume!.toTfJson(),
  };
}

/// Typed helper for the `nfs_datastore.third_party_file_service` block of
/// `google_vmwareengine_datastore` (derived from provider schema).
@immutable
final class VmwareengineDatastoreNfsDatastoreThirdPartyFileService {
  const VmwareengineDatastoreNfsDatastoreThirdPartyFileService({
    required this.fileShare,
    required this.network,
    required this.servers,
  });

  final TfArg<String> fileShare;

  final TfArg<String> network;

  final TfArg<List<Object?>> servers;

  Map<String, Object?> encode() => {
    'file_share': fileShare.toTfJson(),
    'network': network.toTfJson(),
    'servers': servers.toTfJson(),
  };
}

/// Factory wrapper for `google_vmwareengine_datastore`.
///
/// A datastore resource that can be mounted on a VMware Engine cluster.
///
/// ~> **Note:** To mount a datastore on a VMware Engine cluster, configure the
/// `datastore_mount_config` block within the `google_vmwareengine_cluster`
/// resource. A datastore cannot be mounted directly using the
/// `google_vmwareengine_datastore` resource.
///
/// If you are mounting a datastore that was already created outside of
/// Terraform (or in a separate Terraform configuration), reference it directly
/// by its full resource URI in the `datastore_mount_config.datastore` field
/// inside the cluster resource: ```terraform datastore_mount_config { datastore
/// = "projects/PROJECT_ID/locations/LOCATION/datastores/DATASTORE_ID"
/// datastore_network { # ... } } ```
///
/// Google Cloud VMware Engine **datastore** — NFS datastore backed by
/// Filestore / NetApp / third-party file service, attachable to clusters.
///
/// **Cost / apply:** No dedicated datastore SKU on VMware Engine
/// `C079-64FE-9109` after MCP lookup; underlying Filestore/NetApp capacity
/// and never_apply private-cloud node hours (e.g. SKU `00C9-4870-5751`
/// **$15.11/h**) dominate. Debt-only — **never** wire into apply-smoke.
///
/// Enable `vmwareengine.googleapis.com` via [GoogleProjectService] before
/// apply. [nfsDatastore] is required.
final class GoogleVmwareengineDatastore extends Resource {
  static const String tfType = 'google_vmwareengine_datastore';

  GoogleVmwareengineDatastore({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required VmwareengineDatastoreNfsDatastore nfsDatastore,
    TfArg<String>? description,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'nfs_datastore': TfArg.literal(nfsDatastore.encode()),
           if (description != null) 'description': description,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleVmwareengineDatastoreSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `clusters` attribute.
  TfRef<List<String>> get clusters =>
      TfRef.attribute<List<String>>(this, 'clusters');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
