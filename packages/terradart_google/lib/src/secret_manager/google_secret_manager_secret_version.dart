// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secret_version`.
const Set<String> _googleSecretManagerSecretVersionSensitive = <String>{
  'secret_data',
};

/// Factory wrapper for `google_secret_manager_secret_version`.
///
/// **Per spec §10.4 (write-only API):** prefer `secretDataWo` +
/// `secretDataWoVersion` over `secretData`. The write-only path keeps the
/// plaintext value out of Terraform state. Bump `secretDataWoVersion` to
/// trigger rotation.
///
/// `secret_data` is `@Deprecated`; using it logs an analyzer warning at
/// every call site.
final class GoogleSecretManagerSecretVersion extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_secret_manager_secret_version';

  GoogleSecretManagerSecretVersion({
    required super.localName,
    required TfArg<String> secret,
    TfArg<String>? secretDataWo,
    TfArg<int>? secretDataWoVersion,
    @Deprecated('Use secretDataWo for state safety (§10.4)')
    TfArg<String>? secretData,
    TfArg<bool>? enabled,
    TfArg<bool>? isSecretDataBase64,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'secret': secret,
            if (secretDataWo != null) 'secret_data_wo': secretDataWo,
            if (secretDataWoVersion != null)
              'secret_data_wo_version': secretDataWoVersion,
            if (secretData != null) 'secret_data': secretData,
            if (enabled != null) 'enabled': enabled,
            if (isSecretDataBase64 != null)
              'is_secret_data_base64': isSecretDataBase64,
            if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleSecretManagerSecretVersionSensitive;

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
