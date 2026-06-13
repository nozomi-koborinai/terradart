// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_source_representation_instance`.
const Set<String> _googleSqlSourceRepresentationInstanceSensitive = <String>{
  'password',
};

/// Factory wrapper for `google_sql_source_representation_instance`.
///
/// A source representation instance is a Cloud SQL instance that represents the
/// source database server to the Cloud SQL replica. It is visible in the Cloud
/// Console and appears the same as a regular Cloud SQL instance, but it
/// contains no data, requires no configuration or maintenance, and does not
/// affect billing. You cannot update the source representation instance.
final class GoogleSqlSourceRepresentationInstance extends Resource {
  static const String tfType = 'google_sql_source_representation_instance';

  GoogleSqlSourceRepresentationInstance({
    required super.localName,
    TfArg<String>? caCertificate,
    TfArg<String>? clientCertificate,
    TfArg<String>? clientKey,
    required TfArg<String> databaseVersion,
    TfArg<String>? dumpFilePath,
    required TfArg<String> host,
    required TfArg<String> name,
    TfArg<String>? password,
    TfArg<num>? port,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? username,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (caCertificate != null) 'ca_certificate': caCertificate,
           if (clientCertificate != null)
             'client_certificate': clientCertificate,
           if (clientKey != null) 'client_key': clientKey,
           'database_version': databaseVersion,
           if (dumpFilePath != null) 'dump_file_path': dumpFilePath,
           'host': host,
           'name': name,
           if (password != null) 'password': password,
           if (port != null) 'port': port,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (username != null) 'username': username,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSqlSourceRepresentationInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
