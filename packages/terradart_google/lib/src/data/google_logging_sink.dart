// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_logging_sink`.
const Set<String> _googleLoggingSinkSensitive = <String>{};

/// Factory wrapper for `google_logging_sink`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleLoggingSink extends Data {
  static const String tfType = 'google_logging_sink';

  DataGoogleLoggingSink({required super.localName, required TfArg<String> id})
    : super(terraformType: tfType, argMap: {'id': id});

  @override
  Set<String> get sensitiveFields => _googleLoggingSinkSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bigquery_options` attribute.
  TfRef<List<Map<String, Object?>>> get bigqueryOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bigquery_options');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `destination` attribute.
  TfRef<String> get destination => TfRef.attribute<String>(this, 'destination');

  /// Reference to `disabled` attribute.
  TfRef<bool> get disabled => TfRef.attribute<bool>(this, 'disabled');

  /// Reference to `exclusions` attribute.
  TfRef<List<Map<String, Object?>>> get exclusions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'exclusions');

  /// Reference to `filter` attribute.
  TfRef<String> get filter => TfRef.attribute<String>(this, 'filter');

  /// Reference to `writer_identity` attribute.
  TfRef<String> get writerIdentity =>
      TfRef.attribute<String>(this, 'writer_identity');
}
