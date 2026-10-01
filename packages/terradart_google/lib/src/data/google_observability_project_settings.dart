// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../observability/google_observability_project_settings.dart';

/// Sensitive field paths for `google_observability_project_settings`.
const Set<String> _googleObservabilityProjectSettingsSensitive = <String>{};

/// Factory wrapper for `google_observability_project_settings`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleObservabilityProjectSettings extends Data {
  static const String tfType = 'google_observability_project_settings';

  DataGoogleObservabilityProjectSettings(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleObservabilityProjectSettingsSensitive;

  /// A reference to the `google_observability_project_settings` this data source reads, for
  /// arguments typed `RefTo<GoogleObservabilityProjectSettings>`.
  RefTo<GoogleObservabilityProjectSettings> get ref =>
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

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
