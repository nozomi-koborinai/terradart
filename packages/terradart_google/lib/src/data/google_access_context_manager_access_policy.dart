// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_access_context_manager_access_policy`.
const Set<String> _googleAccessContextManagerAccessPolicySensitive = <String>{};

/// Factory wrapper for `google_access_context_manager_access_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleAccessContextManagerAccessPolicy extends Data {
  static const String tfType = 'google_access_context_manager_access_policy';

  DataGoogleAccessContextManagerAccessPolicy({
    required super.localName,
    required TfArg<String> parent,
    TfArg<List<String>>? scopes,
  }) : super(
         terraformType: tfType,
         argMap: {'parent': parent, if (scopes != null) 'scopes': scopes},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleAccessContextManagerAccessPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');
}
