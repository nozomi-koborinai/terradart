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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (createWithoutValidation != null)
             'create_without_validation': createWithoutValidation,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (displayName != null) 'display_name': displayName,
           if (labels != null) 'labels': labels,
           'location': location,
           'private_connection_id': privateConnectionId,
           if (project != null) 'project': project,
           if (vpcPeeringConfig != null)
             'vpc_peering_config': TfArg.literal(vpcPeeringConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDatabaseMigrationServicePrivateConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
