// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_database`.
const Set<String> _googleBiglakeDatabaseSensitive = <String>{};

/// Factory wrapper for `google_biglake_database`.
final class GoogleBiglakeDatabase extends Resource {
  static const String tfType = 'google_biglake_database';

  GoogleBiglakeDatabase({
    required super.localName,
    required TfArg<String> catalog,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    required TfArg<String> type,
    required TfArg<Map<String, dynamic>> hiveOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'name': name,
           'type': type,
           'hive_options': hiveOptions,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeDatabaseSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
