// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate_authority`.
const Set<String> _googlePrivatecaCertificateAuthoritySensitive = <String>{};

/// Factory wrapper for `google_privateca_certificate_authority`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGooglePrivatecaCertificateAuthority extends Data {
  static const String tfType = 'google_privateca_certificate_authority';

  DataGooglePrivatecaCertificateAuthority({
    required super.localName,
    TfArg<String>? certificateAuthorityId,
    TfArg<String>? location,
    TfArg<String>? pool,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (certificateAuthorityId != null)
             'certificate_authority_id': certificateAuthorityId,
           if (location != null) 'location': location,
           if (pool != null) 'pool': pool,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateAuthoritySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_urls` attribute.
  TfRef<List<Map<String, Object?>>> get accessUrls =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access_urls');

  /// Reference to `config` attribute.
  TfRef<List<Map<String, Object?>>> get config =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'config');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `desired_state` attribute.
  TfRef<String> get desiredState =>
      TfRef.attribute<String>(this, 'desired_state');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gcs_bucket` attribute.
  TfRef<String> get gcsBucket => TfRef.attribute<String>(this, 'gcs_bucket');

  /// Reference to `ignore_active_certificates_on_deletion` attribute.
  TfRef<bool> get ignoreActiveCertificatesOnDeletion =>
      TfRef.attribute<bool>(this, 'ignore_active_certificates_on_deletion');

  /// Reference to `key_spec` attribute.
  TfRef<List<Map<String, Object?>>> get keySpec =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'key_spec');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `lifetime` attribute.
  TfRef<String> get lifetime => TfRef.attribute<String>(this, 'lifetime');

  /// Reference to `pem_ca_certificate` attribute.
  TfRef<String> get pemCaCertificate =>
      TfRef.attribute<String>(this, 'pem_ca_certificate');

  /// Reference to `pem_ca_certificates` attribute.
  TfRef<List<String>> get pemCaCertificates =>
      TfRef.attribute<List<String>>(this, 'pem_ca_certificates');

  /// Reference to `pem_csr` attribute.
  TfRef<String> get pemCsr => TfRef.attribute<String>(this, 'pem_csr');

  /// Reference to `skip_grace_period` attribute.
  TfRef<bool> get skipGracePeriod =>
      TfRef.attribute<bool>(this, 'skip_grace_period');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `subordinate_config` attribute.
  TfRef<List<Map<String, Object?>>> get subordinateConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subordinate_config');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `user_defined_access_urls` attribute.
  TfRef<List<Map<String, Object?>>> get userDefinedAccessUrls =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'user_defined_access_urls',
      );
}
