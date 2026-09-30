// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iam/google_service_account.dart';

/// Sensitive field paths for `google_service_account`.
const Set<String> _googleServiceAccountSensitive = <String>{};

/// Factory wrapper for `google_service_account`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceAccount extends Data {
  static const String tfType = 'google_service_account';

  DataGoogleServiceAccount({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'account_id': accountId, 'project': ?project},
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountSensitive;

  /// A reference to the `google_service_account` this data source reads, for
  /// arguments typed `RefTo<GoogleServiceAccount>`.
  RefTo<GoogleServiceAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `email` attribute.
  TfRef<String> get email => TfRef.attribute<String>(this, 'email');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `unique_id` attribute.
  TfRef<String> get uniqueId => TfRef.attribute<String>(this, 'unique_id');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
