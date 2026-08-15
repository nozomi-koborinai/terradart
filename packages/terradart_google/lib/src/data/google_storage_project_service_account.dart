// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_project_service_account`.
const Set<String> _googleStorageProjectServiceAccountSensitive = <String>{};

/// Factory wrapper for `google_storage_project_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageProjectServiceAccount extends Data {
  static const String tfType = 'google_storage_project_service_account';

  DataGoogleStorageProjectServiceAccount({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? userProject,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (userProject != null) 'user_project': userProject,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageProjectServiceAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email_address` attribute.
  TfRef<String> get emailAddress =>
      TfRef.attribute<String>(this, 'email_address');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');
}
