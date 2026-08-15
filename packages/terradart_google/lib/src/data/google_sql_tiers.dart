// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_tiers`.
const Set<String> _googleSqlTiersSensitive = <String>{};

/// Factory wrapper for `google_sql_tiers`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlTiers extends Data {
  static const String tfType = 'google_sql_tiers';

  DataGoogleSqlTiers({required super.localName, TfArg<String>? project})
    : super(
        terraformType: tfType,
        argMap: {if (project != null) 'project': project},
      );

  @override
  Set<String> get sensitiveFields => _googleSqlTiersSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `tiers` attribute.
  TfRef<List<Map<String, Object?>>> get tiers =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'tiers');
}
