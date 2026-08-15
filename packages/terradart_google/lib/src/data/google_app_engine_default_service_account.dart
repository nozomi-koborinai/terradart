// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_app_engine_default_service_account`.
const Set<String> _googleAppEngineDefaultServiceAccountSensitive = <String>{};

/// Factory wrapper for `google_app_engine_default_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAppEngineDefaultServiceAccount extends Data {
  static const String tfType = 'google_app_engine_default_service_account';

  DataGoogleAppEngineDefaultServiceAccount({
    required super.localName,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAppEngineDefaultServiceAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');
}
