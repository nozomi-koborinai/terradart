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
}
