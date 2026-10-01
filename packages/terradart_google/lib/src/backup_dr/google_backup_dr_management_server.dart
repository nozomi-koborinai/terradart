// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_backup_dr_management_server`.
const Set<String> _googleBackupDrManagementServerSensitive = <String>{};

/// Backup Dr Management Server enum for `type`.
enum BackupDrManagementServerType implements TerraformEnum {
  backupRestore('BACKUP_RESTORE');

  const BackupDrManagementServerType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `networks` block of
/// `google_backup_dr_management_server` (derived from provider schema).
@immutable
final class BackupDrManagementServerNetworks {
  const BackupDrManagementServerNetworks({
    required this.network,
    this.peeringMode,
  });

  final RefTo<GoogleComputeNetwork> network;

  final TfArg<String>? peeringMode;

  Map<String, Object?> encode() => {
    'network': network.encodeAs('id').toTfJson(),
    'peering_mode': ?peeringMode?.toTfJson(),
  };
}

/// Factory wrapper for `google_backup_dr_management_server`.
///
/// A Backup and DR Management Server (Also referred as Management Console)
///
/// Backup and DR Service **management server** — the control-plane
/// appliance for Backup and DR in a project/region.
///
/// **Cost:** provisioning a management server attaches BackupDR
/// management + underlying Compute/networking. Cloud Billing Catalog
/// service `3DAD-299B-0D94` bills protected-resource management (e.g.
/// GCE VM management SKU `0456-5BF2-438E` **$0.02/GiBy·mo**) once
/// workloads are protected; the server itself is too heavy for
/// apply-smoke. Factories ship without a quickstart.
///
/// Enable `backupdr.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleBackupDrManagementServer(
///   localName: 'ms',
///   name: TfArg.literal('terradart-bdr-ms'),
///   location: TfArg.literal('us-central1'),
///   type: TfArg.literal(BackupDrManagementServerType.backupRestore),
///   networks: [
///     BackupDrManagementServerNetworks(
///       network: network.ref,
///       peeringMode: TfArg.literal('PRIVATE_SERVICE_ACCESS'),
///     ),
///   ],
/// );
/// ```
final class GoogleBackupDrManagementServer extends Resource {
  static const String tfType = 'google_backup_dr_management_server';

  GoogleBackupDrManagementServer({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    TfArg<BackupDrManagementServerType>? type,
    List<BackupDrManagementServerNetworks>? networks,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'type': ?type,
           if (networks != null)
             'networks': TfArg.literal([for (final e in networks) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBackupDrManagementServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBackupDrManagementServer>`.
  RefTo<GoogleBackupDrManagementServer> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `management_uri` attribute.
  TfRef<List<Map<String, Object?>>> get managementUri =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'management_uri');

  /// Reference to `oauth2_client_id` attribute.
  TfRef<String> get oauth2ClientId =>
      TfRef.attribute<String>(this, 'oauth2_client_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
