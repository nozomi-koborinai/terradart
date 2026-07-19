// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_public_ca_external_account_key`.
const Set<String> _googlePublicCaExternalAccountKeySensitive = <String>{
  'b64_mac_key',
  'b64url_mac_key',
  'key_id',
  'mac_key',
};

/// Factory wrapper for `google_public_ca_external_account_key`.
///
/// A representation of an ExternalAccountKey used for external account binding
/// within ACME.
///
/// Public CA **external account binding (EAB) key** for ACME clients.
///
/// Creates a key ID + HMAC secret used to register an ACME account with
/// Google Trust Services (Certificate Manager Public CA). The resource is
/// create-only: Terraform cannot read it back from the API, and destroy
/// removes it from state only (the secret is not revoked server-side).
/// Use the secret within 7 days or it is invalidated.
///
/// Creating an EAB key alone does not issue a certificate and does not
/// incur Certificate Manager certificate-usage SKUs.
///
/// Enable `publicca.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GooglePublicCaExternalAccountKey(
///   localName: 'acme_eab',
///   location: TfArg.literal('global'),
/// );
/// ```
final class GooglePublicCaExternalAccountKey extends Resource {
  static const String tfType = 'google_public_ca_external_account_key';

  GooglePublicCaExternalAccountKey({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googlePublicCaExternalAccountKeySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `b64_mac_key` attribute.
  TfRef<String> get b64MacKey => TfRef.attribute<String>(this, 'b64_mac_key');

  /// Reference to `b64url_mac_key` attribute.
  TfRef<String> get b64urlMacKey =>
      TfRef.attribute<String>(this, 'b64url_mac_key');

  /// Reference to `key_id` attribute.
  TfRef<String> get keyId => TfRef.attribute<String>(this, 'key_id');

  /// Reference to `mac_key` attribute.
  TfRef<String> get macKey => TfRef.attribute<String>(this, 'mac_key');
}
