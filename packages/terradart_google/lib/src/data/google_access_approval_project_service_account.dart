// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_approval_project_service_account`.
const Set<String> _googleAccessApprovalProjectServiceAccountSensitive =
    <String>{};

/// Factory wrapper for `google_access_approval_project_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAccessApprovalProjectServiceAccount extends Data {
  static const String tfType = 'google_access_approval_project_service_account';

  DataGoogleAccessApprovalProjectServiceAccount({
    required super.localName,
    required TfArg<String> projectId,
  }) : super(terraformType: tfType, argMap: {'project_id': projectId});

  @override
  Set<String> get sensitiveFields =>
      _googleAccessApprovalProjectServiceAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_email` attribute.
  TfRef<String> get accountEmail =>
      TfRef.attribute<String>(this, 'account_email');
}
