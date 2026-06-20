// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_table`.
const Set<String> _googleBiglakeTableSensitive = <String>{};

/// Factory wrapper for `google_biglake_table`.
final class GoogleBiglakeTable extends Resource {
  static const String tfType = 'google_biglake_table';

  GoogleBiglakeTable({
    required super.localName,
    TfArg<String>? database,
    TfArg<String>? deletionPolicy,
    required TfArg<String> name,
    TfArg<String>? type,
    TfArg<Map<String, dynamic>>? hiveOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (database != null) 'database': database,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'name': name,
           if (type != null) 'type': type,
           if (hiveOptions != null) 'hive_options': hiveOptions,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBiglakeTableSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
