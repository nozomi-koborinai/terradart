// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_oracle_database_autonomous_database`.
const Set<String> _googleOracleDatabaseAutonomousDatabaseSensitive = <String>{};

/// Factory wrapper for `google_oracle_database_autonomous_database`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOracleDatabaseAutonomousDatabase extends Data {
  static const String tfType = 'google_oracle_database_autonomous_database';

  DataGoogleOracleDatabaseAutonomousDatabase({
    required super.localName,
    required TfArg<String> autonomousDatabaseId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'autonomous_database_id': autonomousDatabaseId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleOracleDatabaseAutonomousDatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `admin_password` attribute.
  TfRef<String> get adminPassword =>
      TfRef.attribute<String>(this, 'admin_password');

  /// Reference to `cidr` attribute.
  TfRef<String> get cidr => TfRef.attribute<String>(this, 'cidr');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `disaster_recovery_supported_locations` attribute.
  TfRef<List<String>> get disasterRecoverySupportedLocations =>
      TfRef.attribute<List<String>>(
        this,
        'disaster_recovery_supported_locations',
      );

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `entitlement_id` attribute.
  TfRef<String> get entitlementId =>
      TfRef.attribute<String>(this, 'entitlement_id');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `odb_network` attribute.
  TfRef<String> get odbNetwork => TfRef.attribute<String>(this, 'odb_network');

  /// Reference to `odb_subnet` attribute.
  TfRef<String> get odbSubnet => TfRef.attribute<String>(this, 'odb_subnet');

  /// Reference to `peer_autonomous_databases` attribute.
  TfRef<List<String>> get peerAutonomousDatabases =>
      TfRef.attribute<List<String>>(this, 'peer_autonomous_databases');

  /// Reference to `properties` attribute.
  TfRef<List<Map<String, Object?>>> get properties =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'properties');

  /// Reference to `source_config` attribute.
  TfRef<List<Map<String, Object?>>> get sourceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_config');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
