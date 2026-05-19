// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_sql_database`.
const Set<String> _googleSqlDatabaseSensitive = <String>{};

/// Factory wrapper for `google_sql_database` (provider
/// `hashicorp/google ~> 7.0`).
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
///   instance: TfArg.ref(primary.nameRef),
///   name: TfArg.literal('orders'),
///   charset: TfArg.literal('UTF8'),
/// );
/// ```
///
/// Composition pattern: extends `Resource<$GoogleSqlDatabase>` for
/// runtime behavior.
final class GoogleSqlDatabase extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_sql_database';

  GoogleSqlDatabase({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> instance,
    TfArg<String>? charset,
    TfArg<String>? collation,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           'instance': instance,
           if (charset != null) 'charset': charset,
           if (collation != null) 'collation': collation,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleSqlDatabaseSensitive;

  /// Reference to `id` attribute (full path
  /// `projects/{project}/instances/{instance}/databases/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute (the bare database name).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute (HTTPS API path).
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
