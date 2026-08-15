// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_approval_organization_service_account`.
const Set<String> _googleAccessApprovalOrganizationServiceAccountSensitive =
    <String>{};

/// Factory wrapper for `google_access_approval_organization_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAccessApprovalOrganizationServiceAccount extends Data {
  static const String tfType =
      'google_access_approval_organization_service_account';

  DataGoogleAccessApprovalOrganizationServiceAccount({
    required super.localName,
    required TfArg<String> organizationId,
  }) : super(
         terraformType: tfType,
         argMap: {'organization_id': organizationId},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessApprovalOrganizationServiceAccountSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_email` attribute.
  TfRef<String> get accountEmail =>
      TfRef.attribute<String>(this, 'account_email');
}
