// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_default_service_account`.
const Set<String> _googleBigqueryDefaultServiceAccountSensitive = <String>{};

/// Factory wrapper for `google_bigquery_default_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryDefaultServiceAccount extends Data {
  static const String tfType = 'google_bigquery_default_service_account';

  DataGoogleBigqueryDefaultServiceAccount(
    super.localName, {
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'project': ?project});

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryDefaultServiceAccountSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// This identity as an IAM principal, for `member` / `members`.
  IamPrincipal get principal =>
      IamPrincipal.arg(TfRef.data<String>(this, 'member'));
}
