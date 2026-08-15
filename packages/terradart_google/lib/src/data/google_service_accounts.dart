// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_accounts`.
const Set<String> _googleServiceAccountsSensitive = <String>{};

/// Factory wrapper for `google_service_accounts`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceAccounts extends Data {
  static const String tfType = 'google_service_accounts';

  DataGoogleServiceAccounts({
    required super.localName,
    TfArg<String>? prefix,
    TfArg<String>? project,
    TfArg<String>? regex,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (prefix != null) 'prefix': prefix,
           if (project != null) 'project': project,
           if (regex != null) 'regex': regex,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleServiceAccountsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `accounts` attribute.
  TfRef<List<Map<String, Object?>>> get accounts =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'accounts');
}
