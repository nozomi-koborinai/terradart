// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/google_kms_crypto_key.dart' show GoogleKmsCryptoKey;

/// Sensitive field paths for `google_observability_organization_settings`.
const Set<String> _googleObservabilityOrganizationSettingsSensitive =
    <String>{};

/// Factory wrapper for `google_observability_organization_settings`.
///
/// Manages Cloud Observability settings for an organization.
final class GoogleObservabilityOrganizationSettings extends Resource {
  static const String tfType = 'google_observability_organization_settings';

  GoogleObservabilityOrganizationSettings(
    super.localName, {
    TfArg<String>? defaultStorageLocation,
    RefTo<GoogleKmsCryptoKey>? kmsKeyName,
    required TfArg<String> location,
    required TfArg<String> organization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_storage_location': ?defaultStorageLocation,
           'kms_key_name': ?kmsKeyName?.encodeAs('id'),
           'location': location,
           'organization': organization,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityOrganizationSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityOrganizationSettings>`.
  RefTo<GoogleObservabilityOrganizationSettings> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');

  /// Reference to `default_storage_location` attribute.
  TfRef<String> get defaultStorageLocation =>
      TfRef.attribute<String>(this, 'default_storage_location');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');
}
