// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../observability/google_observability_organization_settings.dart';

/// Sensitive field paths for `google_observability_organization_settings`.
const Set<String> _googleObservabilityOrganizationSettingsSensitive =
    <String>{};

/// Factory wrapper for `google_observability_organization_settings`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleObservabilityOrganizationSettings extends Data {
  static const String tfType = 'google_observability_organization_settings';

  DataGoogleObservabilityOrganizationSettings(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> organization,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'organization': organization},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityOrganizationSettingsSensitive;

  /// A reference to the `google_observability_organization_settings` this data source reads, for
  /// arguments typed `RefTo<GoogleObservabilityOrganizationSettings>`.
  RefTo<GoogleObservabilityOrganizationSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_storage_location` attribute.
  TfRef<String> get defaultStorageLocation =>
      TfRef.attribute<String>(this, 'default_storage_location');

  /// Reference to `kms_key_name` attribute.
  TfRef<String> get kmsKeyName => TfRef.attribute<String>(this, 'kms_key_name');

  /// Reference to `service_account_id` attribute.
  TfRef<String> get serviceAccountId =>
      TfRef.attribute<String>(this, 'service_account_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');
}
