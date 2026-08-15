// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_beyondcorp_app_connection`.
const Set<String> _googleBeyondcorpAppConnectionSensitive = <String>{};

/// Factory wrapper for `google_beyondcorp_app_connection`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBeyondcorpAppConnection extends Data {
  static const String tfType = 'google_beyondcorp_app_connection';

  DataGoogleBeyondcorpAppConnection({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBeyondcorpAppConnectionSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_endpoint` attribute.
  TfRef<List<Map<String, Object?>>> get applicationEndpoint =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'application_endpoint');

  /// Reference to `connectors` attribute.
  TfRef<List<String>> get connectors =>
      TfRef.attribute<List<String>>(this, 'connectors');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `gateway` attribute.
  TfRef<List<Map<String, Object?>>> get gateway =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'gateway');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
