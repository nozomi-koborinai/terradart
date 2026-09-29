// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_observability_organization_settings`.
const Set<String> _googleObservabilityOrganizationSettingsSensitive =
    <String>{};

/// Factory wrapper for `google_observability_organization_settings`.
///
/// Manages Cloud Observability settings for an organization.
final class GoogleObservabilityOrganizationSettings extends Resource {
  static const String tfType = 'google_observability_organization_settings';

  GoogleObservabilityOrganizationSettings({
    required super.localName,
    TfArg<String>? defaultStorageLocation,
    TfArg<String>? kmsKeyName,
    required TfArg<String> location,
    required TfArg<String> organization,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultStorageLocation != null)
             'default_storage_location': defaultStorageLocation,
           if (kmsKeyName != null) 'kms_key_name': kmsKeyName,
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
