// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sql/google_sql_database_instance.dart'
    show GoogleSqlDatabaseInstance;

/// Sensitive field paths for `google_sql_ca_certs`.
const Set<String> _googleSqlCaCertsSensitive = <String>{};

/// Factory wrapper for `google_sql_ca_certs`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlCaCerts extends Data {
  static const String tfType = 'google_sql_ca_certs';

  DataGoogleSqlCaCerts({
    required super.localName,
    required RefTo<GoogleSqlDatabaseInstance> instance,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'instance': instance.encodeAs('name'), 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleSqlCaCertsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_version` attribute.
  TfRef<String> get activeVersion =>
      TfRef.attribute<String>(this, 'active_version');

  /// Reference to `certs` attribute.
  TfRef<List<Map<String, Object?>>> get certs =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'certs');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
