// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../sql/google_sql_database.dart';
import '../sql/google_sql_database_instance.dart'
    show GoogleSqlDatabaseInstance;

/// Sensitive field paths for `google_sql_database`.
const Set<String> _googleSqlDatabaseSensitive = <String>{};

/// Factory wrapper for `google_sql_database`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleSqlDatabase extends Data {
  static const String tfType = 'google_sql_database';

  DataGoogleSqlDatabase({
    required super.localName,
    required RefTo<GoogleSqlDatabaseInstance> instance,
    required TfArg<String> name,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('name'),
           'name': name,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlDatabaseSensitive;

  /// A reference to the `google_sql_database` this data source reads, for
  /// arguments typed `RefTo<GoogleSqlDatabase>`.
  RefTo<GoogleSqlDatabase> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `charset` attribute.
  TfRef<String> get charset => TfRef.attribute<String>(this, 'charset');

  /// Reference to `collation` attribute.
  TfRef<String> get collation => TfRef.attribute<String>(this, 'collation');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `instance` attribute.
  TfRef<String> get instanceRef => TfRef.attribute<String>(this, 'instance');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
