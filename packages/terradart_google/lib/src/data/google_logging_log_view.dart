// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_log_view`.
const Set<String> _googleLoggingLogViewSensitive = <String>{};

/// Factory wrapper for `google_logging_log_view`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleLoggingLogView extends Data {
  static const String tfType = 'google_logging_log_view';

  DataGoogleLoggingLogView({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> parent,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'location': location,
           'name': name,
           'parent': parent,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleLoggingLogViewSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
