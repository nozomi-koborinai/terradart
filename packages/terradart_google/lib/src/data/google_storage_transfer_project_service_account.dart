// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_transfer_project_service_account`.
const Set<String> _googleStorageTransferProjectServiceAccountSensitive =
    <String>{};

/// Factory wrapper for `google_storage_transfer_project_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageTransferProjectServiceAccount extends Data {
  static const String tfType =
      'google_storage_transfer_project_service_account';

  DataGoogleStorageTransferProjectServiceAccount({
    required super.localName,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageTransferProjectServiceAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `subject_id` attribute.
  TfRef<String> get subjectId => TfRef.attribute<String>(this, 'subject_id');
}
