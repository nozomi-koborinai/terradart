// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_database_migration_service_private_connection`.
const Set<String> _googleDatabaseMigrationServicePrivateConnectionSensitive =
    <String>{};

/// Typed helper for the `psc_interface_config` block of
/// `google_database_migration_service_private_connection` (derived from provider schema).
@immutable
final class DatabaseMigrationServicePrivateConnectionPscInterfaceConfig {
  const DatabaseMigrationServicePrivateConnectionPscInterfaceConfig({
    required this.networkAttachment,
  });

  final TfArg<String> networkAttachment;

  Map<String, Object?> encode() => {
    'network_attachment': networkAttachment.toTfJson(),
  };
}

/// Typed helper for the `vpc_peering_config` block of
/// `google_database_migration_service_private_connection` (derived from provider schema).
@immutable
final class DatabaseMigrationServicePrivateConnectionVpcPeeringConfig {
  const DatabaseMigrationServicePrivateConnectionVpcPeeringConfig({
    required this.subnet,
    required this.vpcName,
  });

  final TfArg<String> subnet;

  final TfArg<String> vpcName;

  Map<String, Object?> encode() => {
    'subnet': subnet.toTfJson(),
    'vpc_name': vpcName.toTfJson(),
  };
}

/// Factory wrapper for `google_database_migration_service_private_connection`.
///
/// The PrivateConnection resource is used to establish private connectivity
/// between Database Migration Service and a customer's network.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDatabaseMigrationServicePrivateConnection extends Resource {
  static const String tfType =
      'google_database_migration_service_private_connection';

  GoogleDatabaseMigrationServicePrivateConnection({
    required super.localName,
    TfArg<bool>? createWithoutValidation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    required TfArg<String> privateConnectionId,
    TfArg<String>? project,
    DatabaseMigrationServicePrivateConnectionVpcPeeringConfig? vpcPeeringConfig,
    DatabaseMigrationServicePrivateConnectionPscInterfaceConfig?
    pscInterfaceConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'create_without_validation': ?createWithoutValidation,
           'deletion_policy': ?deletionPolicy,
           'display_name': ?displayName,
           'labels': ?labels,
           'location': location,
           'private_connection_id': privateConnectionId,
           'project': ?project,
           if (vpcPeeringConfig != null)
             'vpc_peering_config': TfArg.literal(vpcPeeringConfig.encode()),
           if (pscInterfaceConfig != null)
             'psc_interface_config': TfArg.literal(pscInterfaceConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatabaseMigrationServicePrivateConnectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDatabaseMigrationServicePrivateConnection>`.
  RefTo<GoogleDatabaseMigrationServicePrivateConnection> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `error` attribute.
  TfRef<List<Map<String, Object?>>> get error =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'error');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `create_without_validation` attribute.
  TfRef<bool> get createWithoutValidation =>
      TfRef.attribute<bool>(this, 'create_without_validation');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_connection_id` attribute.
  TfRef<String> get privateConnectionId =>
      TfRef.attribute<String>(this, 'private_connection_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
