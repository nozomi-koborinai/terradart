// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_spanner_database`.
const Set<String> _googleSpannerDatabaseSensitive = <String>{};

/// `database_dialect` — GoogleSQL vs PostgreSQL interface.
enum SpannerDatabaseDialect implements TerraformEnum {
  googleStandardSql('GOOGLE_STANDARD_SQL'),
  postgresql('POSTGRESQL');

  const SpannerDatabaseDialect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_spanner_database`.
///
/// A Cloud Spanner Database which is hosted on a Spanner instance.
///
/// Cloud Spanner database inside a [GoogleSpannerInstance].
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [instance]: parent instance — `TfArg.ref(spanner.id)` or name.
/// - [name]: database ID.
///
/// Example:
/// ```dart
/// GoogleSpannerDatabase(
///   localName: 'main',
///   instance: TfArg.ref(spanner.nameRef),
///   name: TfArg.literal('main'),
///   versionRetentionPeriod: TfArg.literal('86400s'),
/// );
/// ```
final class GoogleSpannerDatabase extends Resource {
  static const String tfType = 'google_spanner_database';

  GoogleSpannerDatabase({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> name,
    TfArg<SpannerDatabaseDialect>? databaseDialect,
    TfArg<String>? versionRetentionPeriod,
    TfArg<List<String>>? ddl,
    TfArg<bool>? deletionProtection,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'name': name,
           if (databaseDialect != null) 'database_dialect': databaseDialect,
           if (versionRetentionPeriod != null)
             'version_retention_period': versionRetentionPeriod,
           if (ddl != null) 'ddl': ddl,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerDatabaseSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
