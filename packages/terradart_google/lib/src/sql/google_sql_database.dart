// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sql/google_sql_database_instance.dart'
    show GoogleSqlDatabaseInstance;

/// Sensitive field paths for `google_sql_database`.
const Set<String> _googleSqlDatabaseSensitive = <String>{};

/// Factory wrapper for `google_sql_database`.
///
/// Represents a SQL database inside the Cloud SQL instance, hosted in Google's
/// cloud.
///
/// Represents one logical database living inside a Cloud SQL instance
/// ([GoogleSqlDatabaseInstance]). For MySQL this is a schema; for
/// PostgreSQL a database; for SQL Server a database.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_sql_database.`).
/// - `instance`: parent Cloud SQL instance name (NOT the instance's full
///   `id` / connection string). Typically wired with
///   `TfArg.ref(sqlInstance.nameRef)`. Immutable after creation; changing
///   it forces replacement.
/// - `name`: database name within the instance. Immutable after creation.
///
/// Example:
/// ```dart
/// final orders = GoogleSqlDatabase(
///   localName: 'orders',
///   instance: primary.ref,
///   name: TfArg.literal('orders'),
///   charset: TfArg.literal('UTF8'),
/// );
/// ```
final class GoogleSqlDatabase extends Resource {
  static const String tfType = 'google_sql_database';

  GoogleSqlDatabase({
    required super.localName,
    required TfArg<String> name,
    required RefTo<GoogleSqlDatabaseInstance> instance,
    TfArg<String>? charset,
    TfArg<String>? collation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'instance': instance.encodeAs('name'),
           'charset': ?charset,
           'collation': ?collation,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSqlDatabase>`.
  RefTo<GoogleSqlDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `charset` attribute.
  TfRef<String> get charset => TfRef.attribute<String>(this, 'charset');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
