// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_approval_folder_service_account`.
const Set<String> _googleAccessApprovalFolderServiceAccountSensitive =
    <String>{};

/// Factory wrapper for `google_access_approval_folder_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAccessApprovalFolderServiceAccount extends Data {
  static const String tfType = 'google_access_approval_folder_service_account';

  DataGoogleAccessApprovalFolderServiceAccount({
    required super.localName,
    required TfArg<String> folderId,
  }) : super(terraformType: tfType, argMap: {'folder_id': folderId});

  @override
  Set<String> get sensitiveFields =>
      _googleAccessApprovalFolderServiceAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_email` attribute.
  TfRef<String> get accountEmail =>
      TfRef.attribute<String>(this, 'account_email');
}
