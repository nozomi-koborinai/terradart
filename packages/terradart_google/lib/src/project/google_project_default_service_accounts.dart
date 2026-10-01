// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_default_service_accounts`.
const Set<String> _googleProjectDefaultServiceAccountsSensitive = <String>{};

/// Factory wrapper for `google_project_default_service_accounts`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleProjectDefaultServiceAccounts extends Resource {
  static const String tfType = 'google_project_default_service_accounts';

  GoogleProjectDefaultServiceAccounts({
    required super.localName,
    required TfArg<String> action,
    required TfArg<String> project,
    TfArg<String>? restorePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'project': project,
           'restore_policy': ?restorePolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleProjectDefaultServiceAccountsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleProjectDefaultServiceAccounts>`.
  RefTo<GoogleProjectDefaultServiceAccounts> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `service_accounts` attribute.
  TfRef<Map<String, String>> get serviceAccounts =>
      TfRef.attribute<Map<String, String>>(this, 'service_accounts');

  /// Reference to `action` attribute.
  TfRef<String> get action => TfRef.attribute<String>(this, 'action');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `restore_policy` attribute.
  TfRef<String> get restorePolicy =>
      TfRef.attribute<String>(this, 'restore_policy');
}
