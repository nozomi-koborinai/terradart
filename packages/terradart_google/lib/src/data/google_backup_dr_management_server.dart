// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../backup_dr/google_backup_dr_management_server.dart';

/// Sensitive field paths for `google_backup_dr_management_server`.
const Set<String> _googleBackupDrManagementServerSensitive = <String>{};

/// Factory wrapper for `google_backup_dr_management_server`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBackupDrManagementServer extends Data {
  static const String tfType = 'google_backup_dr_management_server';

  DataGoogleBackupDrManagementServer({
    required super.localName,
    required TfArg<String> location,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'location': location});

  @override
  Set<String> get sensitiveFields => _googleBackupDrManagementServerSensitive;

  /// A reference to the `google_backup_dr_management_server` this data source reads, for
  /// arguments typed `RefTo<GoogleBackupDrManagementServer>`.
  RefTo<GoogleBackupDrManagementServer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `management_uri` attribute.
  TfRef<List<Map<String, Object?>>> get managementUri =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'management_uri');

  /// Reference to `networks` attribute.
  TfRef<List<Map<String, Object?>>> get networks =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'networks');

  /// Reference to `oauth2_client_id` attribute.
  TfRef<String> get oauth2ClientId =>
      TfRef.attribute<String>(this, 'oauth2_client_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');
}
