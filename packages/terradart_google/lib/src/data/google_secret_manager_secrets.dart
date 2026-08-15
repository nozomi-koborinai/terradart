// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_secret_manager_secrets`.
const Set<String> _googleSecretManagerSecretsSensitive = <String>{};

/// Factory wrapper for `google_secret_manager_secrets`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSecretManagerSecrets extends Data {
  static const String tfType = 'google_secret_manager_secrets';

  DataGoogleSecretManagerSecrets({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSecretManagerSecretsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `secrets` attribute.
  TfRef<List<Map<String, Object?>>> get secrets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'secrets');
}
