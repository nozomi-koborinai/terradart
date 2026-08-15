// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organizations`.
const Set<String> _googleOrganizationsSensitive = <String>{};

/// Factory wrapper for `google_organizations`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleOrganizations extends Data {
  static const String tfType = 'google_organizations';

  DataGoogleOrganizations({required super.localName, TfArg<String>? filter})
    : super(
        terraformType: tfType,
        argMap: {if (filter != null) 'filter': filter},
      );

  @override
  Set<String> get sensitiveFields => _googleOrganizationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `organizations` attribute.
  TfRef<List<Map<String, Object?>>> get organizations =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'organizations');
}
