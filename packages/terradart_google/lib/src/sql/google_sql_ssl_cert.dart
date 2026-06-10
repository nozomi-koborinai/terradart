// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_ssl_cert`.
const Set<String> _googleSqlSslCertSensitive = <String>{
  'cert',
  'private_key',
  'server_ca_cert',
};

/// Factory wrapper for `google_sql_ssl_cert`.
final class GoogleSqlSslCert extends Resource {
  static const String tfType = 'google_sql_ssl_cert';

  GoogleSqlSslCert({
    required super.localName,
    required TfArg<String> commonName,
    required TfArg<String> instance,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'common_name': commonName,
           'instance': instance,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlSslCertSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cert` attribute.
  TfRef<String> get cert => TfRef.attribute<String>(this, 'cert');

  /// Reference to `cert_serial_number` attribute.
  TfRef<String> get certSerialNumber =>
      TfRef.attribute<String>(this, 'cert_serial_number');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `expiration_time` attribute.
  TfRef<String> get expirationTime =>
      TfRef.attribute<String>(this, 'expiration_time');

  /// Reference to `private_key` attribute.
  TfRef<String> get privateKey => TfRef.attribute<String>(this, 'private_key');

  /// Reference to `server_ca_cert` attribute.
  TfRef<String> get serverCaCert =>
      TfRef.attribute<String>(this, 'server_ca_cert');

  /// Reference to `sha1_fingerprint` attribute.
  TfRef<String> get sha1Fingerprint =>
      TfRef.attribute<String>(this, 'sha1_fingerprint');
}
