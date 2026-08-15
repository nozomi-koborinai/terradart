// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_database`.
const Set<String> _googleSpannerDatabaseSensitive = <String>{};

/// Factory wrapper for `google_spanner_database`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSpannerDatabase extends Data {
  static const String tfType = 'google_spanner_database';

  DataGoogleSpannerDatabase({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database_dialect` attribute.
  TfRef<String> get databaseDialect =>
      TfRef.attribute<String>(this, 'database_dialect');

  /// Reference to `ddl` attribute.
  TfRef<List<String>> get ddl => TfRef.attribute<List<String>>(this, 'ddl');

  /// Reference to `default_time_zone` attribute.
  TfRef<String> get defaultTimeZone =>
      TfRef.attribute<String>(this, 'default_time_zone');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `enable_drop_protection` attribute.
  TfRef<bool> get enableDropProtection =>
      TfRef.attribute<bool>(this, 'enable_drop_protection');

  /// Reference to `encryption_config` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption_config');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `version_retention_period` attribute.
  TfRef<String> get versionRetentionPeriod =>
      TfRef.attribute<String>(this, 'version_retention_period');
}
