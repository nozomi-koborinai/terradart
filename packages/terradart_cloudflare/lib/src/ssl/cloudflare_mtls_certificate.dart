// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_mtls_certificate`.
const Set<String> _cloudflareMtlsCertificateSensitive = <String>{'private_key'};

/// Factory wrapper for `cloudflare_mtls_certificate`.
final class CloudflareMtlsCertificate extends Resource {
  static const String tfType = 'cloudflare_mtls_certificate';

  CloudflareMtlsCertificate({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<bool> ca,
    required TfArg<String> certificates,
    TfArg<String>? name,
    TfArg<String>? privateKey,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'ca': ca,
           'certificates': certificates,
           if (name != null) 'name': name,
           if (privateKey != null) 'private_key': privateKey,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareMtlsCertificateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expires_on` attribute.
  TfRef<String> get expiresOn => TfRef.attribute<String>(this, 'expires_on');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `serial_number` attribute.
  TfRef<String> get serialNumber =>
      TfRef.attribute<String>(this, 'serial_number');

  /// Reference to `signature` attribute.
  TfRef<String> get signature => TfRef.attribute<String>(this, 'signature');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `uploaded_on` attribute.
  TfRef<String> get uploadedOn => TfRef.attribute<String>(this, 'uploaded_on');
}
